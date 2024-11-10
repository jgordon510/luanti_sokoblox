local map = {}
local path = minetest.get_modpath("sokoblox")
local level = dofile(path .. "/level.lua")
local param2_to_top_color = {
    [0] = 1,
    [1] = 1,
    [2] = 1,
    [3] = 1,
    [4] = 6,
    [5] = 2,
    [6] = 3,
    [7] = 5,
    [8] = 3,
    [9] = 5,
    [10] = 6,
    [11] = 2,
    [12] = 5,
    [13] = 6,
    [14] = 2,
    [15] = 3,
    [16] = 2,
    [17] = 3,
    [18] = 5,
    [19] = 6,
    [20] = 4,
    [21] = 4,
    [22] = 4,
    [23] = 4,
}
-- clear the previous block from the world
local function clear_block(block_n)
    local mover = Sokoblox.movers[block_n]
    if not mover.pos then return end
    minetest.set_node(mover.pos, { name = "air" })
    local other_pos
    if mover.orientation == "standing" then
        other_pos = vector.add(mover.pos, { x = 0, y = 1, z = 0 })
    elseif mover.orientation == "horizontal_x" then
        other_pos = mover.pos2
    elseif mover.orientation == "horizontal_z" then
        other_pos = mover.pos2
    end
    minetest.set_node(other_pos, { name = "air" })
end

map.clear_blocks = function()
    for id, block in pairs(Sokoblox.movers) do
        if block.level == Sokoblox.level then
            clear_block(id)
        end
    end
end

-- place the block at its new position and orientation
local function place_block(new_pos, orientation, block_n)
    -- determine the correct facedir based on the movement
    -- stance[5] is the proper param2 quotient (*4) corresponding to the current stance
    -- the rotation acts as a remainder and is added to get the final param2
    -- it might be better to reorder the Sokoblox.STANCES tabel to match the param2 quotient order
    -- but that would require refiguring the whole table
    local mover = Sokoblox.movers[block_n]
    local param2 = Sokoblox.STANCES[mover.stance][5] * 4 + mover.rot
    mover.top_color = param2_to_top_color[param2]
    -- place the main block at new_pos with the correct orientation

    minetest.set_node(new_pos, { name = "sokoblox:rolling_block", param2 = param2 })
    local meta = minetest.get_meta(new_pos)
    meta:set_int("block", block_n)
    local other_pos = nil
    if orientation == "standing" then --place an additional block on top
        other_pos = vector.add(new_pos, { x = 0, y = 1, z = 0 })
    elseif orientation == "horizontal_x" then
        other_pos = mover.pos2
    elseif orientation == "horizontal_z" then
        other_pos = mover.pos2
    end
    minetest.set_node(other_pos, { name = "sokoblox:rolling_block", param2 = param2 })

    meta = minetest.get_meta(other_pos)
    meta:set_int("block", block_n)
end

-- move the block and update its state
local function move_block(new_pos, new_orientation, block_n)
    clear_block(block_n)
    Sokoblox.movers[block_n].pos = new_pos
    Sokoblox.movers[block_n].orientation = new_orientation
    place_block(new_pos, new_orientation, block_n)
end

map.move_blocks = function()
    for id, block in pairs(Sokoblox.movers) do
        if block.level == Sokoblox.level then
            move_block(block.pos, block.orientation, id)
        end
    end
end

-- remove old nodes and set up the checkerboard map
map.setup_map = function(pos, size)
    -- set bounds of map
    local half_size = math.floor(size / 2)
    local minp = { x = pos.x - half_size, y = pos.y - 1, z = pos.z - half_size }
    local maxp = { x = pos.x + half_size, y = pos.y + 2, z = pos.z + half_size }

    -- make vm and load the area
    local vm = minetest.get_voxel_manip()
    local minp_loaded, maxp_loaded = vm:read_from_map(minp, maxp)
    local area = VoxelArea:new({ MinEdge = minp_loaded, MaxEdge = maxp_loaded })
    local data = vm:get_data()
    local param2_data = vm:get_param2_data()
    -- node ids
    local node_stone = minetest.get_content_id("sokoblox:stone")
    local node_rolling_block = minetest.get_content_id("sokoblox:rolling_block")

    local chunks = level.layers[1].chunks
    -- loop through the area to remove existing rolling blocks
    for z = minp.z, maxp.z do
        for y = minp.y, maxp.y do
            for x = minp.x, maxp.x do
                local vi = area:index(x, y, z)                -- voxel index
                if data[vi] == node_rolling_block then
                    data[vi] = minetest.get_content_id("air") -- remove old rolling block
                end
                for i = 1, 6 do
                    local node_activated = minetest.get_content_id("sokoblox:activated_" .. i)
                    if data[vi] == node_activated then
                        data[vi] = minetest.get_content_id("air") -- remove old activated block
                    end
                end
            end
        end
    end
    for _, chunk in pairs(chunks) do
        local xStart = chunk.x
        local zStart = chunk.y
        local w = chunk.width
        local h = chunk.height
        for n, tile_n in pairs(chunk.data) do
            local x = (n - 1) % w + xStart
            local z = -(math.floor((n - 1) / w) + zStart)
            local vi = area:index(x, 8, z) -- voxel index
            if tile_n == 0 then
                data[vi] = minetest.get_content_id("air")
            elseif tile_n == 1 then
                data[vi] = node_stone
                param2_data[vi] = (x + z) % 23
            elseif tile_n > 6 then
                local color_n = tile_n - 7
                data[vi] = minetest.get_content_id("sokoblox:target_" .. color_n)
            end
        end
    end
    -- update the map
    vm:set_data(data)
    vm:set_param2_data(param2_data)
    vm:write_to_map()
    vm:update_map()
