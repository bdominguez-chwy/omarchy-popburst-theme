-- Popburst floral trail — amber / gold / leaf, matched to wallhaven 8g8kmo
local active_border_color = {
  colors = {
    "rgba(d4782eee)", -- burnt amber
    "rgba(e0b84aee)", -- golden bloom
    "rgba(e07058ee)", -- coral petal
    "rgba(c87868ee)", -- dusty rose
    "rgba(7a9a62ee)", -- soft leaf
    "rgba(6a9a88ee)", -- muted teal
    "rgba(d4782eee)", -- loop
  },
  angle = 45,
}

local inactive_border_color = "rgba(2a241caa)"

hl.config({
  general = {
    border_size = 2,
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

    active_opacity = 0.97,
    inactive_opacity = 0.93,
    fullscreen_opacity = 1.0,

    blur = {
      enabled = true,
      size = 5,
      passes = 2,
      contrast = 1.0,
      brightness = 0.92,
      vibrancy = 0.16,
      vibrancy_darkness = 0.12,
      noise = 0.05,
      ignore_opacity = true,
      new_optimizations = true,
    },
  },
})

o.window({ tag = "default-opacity" }, { opacity = "0.97 0.93" })
o.window({ tag = "terminal" }, { opacity = "0.96 0.92" })

o.window("foot", { border_size = 3 })

hl.layer_rule({
  name = "popburst-shell-blur",
  match = {
    namespace = "^(omarchy-bar|omarchy-menu|omarchy-notifications|omarchy-osd)$",
  },
  blur = true,
  ignore_alpha = 0.12,
})
