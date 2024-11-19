Sokoblox = {}                                               --movers, targets, bridges, checkpoints, start_pos, start_rot, start_stance
local path = minetest.get_modpath("sokoblox")
dofile(path..'/nodes.lua')                                  --contains all the node registrations
Sokoblox.map = dofile(path.."/map.lua")                     --contains map setup and update functions
Sokoblox.movement = dofile(path.."/movement.lua")           --collision and rolling
dofile(path.."/player.lua")                                 --player join, keycheck, camera movement
Sokoblox.win_check = dofile(path.."/win_check.lua")         --faults, targets, checkpoints
--dofile(path.."/commands.lua")                               --debug/dev commands