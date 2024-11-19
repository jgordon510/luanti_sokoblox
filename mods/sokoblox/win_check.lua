local win_check = {}
local LAST_LEVEL = 16
local function compare(pos1, pos2)
    local x1 = pos1.x
    local x2 = pos2.x
    local z1 = pos1.z
    local z2 = pos2.z
    if x1 == x2 and z1 == z2 then
        return true
    end
    return false
end

local function endGame(name)
    -- Define your styled text
    local text1 = "<style size=30><b>Congratulations!</b></style>"
    local text2 =
    "<style size=20>You've completed all of the puzzles in the game! Thank you for playing, and please leave a review on the content database if you enjoyed playing the game!</style>"
    local text3 = "<style size=20>Press the button below to restart the game from the beginning!</style>"
    -- Combine the text using the hypertext element
    local hypertext = "hypertext[0.5,0.5;7,6;;" .. text1 .. "\n\n" .. text2 .. "\n\n" .. text3 .. "]"
    minetest.show_formspec(name, "sokoblox:congrats",
        "size[8,8]" ..
        hypertext ..
        "button_exit[3,7;2,1;exit;Restart]")
end

-- Register callback for endGame formspec
minetest.register_on_player_receive_fields(function(player, formname, fields)
    if formname ~= "sokoblox:congrats" then
        return false
    end
    --todo reset all flags
    local level = 1
    local stance = 0
    local rot = 0
    Sokoblox.level = LAST_LEVEL - 1
    Sokoblox.map.clear_blocks()
    Sokoblox.level = LAST_LEVEL
    for _, cp in pairs(Sokoblox.checkpoints) do
        cp.complete = false
        if cp.level == level then
            Sokoblox.map.clear_blocks()
            Sokoblox.level = level
            Sokoblox.movers[1].level = level
            Sokoblox.start_pos = cp.pos
            Sokoblox.start_rot = rot
            Sokoblox.start_stance = stance
            Sokoblox.movers[1].pos = Sokoblox.start_pos
            Sokoblox.movers[1].stance = stance
            Sokoblox.movers[1].rot = rot
            Sokoblox.movers[1].orientation = "standing"
            Sokoblox.map.move_blocks()
            local plr = minetest.get_player_by_name("singleplayer")
            local meta = plr:get_meta()
            meta:set_int("level", Sokoblox.level)
            Sokoblox.movers[1].level = Sokoblox.level
            meta:set_int("rot", rot)
            meta:set_int("stance", stance)
        end
    end
    
    Sokoblox.map.setup_map({ x = 0, y = 9, z = 0 }, 100)
    -- setup player for the game
    Sokoblox.map.setup_movers()
    Sokoblox.map.setup_targets()
    Sokoblox.map.setup_checkpoints()
    win_check.checkpoints()
    return true
end)

local function highlight_particle_effect(pos, color_n)
    minetest.add_particlespawner({
        amount = 70,
        time = 0.2,
        minpos = vector.subtract(pos, 0.2),
        maxpos = vector.add(pos, 0.2),
        minvel = { x = -6, y = 13, z = -3 },
        maxvel = { x = 6, y = 17, z = 3 },
        minacc = { x = 0, y = -25, z = 0 },
        maxacc = { x = 0, y = -25, z = 0 },
        minexptime = 2,
        maxexptime = 3,
        minsize = 1,
        maxsize = 2,
        collisiondetection = true,
        texture = "sokoblox_particle_" .. color_n .. ".png",
        glow = 10,
    })
    minetest.after(1, function()
        minetest.sound_play("sokoblox_twinkle", {
            gain = 0.05,
            pos = Sokoblox.movers[1].pos,
        })
    end)
end

local function show_activation(target, color_n, new)
    local node = { name = "sokoblox:target_" .. color_n }
    node = { name = "sokoblox:activated_" .. color_n }

    if new then
        minetest.sound_play("sokoblox_activate", {
            gain = 0.5,
            pos = Sokoblox.movers[1].pos,
        })
    end
    if target.pos.b then
        minetest.swap_node(target.pos.a, node)
        minetest.swap_node(target.pos.b, node)
        if new then
            highlight_particle_effect(target.pos.a, color_n)
            highlight_particle_effect(target.pos.b, color_n)
        end
    else
        minetest.swap_node(target.pos, node)
        local up_pos = vector.add(target.pos, { x = 0, y = 1, z = 0 })
        minetest.swap_node(up_pos, node)
        if new then
            highlight_particle_effect(up_pos, color_n)
            highlight_particle_effect(up_pos, color_n)
        end
    end
