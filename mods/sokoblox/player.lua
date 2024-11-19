local MOVE_DELAY = 0.3        -- debounce move delay (sec)
local INTERPOLATION_SPEED = 2 -- speed of the smooth camera transition
local CAMERA_OFFSET = { x = 3, y = 4, z = -5 }
local TALL_CAMERA_OFFSET = { x = 0, y = 10, z = -5 }
local plr_move = Sokoblox.movement.plr_move
local map = Sokoblox.map

-- helper function for linear interpolation
local function lerp(a, b, t)
    return a + (b - a) * t
end

-- lerp player's camera toward the target position and fix the angle
local function move_camera(player, target_pos, dtime)
    local current_pos = Sokoblox.movers[1].camera_pos or player:get_pos()
    -- calculate the interpolated position
    local new_pos = {
        x = lerp(current_pos.x, target_pos.x, dtime * INTERPOLATION_SPEED),
        y = lerp(current_pos.y, target_pos.y, dtime * INTERPOLATION_SPEED),
        z = lerp(current_pos.z, target_pos.z, dtime * INTERPOLATION_SPEED),
    }

    -- update the player's position smoothly
    player:set_pos(new_pos)

    -- fix the camera to always look isometrically at the player mover
    local target_v = math.rad(45)
    local target_h = math.rad(30)
    if player:get_player_control().zoom then --the zoomed out perspective
        target_v = math.rad(75)
        target_h = math.rad(0)
    end
    local current_v= player:get_look_vertical()
    local current_h= player:get_look_horizontal()
    local h  = lerp(current_h, target_h, dtime * INTERPOLATION_SPEED)
    local v  = lerp(current_v, target_v, dtime * INTERPOLATION_SPEED)
    v = math.round(v*100)/100
    player:set_look_vertical(v)
    player:set_look_horizontal(h)
    Sokoblox.movers[1].camera_pos = new_pos
end


local function update_camera(player, dtime)
    if not Sokoblox.movers[1].pos then return end
    --target position for the camera
    local offset = CAMERA_OFFSET
    if player:get_player_control().zoom then
        offset = TALL_CAMERA_OFFSET
    end
    local target_pos = vector.add(Sokoblox.movers[1].pos, offset)    
    move_camera(player, target_pos, dtime)
end

-- keycheck with debounce
local debounce = false
local function handle_movement(controls)
    if debounce then return end
    --plr_move is in map
    if controls.up then
        plr_move(1, 1, 'z')
    elseif controls.down then
        plr_move(1, -1, 'z')
    elseif controls.left then
        plr_move(1, -1, 'x')
    elseif controls.right then
        plr_move(1, 1, 'x')
    elseif true then
        return
    end
    debounce = true
    minetest.after(MOVE_DELAY, function()
        debounce = false
    end)
    
end


local function enable_flight_and_hide_hud(player)
    -- disable gravity and movement jitter
    player:set_physics_override({
        gravity = 0,
        speed = 0,
        jump = 0,
    })
    player:set_attribute("can_fly", "true") --this way we float in the air

    -- hide the hotbar and other HUD elements
    player:hud_set_flags({
        hotbar = false,
        healthbar = false,
        crosshair = false,
        wielditem = false,
    })

    -- hide the hand model
    player:set_properties({
        textures = { "blank.png" }, -- invisible texture for the hand
    })
    
end

local function welcome(name)
    -- Define your styled text
    local text1 ="<style size=25><i>Sokoblox Luanti</i></style>"
    local text2 ="<style size=20>This is a rolling block puzzle game, similar to Bloxorz.  It is also a push block puzzle game similar to Sokoban.  The object of the game is to push the blocks onto the colored targets with the block showing the target's color on top.  When all the targets are covered, a bridge will open, allowing you to access the next level.</style>"
    local text3 ="<style size=20>In order to progress, you must finish on the checkpoint with the correct side up.</style>"
    local text4 ="<style size=20>THIS GAME DOES NOT USE THE MOUSE.  Use WASD keys to move the player block. Moving the mouse will result in momentary jitter of the camera. This cannot be prevented.</style>"
    local text5 ="<style size=20>I really enjoyed making this game.  I hope you enjoy playing it. Remember to take a break if you get frustrated.  I promise every puzzle is solvable.</style>"
    local text6 ="<style size=20>-codeAtorium</style>"

    -- Combine the text using the hypertext element
    local hypertext = "hypertext[0.5,0.5;11.5,7;;" .. text1 .. "\n\n" .. text2 .. "\n\n" .. text3 .."\n\n" .. text4 .."\n\n" .. text5 .."\n\n" .. text6 .."\n\n" .. "]"
    minetest.show_formspec(name, "sokoblox:welcome",
        "size[12,8]" ..
        hypertext ..
        "button_exit[4.5,7;2,1;exit;Begin]")
end

-- start the game when a player joins
minetest.register_on_joinplayer(function(player)
    -- setup the map area (e.g., a 100x100 area centered around y = 8)
    map.setup_map({ x = 0, y = 9, z = 0 }, 100)
    -- setup player for the game
    map.setup_movers()
    local meta = player:get_meta()
    local level = meta:get_int("level")
    if level == 0 then
        level = 1
        Sokoblox.start_pos = Sokoblox.movers[1].pos
        Sokoblox.start_rot = Sokoblox.movers[1].rot
        Sokoblox.start_stance = Sokoblox.movers[1].stance
        Sokoblox.level = 1
    else
        Sokoblox.start_rot = meta:get_int("rot")
        Sokoblox.start_stance = meta:get_int("stance")
        Sokoblox.movers[1].rot = Sokoblox.start_rot
        Sokoblox.movers[1].stance = Sokoblox.start_stance
    end
    
    if meta:get_int("welcomed") == 0 then
        meta:set_int("welcomed", 1)
        welcome("singleplayer")
    end
    Sokoblox.level = level
    Sokoblox.movers[1].level = level
    map.setup_targets()
    map.setup_checkpoints()
    Sokoblox.movers[1].camera_pos = vector.add(Sokoblox.start_pos, CAMERA_OFFSET)
    enable_flight_and_hide_hud(player)
    -- place the block and update the camera
    map.move_blocks()
    minetest.set_timeofday(800/2400)
    minetest.settings:set("time_speed", "0") 
    player:set_look_vertical(math.rad(45))
    player:set_look_horizontal(math.rad(30))
    player:set_inventory_formspec("")
end)


-- continuously check for input and update the camera
minetest.register_globalstep(function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
       handle_movement(player:get_player_control())
       update_camera(player, dtime)
    end
end)

