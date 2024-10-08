local colors = {}

function colors.setup(config)
    config.color_schemes = {
        MyArgonaut = {
            background = "#191c2d",
            foreground = "#fefbf6",

            selection_fg = "#feffff",
            selection_bg = "#123649",

            -- default: #52ad70
            cursor_bg = "#aae046",
            cursor_fg = "#191c2d",
            -- default: #52ad70
            cursor_border = "#c0e27c",

            ansi = {
                "#2e2e2e",
                "#ec4129",
                "#aae046",
                "#f6c642",
                "#439ff2",
                "#7b5caf",
                "#5edaec",
                "#feffff",
            },
            brights = {
                "#555555",
                "#ed5356",
                "#c0e27c",
                "#f9d96a",
                "#45a3f8",
                "#a47ce8",
                "#98f9f2",
                "#feffff",
            },
        },
    }

    config.color_scheme = "MyArgonaut"
end

return colors
