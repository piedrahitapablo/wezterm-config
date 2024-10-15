local projects = require("menus.projects")
local utils = require("utils")
local wezterm = require("wezterm")
local workspaces = require("menus.workspaces")

local keymaps = {}

function keymaps.setup(config)
    local projects_input_selector = projects.get_input_selector()
    local workspaces_input_selector = workspaces.get_input_selector()

    config.keys = {
        {
            key = "o",
            mods = "SUPER|SHIFT",
            action = wezterm.action.InputSelector(projects_input_selector),
        },
        {
            key = "w",
            mods = "SUPER|SHIFT",
            action = wezterm.action.InputSelector(workspaces_input_selector),
        },
        {
            key = "k",
            mods = "SUPER|SHIFT",
            action = wezterm.action_callback(function(window)
                utils.kill_workspace(window:active_workspace())
            end),
        },
        {
            key = "LeftArrow",
            mods = "SUPER",
            action = wezterm.action.ActivateTabRelative(-1),
        },
        {
            key = "RightArrow",
            mods = "SUPER",
            action = wezterm.action.ActivateTabRelative(1),
        },
        {
            key = "d",
            mods = "SUPER",
            action = wezterm.action.SplitHorizontal({
                domain = "CurrentPaneDomain",
            }),
        },
        {
            key = "d",
            mods = "SUPER|SHIFT",
            action = wezterm.action.SplitVertical({
                domain = "CurrentPaneDomain",
            }),
        },
        {
            key = "LeftArrow",
            mods = "SUPER|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Left"),
        },
        {
            key = "RightArrow",
            mods = "SUPER|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Right"),
        },
        {
            key = "UpArrow",
            mods = "SUPER|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Up"),
        },
        {
            key = "DownArrow",
            mods = "SUPER|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Down"),
        },
        {
            key = "w",
            mods = "SUPER",
            action = wezterm.action.CloseCurrentPane({ confirm = true }),
        }
    }
end

return keymaps
