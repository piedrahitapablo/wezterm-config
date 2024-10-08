local windows = {}

function windows.setup(config)
    config.window_background_opacity = 0.95
    config.window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    }

    config.adjust_window_size_when_changing_font_size = false

    config.inactive_pane_hsb = {
        hue = 1,
        saturation = 0.8,
        brightness = 1,
    }
end

return windows
