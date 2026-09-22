-- Popburst candy trail borders — fun multi-stop gradient
local active_border_color = {
  colors = {
    "rgba(ff4d9aee)", -- hot magenta
    "rgba(ff9f43ee)", -- tangerine
    "rgba(ffe566ee)", -- sunny yellow
    "rgba(7dff9aee)", -- mint
    "rgba(3de8ffee)", -- electric cyan
    "rgba(5b8cffee)", -- cornflower
    "rgba(ff4d9aee)", -- loop back
  },
  angle = 45,
}

local inactive_border_color = "rgba(2b2248aa)"

hl.config({
  general = {
    border_size = 3,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 10,
    rounding_power = 2,
  },
})

-- Give foot a slightly thicker, more playful frame
o.window("foot", { border_size = 4 })
