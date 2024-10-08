local wezterm = require("wezterm")

local fonts = {}

function fonts.setup(config)
    config.font = wezterm.font({
        family = "Hack Nerd Font Mono",
        weight = "Medium",
    })
    config.font_size = 15
    config.bold_brightens_ansi_colors = true
end

return fonts
