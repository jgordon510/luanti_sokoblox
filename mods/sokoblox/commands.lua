minetest.register_chatcommand("sb-level", {
    params = "level stance rot",
    description = "set level",
    func = function(name, param)
        local args = {}
        for word in param:gmatch("%S+") do
            table.insert(args, word)
        end
        local level = args[1]
        local stance = tonumber(args[2]) or 0
        local rot = tonumber(args[3]) or 0
        level = tonumber(level)
        for _, cp in pairs(Sokoblox.checkpoints) do
            if cp.level == level then
                Sokoblox.map.clear_blocks()
                Sokoblox.level = level
                Sokoblox.movers[1].level = level
                Sokoblox.start_pos = cp.pos
                Sokoblox.movers[1].pos = Sokoblox.start_pos
                Sokoblox.movers[1].stance = stance
                Sokoblox.movers[1].rot = rot
                Sokoblox.movers[1].orientation = "standing"
                Sokoblox.map.move_blocks()
            end
        end
    end
})