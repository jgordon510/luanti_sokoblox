Sokoblox.STANCES = {         -- u, d, l, r, param2 quotient
    [0] = { 4, 5, 3, 2, 0 }, -- standing (top)
    [1] = { 5, 4, 2, 3, 5 }, -- standing (bottom)
    [2] = { 2, 2, 0, 1, 4 }, -- across (left)
    [3] = { 3, 3, 1, 0, 3 }, -- across (right)
    [4] = { 1, 0, 4, 4, 1 }, -- with (back)
    [5] = { 0, 1, 5, 5, 2 }, -- with (front)
}

-- rolling logic
local status = {}
local movement = {}
local map = Sokoblox.map
local function get_coords(mover)
    local x1, z1, x2, z2
    x1 = mover.pos.x
    z1 = mover.pos.z
    if mover.pos2 then
        x2 = mover.pos2.x
        z2 = mover.pos2.z
    end
    return x1, z1, x2, z2
end

--helper func to keep the rot between 0 and 3
local function constrain_rot(id)
    Sokoblox.movers[id].rot = Sokoblox.movers[id].rot % 4
end

local function set_stance(id, dim, dir)
    local stances = {
        ["z:1"] = 1,
        ["z:-1"] = 2,
        ["x:1"] = 3,
        ["x:-1"] = 4,
    }
    local stance = stances[dim .. ":" .. dir]
    Sokoblox.movers[id].stance = Sokoblox.STANCES[Sokoblox.movers[id].stance][stance]
end

local function roll_rotate(id, dim, dir)
    local turns = {
        ["x:1:4"] = -1,
        ["x:1:5"] = 1,
        ["z:1:2"] = -1,
        ["z:1:3"] = 1,
        ["x:-1:4"] = 1,
        ["x:-1:5"] = -1,
        ["z:-1:2"] = 1,
        ["z:-1:3"] = -1,
    }
    local stance = Sokoblox.movers[id].stance
    local turn_key = dim .. ":" .. dir .. ":" .. stance
    local turn = turns[turn_key]
    Sokoblox.movers[id].rot = Sokoblox.movers[id].rot + turn
    constrain_rot(id)
end

local function fall(dim, dir, x1, x2, z1, z2, id, push)
    if Sokoblox.movers[id].stance == 1 then
        if dir == 1 then
            if dim == "z" then
                Sokoblox.movers[id].rot = Sokoblox.movers[id].rot + 2
            end
        else
            if dim == "z" then
                Sokoblox.movers[id].rot = Sokoblox.movers[id].rot - 2
            end
        end
    end
    constrain_rot(id)
    local piece = Sokoblox.movers[id]
    status[id] = "falling"
    if dim == "x" then
        x2 = x1 - dir
        z2 = z1
    else
        x2 = x1
        z2 = z1 - dir
    end
    piece.pos = { x = x1, y = 9, z = z1 }
    piece.pos2 = { x = x2, y = 9, z = z2 }
    piece.orientation = "horizontal_" .. dim
    if push then
        dir = dir * -1
    end
    set_stance(id, dim, dir)
end

local function stand_up(dim, dir, x1, x2, z1, z2, id)
    if dir == 1 then
        if dim == "z" then
            if Sokoblox.movers[id].stance == 4 then
                Sokoblox.movers[id].rot = Sokoblox.movers[id].rot + 2
            end
        end
    else
        if dim == "z" then
            if Sokoblox.movers[id].stance == 5 then
                Sokoblox.movers[id].rot = Sokoblox.movers[id].rot - 2
            end
        end
    end
    constrain_rot(id)
    status[id] = "standing"
    local flipped = x1 > x2
    if dim == "z" then
        flipped = z1 > z2
    end
    local side = "b"
    if flipped then
        side = "a"
    end
    local cuts = {
        ["x:-1:a"] = 1,
        ["x:-1:b"] = 2,
        ["z:-1:a"] = 1,
        ["z:-1:b"] = 2,
        ["x:1:a"] = 2,
        ["x:1:b"] = 1,
        ["z:1:a"] = 2,
        ["z:1:b"] = 1,
    }
    local cut_side = cuts[dim .. ":" .. dir .. ":" .. side]
    if cut_side == 1 then
        Sokoblox.movers[id].pos = Sokoblox.movers[id].pos2
        Sokoblox.movers[id].pos2 = nil
    else
        Sokoblox.movers[id].pos2 = nil
    end
    Sokoblox.movers[id].orientation = "standing"
    set_stance(id, dim, dir)
end

local function shift_part(id, key, new_mover, dim, dir, dist)
    local pos = new_mover[key]
    if dim == "x" then
        pos.x = pos.x + dir
    else
        pos.z = pos.z + dir
    end
    movement.check_collision(id, dir, dim, pos, dist)
    map.clear_blocks()
