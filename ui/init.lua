local colors = require("ui.colors")
local fonts = require("ui.fonts")
local windows = require("ui.windows")

local ui = {}

function ui.setup(config)
    config.use_fancy_tab_bar = false
    config.hide_tab_bar_if_only_one_tab = false
    config.tab_max_width = 30

    config.default_cursor_style = "SteadyBar"

    colors.setup(config)
    fonts.setup(config)
    windows.setup(config)
end

return ui
