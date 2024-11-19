return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 30,
  height = 20,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 9,
  nextobjectid = 182,
  properties = {},
  tilesets = {
    {
      name = "sokoblox_luanti",
      firstgid = 1,
      class = "",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 0,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 1,
        height = 1
      },
      properties = {},
      wangsets = {},
      tilecount = 7,
      tiles = {
        {
          id = 0,
          image = "../../tiled/sokoblox_stone.png",
          width = 32,
          height = 32
        },
        {
          id = 7,
          image = "../../tiled/sokoblox_red.png",
          width = 32,
          height = 32
        },
        {
          id = 8,
          image = "../../tiled/sokoblox_green.png",
          width = 32,
          height = 32
        },
        {
          id = 9,
          image = "../../tiled/sokoblox_blue.png",
          width = 32,
          height = 32
        },
        {
          id = 10,
          image = "../../tiled/sokoblox_cyan.png",
          width = 32,
          height = 32
        },
        {
          id = 11,
          image = "../../tiled/sokoblox_magenta.png",
          width = 32,
          height = 32
        },
        {
          id = 12,
          image = "../../tiled/sokoblox_yellow.png",
          width = 32,
          height = 32
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 20,
      id = 1,
      name = "Tile Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      chunks = {
        {
          x = -48, y = -32, width = 16, height = 16,
          data = {
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1,
            1, 1, 1, 1, 12, 12, 0, 0, 9, 9, 0, 0, 11, 0, 1, 1,
            1, 1, 1, 1, 1, 1, 8, 0, 13, 13, 0, 0, 1, 0, 1, 10
          }
        },
        {
          x = -32, y = -32, width = 16, height = 16,
          data = {
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            10, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
          }
        },
        {
          x = -64, y = -16, width = 16, height = 16,
          data = {
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 13, 1, 1, 1, 1, 1, 1, 1, 1, 9,
            0, 0, 0, 0, 0, 0, 13, 1, 1, 1, 1, 1, 1, 1, 1, 9,
            0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 11, 11, 1, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 11, 11, 1, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 10, 1, 1, 1, 1, 1, 1, 1, 1, 12,
            0, 0, 0, 0, 0, 11, 10, 1, 1, 1, 1, 1, 1, 1, 1, 12,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
          }
        },
        {
          x = -48, y = -16, width = 16, height = 16,
          data = {
            12, 12, 1, 1, 1, 1, 0, 0, 12, 12, 0, 0, 1, 0, 1, 0,
            0, 0, 0, 1, 1, 1, 0, 0, 10, 10, 1, 1, 1, 0, 1, 0,
            0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 8, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10,
            0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1,
            0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 10, 10, 1,
            0, 0, 1, 1, 1, 1, 1, 9, 1, 0, 0, 0, 0, 0, 1, 1,
            0, 0, 1, 1, 1, 1, 1, 9, 1, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 1, 9, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 1, 9, 1, 1, 1, 1, 1, 0, 0, 11, 1, 1, 1, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 12,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 0, 0, 0, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 0, 0, 0, 0, 0
          }
        },
        {
          x = -32, y = -16, width = 16, height = 16,
          data = {
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 1, 12, 12, 1, 1, 1, 1, 1, 1, 0,
            0, 0, 0, 8, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
            0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0,
            10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0,
            12, 1, 1, 1, 1, 1, 1, 8, 1, 1, 11, 1, 0, 0, 0, 0,
            1, 1, 9, 9, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0,
            1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0
          }
        },
        {
          x = -16, y = -16, width = 16, height = 16,
          data = {
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 12, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 12, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0
          }
        },
        {
          x = -64, y = 0, width = 16, height = 16,
          data = {
            0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            0, 0, 0, 8, 11, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
          }
        },
        {
          x = -48, y = 0, width = 16, height = 16,
          data = {
            1, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 1, 1, 1, 11, 0, 1, 1, 0, 0, 0, 0, 0,
            11, 0, 0, 0, 0, 0, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 10, 0, 0, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 8,
            0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 11, 0, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
          }
        },
        {
          x = -32, y = 0, width = 16, height = 16,
          data = {
            0, 0, 0, 0, 0, 0, 1, 1, 1, 12, 12, 0, 8, 0, 0, 0,
            0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0,
            0, 0, 8, 0, 9, 9, 1, 1, 1, 1, 0, 0, 8, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 1, 10, 0, 0, 0, 1, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 1, 10, 0, 0, 0, 1, 0, 0, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 8, 0, 0, 0, 1, 0, 0, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0,
            11, 11, 8, 1, 0, 0, 8, 0, 1, 1, 1, 1, 1, 1, 1, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 13, 1, 10, 1, 0,
            1, 1, 1, 1, 1, 1, 11, 0, 0, 0, 1, 13, 1, 10, 1, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
          }
        },
        {
          x = -16, y = 0, width = 16, height = 16,
          data = {
            0, 0, 0, 0, 8, 1, 11, 1, 1, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0,
            11, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 11, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "Targets",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 14,
          name = "",
          type = "3",
          shape = "rectangle",
          x = -1056,
          y = -544,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 12 }
          }
        },
        {
          id = 21,
          name = "",
          type = "1",
          shape = "rectangle",
          x = -800,
          y = -480,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 22 }
          }
        },
        {
          id = 26,
          name = "",
          type = "4",
          shape = "rectangle",
          x = -1280,
          y = -480,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 25 }
          }
        },
        {
          id = 27,
          name = "",
          type = "4",
          shape = "rectangle",
          x = -1280,
          y = -512,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 28 }
          }
        },
        {
          id = 29,
          name = "",
          type = "4",
          shape = "rectangle",
          x = -1280,
          y = -544,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 32 }
          }
        },
        {
          id = 30,
          name = "",
          type = "4",
          shape = "rectangle",
          x = -1280,
          y = -576,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 31 }
          }
        },
        {
          id = 36,
          name = "",
          type = "2",
          shape = "rectangle",
          x = -1056,
          y = -384,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 35 }
          }
        },
        {
          id = 39,
          name = "",
          type = "2",
          shape = "rectangle",
          x = -1120,
          y = -320,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 35 }
          }
        },
        {
          id = 43,
          name = "",
          type = "5",
          shape = "rectangle",
          x = -1408,
          y = -576,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 42 }
          }
        },
        {
          id = 44,
          name = "",
          type = "5",
          shape = "rectangle",
          x = -1536,
          y = -512,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 42 }
          }
        },
        {
          id = 48,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -1312,
          y = -288,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 50 }
          }
        },
        {
          id = 49,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -1440,
          y = -192,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 50 }
          }
        },
        {
          id = 55,
          name = "",
          type = "7",
          shape = "rectangle",
          x = -1056,
          y = -128,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 56 }
          }
        },
        {
          id = 57,
          name = "",
          type = "7",
          shape = "rectangle",
          x = -960,
          y = -96,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 56 }
          }
        },
        {
          id = 60,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -704,
          y = -128,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 61 }
          }
        },
        {
          id = 66,
          name = "",
          type = "8",
          shape = "rectangle",
          x = -416,
          y = -320,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 65 }
          }
        },
        {
          id = 67,
          name = "",
          type = "8",
          shape = "rectangle",
          x = -384,
          y = -320,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 65 }
          }
        },
        {
          id = 68,
          name = "",
          type = "8",
          shape = "rectangle",
          x = -352,
          y = -320,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 65 }
          }
        },
        {
          id = 71,
          name = "",
          type = "9",
          shape = "rectangle",
          x = -320,
          y = 0,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 73 }
          }
        },
        {
          id = 72,
          name = "",
          type = "9",
          shape = "rectangle",
          x = -384,
          y = 0,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 74 }
          }
        },
        {
          id = 76,
          name = "",
          type = "9",
          shape = "rectangle",
          x = -128,
          y = 128,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 75 }
          }
        },
        {
          id = 77,
          name = "",
          type = "9",
          shape = "rectangle",
          x = -512,
          y = 128,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 75 }
          }
        },
        {
          id = 78,
          name = "",
          type = "9",
          shape = "rectangle",
          x = -448,
          y = -96,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 79 }
          }
        },
        {
          id = 86,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -736,
          y = 0,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 87 }
          }
        },
        {
          id = 88,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -896,
          y = 64,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 89 }
          }
        },
        {
          id = 90,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -768,
          y = 96,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 91 }
          }
        },
        {
          id = 92,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -640,
          y = 0,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 93 }
          }
        },
        {
          id = 94,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -960,
          y = 64,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 95 }
          }
        },
        {
          id = 96,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -768,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 97 }
          }
        },
        {
          id = 101,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -672,
          y = 288,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 106 }
          }
        },
        {
          id = 107,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -608,
          y = 288,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 103 }
          }
        },
        {
          id = 109,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -832,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 110 }
          }
        },
        {
          id = 116,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -992,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 118 }
          }
        },
        {
          id = 117,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -1024,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 118 }
          }
        },
        {
          id = 120,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -960,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 119 }
          }
        },
        {
          id = 121,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -1056,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 119 }
          }
        },
        {
          id = 128,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = 192,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 131 }
          }
        },
        {
          id = 129,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = 128,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 133 }
          }
        },
        {
          id = 130,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = 64,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 132 }
          }
        },
        {
          id = 134,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = 0,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 138 }
          }
        },
        {
          id = 135,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = -32,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 138 }
          }
        },
        {
          id = 136,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = -64,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 138 }
          }
        },
        {
          id = 137,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = -96,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 138 }
          }
        },
        {
          id = 142,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1344,
          y = 320,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 138 }
          }
        },
        {
          id = 144,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = 416,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 138 }
          }
        },
        {
          id = 150,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1568,
          y = 64,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 149 }
          }
        },
        {
          id = 151,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1536,
          y = 64,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 149 }
          }
        },
        {
          id = 152,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1952,
          y = 32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 154 }
          }
        },
        {
          id = 153,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1920,
          y = 32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 154 }
          }
        },
        {
          id = 165,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1856,
          y = -96,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 166 }
          }
        },
        {
          id = 167,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1856,
          y = -352,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 166 }
          }
        },
        {
          id = 168,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1568,
          y = -352,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 166 }
          }
        },
        {
          id = 169,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1568,
          y = -96,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 166 }
          }
        },
        {
          id = 171,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1728,
          y = -224,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 166 }
          }
        },
        {
          id = 172,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1696,
          y = -224,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 166 }
          }
        },
        {
          id = 173,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1696,
          y = -192,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 166 }
          }
        },
        {
          id = 174,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1728,
          y = -192,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 166 }
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "Bridges",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 12,
          name = "",
          type = "3",
          shape = "rectangle",
          x = -1120,
          y = -576,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "1",
          shape = "rectangle",
          x = -896,
          y = -448,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "4",
          shape = "rectangle",
          x = -1312,
          y = -448,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          type = "4",
          shape = "rectangle",
          x = -1312,
          y = -480,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "",
          type = "4",
          shape = "rectangle",
          x = -1312,
          y = -544,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "",
          type = "4",
          shape = "rectangle",
          x = -1312,
          y = -512,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "",
          type = "2",
          shape = "rectangle",
          x = -1088,
          y = -416,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "",
          type = "5",
          shape = "rectangle",
          x = -1376,
          y = -416,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 50,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -1248,
          y = -160,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 56,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -896,
          y = -128,
          width = 96,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 61,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -704,
          y = -224,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 65,
          name = "",
          type = "8",
          shape = "rectangle",
          x = -352,
          y = -224,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 73,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -224,
          y = 32,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 74,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -416,
          y = 32,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 75,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -416,
          y = -96,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 79,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -768,
          y = -32,
          width = 384,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 87,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -896,
          y = 0,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 89,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -832,
          y = 96,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 91,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -672,
          y = 0,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 93,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -928,
          y = 64,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 95,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -768,
          y = 160,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 97,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -704,
          y = 64,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 103,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -800,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 106,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -544,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 110,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -800,
          y = 288,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 118,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -1152,
          y = 160,
          width = 32,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 119,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -1184,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 131,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1344,
          y = 256,
          width = 96,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 132,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1312,
          y = 128,
          width = 64,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 133,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -1248,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 138,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -1280,
          y = 32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 149,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1504,
          y = 0,
          width = 96,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 154,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1952,
          y = -64,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 166,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1728,
          y = -416,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "Movers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "1",
          type = "1",
          shape = "rectangle",
          x = -832,
          y = -480,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 0
          }
        },
        {
          id = 13,
          name = "",
          type = "3",
          shape = "rectangle",
          x = -992,
          y = -544,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 0
          }
        },
        {
          id = 20,
          name = "2",
          type = "1",
          shape = "rectangle",
          x = -640,
          y = -480,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 2,
            ["stance"] = 0
          }
        },
        {
          id = 24,
          name = "",
          type = "4",
          shape = "rectangle",
          x = -1184,
          y = -480,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 0
          }
        },
        {
          id = 34,
          name = "",
          type = "2",
          shape = "rectangle",
          x = -960,
          y = -352,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 0
          }
        },
        {
          id = 38,
          name = "",
          type = "2",
          shape = "rectangle",
          x = -992,
          y = -320,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 0
          }
        },
        {
          id = 40,
          name = "",
          type = "5",
          shape = "rectangle",
          x = -1408,
          y = -512,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 4,
            ["stance"] = 0
          }
        },
        {
          id = 41,
          name = "",
          type = "5",
          shape = "rectangle",
          x = -1504,
          y = -576,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 2,
            ["stance"] = 0
          }
        },
        {
          id = 46,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -1408,
          y = -224,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 3,
            ["stance"] = 0
          }
        },
        {
          id = 47,
          name = "",
          type = "6",
          shape = "rectangle",
          x = -1344,
          y = -224,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 4,
            ["stance"] = 0
          }
        },
        {
          id = 53,
          name = "",
          type = "7",
          shape = "rectangle",
          x = -1056,
          y = -96,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 2
          }
        },
        {
          id = 54,
          name = "",
          type = "7",
          shape = "rectangle",
          x = -960,
          y = -128,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 2
          }
        },
        {
          id = 59,
          name = "",
          type = "8",
          shape = "rectangle",
          x = -768,
          y = -128,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 2
          }
        },
        {
          id = 62,
          name = "",
          type = "8",
          shape = "rectangle",
          x = -640,
          y = -320,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 4
          }
        },
        {
          id = 63,
          name = "",
          type = "8",
          shape = "rectangle",
          x = -544,
          y = -320,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 4
          }
        },
        {
          id = 64,
          name = "",
          type = "8",
          shape = "rectangle",
          x = -480,
          y = -320,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 4
          }
        },
        {
          id = 70,
          name = "",
          type = "9",
          shape = "rectangle",
          x = -352,
          y = -64,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 4
          }
        },
        {
          id = 80,
          name = "",
          type = "9",
          shape = "rectangle",
          x = -192,
          y = 128,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 2,
            ["stance"] = 2
          }
        },
        {
          id = 81,
          name = "",
          type = "9",
          shape = "rectangle",
          x = -480,
          y = 128,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 3
          }
        },
        {
          id = 83,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -800,
          y = 96,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 5
          }
        },
        {
          id = 84,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -896,
          y = 32,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 2
          }
        },
        {
          id = 85,
          name = "",
          type = "10",
          shape = "rectangle",
          x = -736,
          y = 32,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 3
          }
        },
        {
          id = 99,
          name = "",
          type = "11",
          shape = "rectangle",
          x = -640,
          y = 288,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 4
          }
        },
        {
          id = 108,
          name = "",
          type = "11",
          shape = "rectangle",
          x = -448,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 0
          }
        },
        {
          id = 112,
          name = "",
          type = "12",
          shape = "rectangle",
          x = -960,
          y = 224,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 1
          }
        },
        {
          id = 113,
          name = "",
          type = "12",
          shape = "rectangle",
          x = -992,
          y = 224,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 0
          }
        },
        {
          id = 114,
          name = "",
          type = "12",
          shape = "rectangle",
          x = -1024,
          y = 224,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 0
          }
        },
        {
          id = 115,
          name = "",
          type = "12",
          shape = "rectangle",
          x = -1056,
          y = 224,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 1
          }
        },
        {
          id = 124,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = 256,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 1,
            ["stance"] = 2
          }
        },
        {
          id = 125,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = 224,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 2,
            ["stance"] = 2
          }
        },
        {
          id = 126,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = 192,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 3,
            ["stance"] = 2
          }
        },
        {
          id = 127,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = 160,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 2
          }
        },
        {
          id = 141,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1344,
          y = 288,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 2,
            ["stance"] = 2
          }
        },
        {
          id = 143,
          name = "",
          type = "13",
          shape = "rectangle",
          x = -1248,
          y = 384,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 2,
            ["stance"] = 2
          }
        },
        {
          id = 145,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1344,
          y = 32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 1
          }
        },
        {
          id = 146,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1376,
          y = 32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 1
          }
        },
        {
          id = 147,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1408,
          y = 32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 1
          }
        },
        {
          id = 148,
          name = "",
          type = "14",
          shape = "rectangle",
          x = -1440,
          y = 32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 1
          }
        },
        {
          id = 157,
          name = "",
          type = "15",
          shape = "rectangle",
          x = -1728,
          y = -224,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 1
          }
        },
        {
          id = 158,
          name = "",
          type = "15",
          shape = "rectangle",
          x = -1696,
          y = -192,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 1
          }
        },
        {
          id = 159,
          name = "",
          type = "15",
          shape = "rectangle",
          x = -1696,
          y = -224,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 1
          }
        },
        {
          id = 160,
          name = "",
          type = "15",
          shape = "rectangle",
          x = -1728,
          y = -192,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 1
          }
        },
        {
          id = 161,
          name = "",
          type = "15",
          shape = "rectangle",
          x = -1664,
          y = -256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 0
          }
        },
        {
          id = 162,
          name = "",
          type = "15",
          shape = "rectangle",
          x = -1760,
          y = -256,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 0
          }
        },
        {
          id = 163,
          name = "",
          type = "15",
          shape = "rectangle",
          x = -1664,
          y = -160,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 0
          }
        },
        {
          id = 164,
          name = "",
          type = "15",
          shape = "rectangle",
          x = -1760,
          y = -160,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["rot"] = 0,
            ["stance"] = 0
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "Checkpoints",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 15,
          name = "4",
          type = "4",
          shape = "rectangle",
          x = -1152,
          y = -576,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 12 }
          }
        },
        {
          id = 23,
          name = "2",
          type = "2",
          shape = "rectangle",
          x = -928,
          y = -448,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 22 }
          }
        },
        {
          id = 33,
          name = "5",
          type = "5",
          shape = "rectangle",
          x = -1344,
          y = -544,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 31 },
            ["bridge2"] = { id = 32 },
            ["bridge3"] = { id = 28 },
            ["bridge4"] = { id = 25 }
          }
        },
        {
          id = 37,
          name = "3",
          type = "3",
          shape = "rectangle",
          x = -1088,
          y = -448,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 35 }
          }
        },
        {
          id = 45,
          name = "6",
          type = "6",
          shape = "rectangle",
          x = -1376,
          y = -352,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 42 }
          }
        },
        {
          id = 51,
          name = "7",
          type = "7",
          shape = "rectangle",
          x = -1184,
          y = -160,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 50 }
          }
        },
        {
          id = 58,
          name = "8",
          type = "8",
          shape = "rectangle",
          x = -800,
          y = -128,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 56 }
          }
        },
        {
          id = 69,
          name = "9",
          type = "9",
          shape = "rectangle",
          x = -352,
          y = -160,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 65 }
          }
        },
        {
          id = 82,
          name = "10",
          type = "10",
          shape = "rectangle",
          x = -800,
          y = -32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 79 }
          }
        },
        {
          id = 98,
          name = "11",
          type = "11",
          shape = "rectangle",
          x = -640,
          y = 64,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 97 }
          }
        },
        {
          id = 111,
          name = "12",
          type = "12",
          shape = "rectangle",
          x = -832,
          y = 320,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 110 }
          }
        },
        {
          id = 123,
          name = "13",
          type = "13",
          shape = "rectangle",
          x = -1184,
          y = 288,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 119 }
          }
        },
        {
          id = 139,
          name = "14",
          type = "14",
          shape = "rectangle",
          x = -1312,
          y = 32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 138 }
          }
        },
        {
          id = 155,
          name = "15",
          type = "15",
          shape = "rectangle",
          x = -1888,
          y = -64,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 154 }
          }
        },
        {
          id = 175,
          name = "16",
          type = "16",
          shape = "rectangle",
          x = -1664,
          y = -416,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 166 }
          }
        },
        {
          id = 176,
          name = "1",
          type = "1",
          shape = "rectangle",
          x = -832,
          y = -480,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge1"] = { id = 0 }
          }
        }
      }
    }
  }
}