end
win_check.check = function()
    for _, target in pairs(Sokoblox.targets) do
        local activated = false
        local target_color_n
        for _, mover in pairs(Sokoblox.movers) do
            local double_mover = mover.pos2 ~= nil
            local double_target = target.pos.a ~= nil

            if double_mover and double_target then
                local matches = 0
                if compare(mover.pos, target.pos.a) or compare(mover.pos2, target.pos.a) then
                    matches = matches + 1
                end
                if compare(mover.pos, target.pos.b) or compare(mover.pos2, target.pos.b) then
                    matches = matches + 1
                end
                if matches == 2 then
                    local node = minetest.get_node(vector.add(target.pos.a, { x = 0, y = -1, z = 0 }))
                    target_color_n = tonumber(string.sub(node.name, -1))
                    if target_color_n == mover.top_color then
                        activated = true
                    end
                end
            elseif not double_mover and not double_target then
                if compare(mover.pos, target.pos) then
                    local node = minetest.get_node(vector.add(target.pos, { x = 0, y = -1, z = 0 }))
                    target_color_n = tonumber(string.sub(node.name, -1))
                    if target_color_n == mover.top_color then
                        activated = true
                    end
                end
            end
        end
        if activated then
            local new = activated ~= target.activated
            show_activation(target, target_color_n, new)
        end
        target.activated = activated
    end
    for _, bridge in pairs(Sokoblox.bridges) do
        local activated = true

        for _, target in pairs(bridge.targets) do
            if not target.activated then
                activated = false
            end
        end
        if bridge.complete then
            activated = false
        end
        for _, pos in pairs(bridge.pos) do
            local node = { name = "air" }
            if activated then
                node = { name = "sokoblox:stone" }
            end
            minetest.set_node(pos, node)
        end
    end
end

local function fault()
    Sokoblox.map.clear_blocks()
    Sokoblox.map.setup_movers()
    Sokoblox.movers[1].pos = Sokoblox.start_pos
    Sokoblox.movers[1].pos2 = nil
    Sokoblox.movers[1].stance = Sokoblox.start_stance
    Sokoblox.movers[1].rot = Sokoblox.start_rot
    Sokoblox.movers[1].orientation = "standing"
    Sokoblox.movers[1].level = Sokoblox.level
    Sokoblox.map.move_blocks()
    for _, target in pairs(Sokoblox.targets) do
        if target.level == Sokoblox.level then
            target.activated = false
        end
    end
    minetest.sound_play("sokoblox_loss", {
        gain = 0.3,
        pos = Sokoblox.movers[1].pos,
    })
end


win_check.fall_detection = function()
    local below = { x = 0, y = -1, z = 0 }
    local above = { x = 0, y = 1, z = 0 }
    for _, mover in pairs(Sokoblox.movers) do
        local underNode = minetest.get_node(vector.add(mover.pos, below))
        if underNode.name == "air" then
            minetest.after(0.25, fault)
            minetest.spawn_falling_node(mover.pos)
            if mover.pos2 then
                underNode = minetest.get_node(vector.add(mover.pos2, below))
                if underNode.name == "air" then
                    minetest.spawn_falling_node(mover.pos2)
                end
            else
                minetest.spawn_falling_node(vector.add(mover.pos, above))
            end
        elseif mover.pos2 then
            local underNode1 = minetest.get_node(vector.add(mover.pos, below))
            if underNode1.name == "air" then
                minetest.after(0.25, fault)
                minetest.spawn_falling_node(mover.pos)
            end
            local underNode2 = minetest.get_node(vector.add(mover.pos2, below))
            if underNode2.name == "air" then
                minetest.after(0.25, fault)
                minetest.spawn_falling_node(mover.pos2)
            end
        end
    end
end

win_check.checkpoints = function()
    local dirty = false
    for _, cp in pairs(Sokoblox.checkpoints) do
        for _, mover in pairs(Sokoblox.movers) do
            if not mover.pos2 then
                if compare(cp.pos, mover.pos) and not cp.complete then
                    local node = minetest.get_node(vector.add(cp.pos, { x = 0, y = -1, z = 0 }))
                    local target_color_n = tonumber(string.sub(node.name, -1))
                    if target_color_n == mover.top_color then
                        cp.complete = true
                        local plr = minetest.get_player_by_name("singleplayer")
                        local meta = plr:get_meta()
                        Sokoblox.level = cp.level
                        meta:set_int("level", Sokoblox.level)

                        Sokoblox.movers[1].level = Sokoblox.level
                        Sokoblox.start_pos = mover.pos
                        Sokoblox.start_rot = mover.rot
                        Sokoblox.start_stance = mover.stance
                        meta:set_int("rot", Sokoblox.start_rot)
                        meta:set_int("stance", Sokoblox.start_stance)
                        dirty = true
                        for _, bridge in pairs(cp.bridges) do
                            bridge.complete = true
                        end
                        highlight_particle_effect(vector.add(Sokoblox.movers[1].pos, { x = 0, y = 1, z = 0 }), 0)
                        highlight_particle_effect(vector.add(Sokoblox.movers[1].pos, { x = 0, y = 1, z = 0 }), 0)
                        Sokoblox.map.move_blocks()
                        minetest.sound_play("sokoblox_win", {
                            gain = 0.5,
                            pos = Sokoblox.movers[1].pos,
                        })
                        if Sokoblox.level == LAST_LEVEL then
                            endGame("singleplayer")
                        end
                    end
                end
            end
        end
    end
    if dirty then
        win_check.check()
    end
end
return win_check
