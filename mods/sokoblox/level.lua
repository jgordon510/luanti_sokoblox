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
  nextobjectid = 34,
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
          x = -16, y = -16, width = 16, height = 16,
          data = {
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 10, 10,
            0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 11, 0, 1, 1, 1,
            0, 0, 1, 1, 1, 8, 0, 13, 13, 0, 0, 1, 0, 1, 1, 1,
            0, 0, 1, 0, 0, 0, 0, 12, 12, 0, 0, 1, 0, 0, 0, 0,
            0, 0, 1, 0, 0, 0, 0, 10, 10, 1, 1, 1, 0, 0, 0, 0
          }
        },
        {
          x = 0, y = -16, width = 16, height = 16,
          data = {
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 12, 12, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
          }
        },
        {
          x = -16, y = 0, width = 16, height = 16,
          data = {
            0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0,
            0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
          type = "2",
          shape = "rectangle",
          x = -64,
          y = -160,
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
          x = 32,
          y = -288,
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
          type = "3",
          shape = "rectangle",
          x = -288,
          y = -32,
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
          type = "3",
          shape = "rectangle",
          x = -288,
          y = -64,
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
          type = "3",
          shape = "rectangle",
          x = -288,
          y = -96,
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
          type = "3",
          shape = "rectangle",
          x = -288,
          y = -128,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["bridge"] = { id = 31 }
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
          type = "2",
          shape = "rectangle",
          x = -128,
          y = -128,
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
          x = -64,
          y = -256,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "3",
          shape = "rectangle",
          x = -320,
          y = 0,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          type = "3",
          shape = "rectangle",
          x = -320,
          y = -32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "",
          type = "3",
          shape = "rectangle",
          x = -320,
          y = -96,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "",
          type = "3",
          shape = "rectangle",
          x = -320,
          y = -64,
          width = 32,
          height = 32,
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
          x = 0,
          y = -288,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["orientation"] = "standing",
            ["rot"] = 0,
            ["stance"] = 0
          }
        },
        {
          id = 13,
          name = "3",
          type = "2",
          shape = "rectangle",
          x = 0,
          y = -160,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["orientation"] = "standing",
            ["rot"] = 1,
            ["stance"] = 0
          }
        },
        {
          id = 20,
          name = "2",
          type = "1",
          shape = "rectangle",
          x = 192,
          y = -288,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["orientation"] = "standing",
            ["rot"] = 2,
            ["stance"] = 0
          }
        },
        {
          id = 24,
          name = "3",
          type = "3",
          shape = "rectangle",
          x = -192,
          y = -32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["orientation"] = "standing",
            ["rot"] = 1,
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
          name = "",
          type = "3",
          shape = "rectangle",
          x = -160,
          y = -128,
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
          name = "",
          type = "2",
          shape = "rectangle",
          x = -96,
          y = -256,
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
          name = "",
          type = "2",
          shape = "rectangle",
          x = -352,
          y = -96,
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
        }
      }
    }
  }
}
