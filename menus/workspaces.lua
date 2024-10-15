local wezterm = require("wezterm")

local workspaces = {}

local function get_workspace_choices()
    local choices = {}

    for _, ws in ipairs(wezterm.mux.get_workspace_names()) do
        table.insert(choices, #choices + 1, {
            label = ws,
            id = ws,
        })
    end

    return choices
end

function workspaces.get_input_selector()
    return {
        title = "Active workspaces",
        fuzzy_description = "Select an active workspace: ",
        choices = get_workspace_choices(),
        fuzzy = true,
        ---@diagnostic disable-next-line: unused-local
        action = wezterm.action_callback(function(window, pane, id, label)
            wezterm.mux.set_active_workspace(label)
        end),
    }
end

return workspaces
