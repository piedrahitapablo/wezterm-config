local weztermconfig = {}

function weztermconfig.startup(wezterm, workspace_name)
    local mux = wezterm.mux
    local project_dir = wezterm.home_dir .. "/.config/wezterm"

    local first_config_tab, first_pane, proj_window = mux.spawn_window({
        workspace = workspace_name,
        cwd = project_dir,
    })

    first_config_tab:set_title("weztermconfig")
    first_pane:send_text("n\r")

    mux.set_active_workspace(workspace_name)
end

return weztermconfig
