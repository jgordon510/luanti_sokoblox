--rolling block node - used for both blocks
minetest.register_node("sokoblox:rolling_block", {
    description = "Rolling Block",
    tiles = { "sokoblox_red.png", "sokoblox_cyan.png", "sokoblox_green.png", "sokoblox_magenta.png", "sokoblox_blue.png", "sokoblox_yellow.png" },
    groups = { cracky = 1, falling_node = 1 },
    paramtype2 = "facedir",
    light_source = 4
})

--stone node for floor
minetest.register_node("sokoblox:stone", {
    description = "Stone",
    tiles = { "sokoblox_stone1.png", "sokoblox_stone2.png", "sokoblox_stone3.png", "sokoblox_stone4.png", "sokoblox_stone5.png", "sokoblox_stone6.png", },
    paramtype2 = "facedir",
})

--target nodes
for i, color in pairs({ "red", "green", "blue", "cyan", "magenta", "yellow" }) do
    minetest.register_node("sokoblox:target_" .. i, {
        description = "Target: " .. color .. "(" .. i .. ")",
        tiles = { {
            name = "sokoblox_activated_" .. i .. ".png",
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 2,
            }
        } }
    })
end

--activated nodes
for i, color in pairs({ "red", "green", "blue", "cyan", "magenta", "yellow" }) do
    minetest.register_node("sokoblox:activated_" .. i, {
        description = "Activated " .. color,
        tiles = { {
            name = "sokoblox_activated_" .. i .. ".png",
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 2,
            }
        } }
    })
end
