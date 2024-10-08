local snappr_ai = {}

function snappr_ai.startup(wezterm, workspace_name)
    local mux = wezterm.mux
    local project_dir = wezterm.home_dir .. "/code/snappr/snappr.ai"

    local tab_1, tab_1_pane_1, proj_window = mux.spawn_window({
        workspace = workspace_name,
        cwd = project_dir,
    })

    tab_1:set_title("nvim")
    tab_1_pane_1:send_text("n\r")

    local tab_2, tab_2_pane_1, _ = proj_window:spawn_tab({})
    tab_2_pane_1:send_text("cd apps/web\r")
    tab_2_pane_1:send_text("docker compose up -d\r")
    tab_2_pane_1:send_text("cd -\r")
    tab_2_pane_1:send_text("pnpm run dev --filter web\r")

    tab_2_pane_1:split({ direction = "Right" })

    mux.set_active_workspace(workspace_name)
end

return snappr_ai
