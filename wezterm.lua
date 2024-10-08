local behavior = require("behavior")
local ui = require("ui")
local wezterm = require("wezterm")

local config = wezterm.config_builder()

behavior.setup(config)
ui.setup(config)

return config