end

local function move_block(id, dir, dim, dist)
    local mover = Sokoblox.movers[id]
    local new_mover = table.copy(mover)
    shift_part(id, "pos", new_mover, dim, dir, dist)
    if mover.pos2 then
        shift_part(id, "pos2", new_mover, dim, dir, dist)
    end
    Sokoblox.movers[id] = new_mover
end

local function collide(a_id, dist, box, pos, dim, dir, b_id)
    if box.x == pos.x and box.z == pos.z then
        local ax1, az1, ax2, az2 = get_coords(Sokoblox.movers[a_id])
        local a_tall = true
        if (ax2) then a_tall = false end
        local bx1, bz1, bx2, bz2 = get_coords(Sokoblox.movers[b_id])
        local b_tall = true
        if (bx2) then b_tall = false end
        local a_falling = status[a_id] == 'falling'
        if b_tall and a_falling and status[b_id] ~= 'standing' then
            fall(dim, -dir, bx1, bx2, bz1, bz2, b_id, true)
        end
        local is_crossed = false
        local b_fell_upon = not b_tall and a_falling
        if b_fell_upon then
            if dim == 'x' then
                if (bx1 == bx2) then is_crossed = true end
            else
                if (bz1 == bz2) then is_crossed = true end
            end
        end
        local b_stand_status = status[b_id] ~= 'falling'
        local b_is_standing  = not is_crossed and b_stand_status
        local b_is_rolled    = status[a_id] == 'rolling'
        local b_standing_up  = not b_is_rolled and b_is_standing and not b_tall and not a_tall
        local b_is_rolling   = not b_tall and b_stand_status
        if b_standing_up then
            stand_up(dim, -dir, bx1, bx2, bz1, bz2, b_id)
        elseif b_is_rolling then
            status[b_id] = 'rolling'
        end
        local b_mover = Sokoblox.movers[b_id]
        local a_mover = Sokoblox.movers[a_id]
        if status[b_id] == 'rolling' then
            local b_roll_dir = -dir
            if a_mover.roll_flipped then
                b_roll_dir = dir -- Reverse the rolling direction for alternating effect
            else
                b_mover.roll_flipped = true
            end

            if dim == 'z' then
                if (bz1 == bz2 and az1 == az2) then
                    roll_rotate(b_id, dim, b_roll_dir)
                end
            else
                if (bx1 == bx2 and ax1 == ax2) then
                    roll_rotate(b_id, dim, b_roll_dir)
                end
            end
        end
        move_block(b_id, dir, dim, dist)
    end
end

movement.check_collision = function(id, dir, dim, box, dist)
    for other_id, other in pairs(Sokoblox.movers) do
        local level = Sokoblox.movers[id].level
        local other_level = other.level
        if other_id ~= id and level == other_level then
            if other.pos then
                collide(id, dist, box, other.pos, dim, dir, other_id)
            end
            if other.pos2 then
                collide(id, dist, box, other.pos2, dim, dir, other_id)
            end
        end
    end
end

movement.plr_move = function(id, dir, dim)
    map.clear_blocks()
    status[id] = nil
    local plr = Sokoblox.movers[id]
    local x1, z1, x2, z2 = get_coords(plr)
    local tall = true
    if (x2) then
        tall = false
    end
    local dist = 1

    if tall then
        minetest.sound_play("sokoblox_thud1", {
            gain = 0.15,                          
            pos = Sokoblox.movers[1].pos, 
        })
        fall(dim, dir, x1, x2, z1, z2, id, false)
        dist = 2
    else
        local roll = false
        if dim == "x" then
            if (x1 == x2) then roll = true end
        else
            if (z1 == z2) then roll = true end
        end
        if (not roll) then
            stand_up(dim, dir, x1, x2, z1, z2, id)
            minetest.sound_play("sokoblox_thud2", {
                gain = 0.1,                          
                pos = Sokoblox.movers[1].pos, 
            })
        else
            status[id] = 'rolling'
            roll_rotate(id, dim, dir)
            minetest.sound_play("sokoblox_thud3", {
                gain = 0.15,                          
                pos = Sokoblox.movers[1].pos, 
            })
        end
    end
    for _, mover in pairs(Sokoblox.movers) do
        mover.roll_flipped = false
    end
    for i = 1, dist do
        move_block(id, dir, dim, dist)
    end
    status = {}
    map.move_blocks()
    Sokoblox.win_check.check()
    Sokoblox.win_check.checkpoints()
    Sokoblox.win_check.fall_detection()

end

return movement