end

map.setup_movers = function()
    local movers = level.layers[4].objects
    Sokoblox.movers = {}
    
    
    for _, data in pairs(movers) do
        local stance = data.properties["stance"]
        local pos = {x = data.x / 32, y = 9, z = -data.y / 32}
        local pos2 = nil
        local orientation = "standing"
        if stance ~= 0 and stance ~= 1 then
            pos = {x = data.x / 32, y = 9, z = -data.y / 32}
            minetest.log(data.width)
            if data.width == 64 then
                pos2 = {x = data.x / 32 + 1, y = 9, z = -data.y / 32}
                orientation = "horizontal_x"
            else
                pos2 = {x = data.x / 32 , y = 9, z = -data.y / 32 -1}
                orientation = "horizontal_z"

            end
        end
        local mover = {
            id = data.id,
            level = tonumber(data.type),
            pos = pos,
            pos2 = pos2,
            orientation = orientation,
            rot = data.properties["rot"],
            stance = stance,
        }

        Sokoblox.movers[data.id] = mover
    end
end

map.setup_targets = function()
    local bridge_table = level.layers[3].objects
    local bridges = {}
    for _, data in pairs(bridge_table) do
        local w = data.width / 32
        local h = data.height / 32
        local n = 0
        local pos = {}
        for x = 1, w do
            for z = 1, h do
                n = n + 1
                pos[n] = {
                    x = data.x / 32 + (x - 1), y = 8, z = -data.y / 32 - (z - 1)
                }
            end
        end
        local bridge = {
            id = data.id,
            pos = pos,
            targets = {},
            level = tonumber(data.type),
        }
        bridges[data.id] = bridge
    end


    local target_table = level.layers[2].objects
    local targets = {}
    for _, data in pairs(target_table) do
        local target = {
            id = data.id,
            bridge = bridges[data.properties.bridge.id],
            bridge_id = data.properties.bridge.id,
            level = tonumber(data.type)
        }

        local pos = {
            x = data.x / 32, y = 9, z = -data.y / 32
        }
        if data.width == 64 then
            pos = {
                a = {
                    x = data.x / 32, y = 9, z = -data.y / 32
                },
                b = {
                    x = (data.x + 32) / 32, y = 9, z = -data.y / 32
                },
            }
        end
        if data.height == 64 then
            pos = {
                a = {
                    x = data.x / 32, y = 9, z = -data.y / 32
                },
                b = {
                    x = data.x / 32, y = 9, z = (-data.y - 32) / 32
                },
            }
        end


        target.pos = pos
        --bridges have a list of targets
        --targets have a bridge object so it's recursively linked
        table.insert(target.bridge.targets, target)
        table.insert(targets, target)
    end
    Sokoblox.targets = targets
    Sokoblox.bridges = bridges
end

map.setup_checkpoints = function()
    local cp_table = level.layers[5].objects
    local checkpoints = {}
    for _, data in pairs(cp_table) do
        local cp = {
            pos = {
                x = data.x / 32, y = 9, z = -data.y / 32
            },
            level = tonumber(data.type)
        }
        cp.bridges = {}
        for _, bridge in pairs(data.properties) do
            for _, other_bridge in pairs(Sokoblox.bridges) do
                if other_bridge.id == bridge.id then
                    table.insert(cp.bridges, other_bridge)
                end
            end
        end
        table.insert(checkpoints, cp)
        if Sokoblox.level > 1 then
            if tonumber(data.type) == Sokoblox.level then
                Sokoblox.start_pos = cp.pos
                Sokoblox.movers[1].pos = Sokoblox.start_pos

                cp.complete = true
            end
        end
    end
    Sokoblox.checkpoints = checkpoints
end
return map
