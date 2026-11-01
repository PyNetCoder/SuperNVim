return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {N
          header = [[
   ▄▄▄▄                                            ▄▄▄   ▄▄  ▄▄    ▄▄     ██   ████▄██▄
 ▄█▀▀▀▀█                                           ███   ██  ▀██  ██▀     ▀▀   ██ ██ ██
 ██▄       ██    ██  ██▄███▄    ▄████▄    ██▄████  ██▀█  ██   ██  ██    ████   ██ ██ ██
  ▀████▄   ██    ██  ██▀  ▀██  ██▄▄▄▄██   ██▀      ██ ██ ██   ██  ██      ██   ██ ██ ██
      ▀██  ██    ██  ██    ██  ██▀▀▀▀▀▀   ██       ██  █▄██    ████       ██   ▀▀ ▀▀ ▀▀
 █▄▄▄▄▄█▀  ██▄▄▄███  ███▄▄██▀  ▀██▄▄▄▄█   ██       ██   ███    ████    ▄▄▄██▄▄▄
  ▀▀▀▀▀     ▀▀▀▀ ▀▀  ██ ▀▀▀      ▀▀▀▀▀    ▀▀       ▀▀   ▀▀▀    ▀▀▀▀    ▀▀▀▀▀▀▀▀
                     ██                                                            ]],

          keys = {
            { icon = "🔍 ", key = "f", desc = "Scan Files (Find)", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = "📄 ", key = "n", desc = "Forge New File", action = ":ene | startinsert" },
            { icon = "🗂️ ", key = "p", desc = "Open Project Workspace", action = ":lua Snacks.dashboard.pick('projects')" },
            { icon = "✍️ ", key = "g", desc = "Live Grep Text Search", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = "⏳ ", key = "r", desc = "Recent Chrono Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = "⚙️ ", key = "c", desc = "Configure SuperNVim", action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.stdpath('config') })" },
            { icon = "🔄 ", key = "s", desc = "Restore Chrono Session", action = [[<cmd>lua require("persistence").load()<cr>]] },
            { icon = "📦 ", key = "l", desc = "Lazy Engine Core", action = ":Lazy" },
            { icon = "🚪 ", key = "q", desc = "Deactivate & Exit", action = ":qa" },
          },
        },
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
