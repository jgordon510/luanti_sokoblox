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
  nextobjectid = 52,
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
            0, 0, 1, 9, 1, 1, 1, 1, 1, 0, 0, 11, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
            ["orientation"] = "standing",
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
          x = -640,
          y = -480,
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
            ["orientation"] = "standing",
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
            ["orientation"] = "standing",
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
            ["orientation"] = "standing",
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
            ["orientation"] = "standing",
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
            ["orientation"] = "standing",
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
            ["orientation"] = "standing",
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
            ["orientation"] = "standing",
            ["rot"] = 4,
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
        }
      }
    }
  }
}
