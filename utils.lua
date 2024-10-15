local wezterm = require("wezterm")

local utils = {}

function utils.filter(tbl, fn)
    local result = {}
    for _, value in ipairs(tbl) do
        if fn(value) then
            table.insert(result, value)
        end
    end
    return result
end

-- https://github.com/wez/wezterm/issues/3658#issuecomment-2241251539
utils.kill_workspace = function(workspace)
    local success, stdout = wezterm.run_child_process({
        "/opt/homebrew/bin/wezterm",
        "cli",
        "list",
        "--format=json",
    })

    if not success then
        return
    end

    local json = wezterm.json_parse(stdout)
    if not json then
        return
    end

    local workspace_panes = utils.filter(json, function(pane)
        return pane.workspace == workspace
    end)

    for _, pane in ipairs(workspace_panes) do
        wezterm.run_child_process({
            "/opt/homebrew/bin/wezterm",
            "cli",
            "kill-pane",
            "--pane-id=" .. pane.pane_id,
        })
    end
end

return utils
