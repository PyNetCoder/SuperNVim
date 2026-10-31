return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = { spacing = 4, prefix = "●" },
        severity_sort = true,
      },
      servers = {
        pyright = {},       -- Python
        lua_ls = {},        -- Lua
        gopls = {},         -- Go
        rust_analyzer = {}, -- Rust
        omnisharp = {},     -- C#
        jsonls = {},        -- JSON
        bashls = {},        -- Bash
        powershell_es = {}, -- PowerShell
        toml_ls = {},       -- TOML
        yaml_ls = {},       -- YAML
        xml_ls = {},        -- XML
        ini_ls = {},        -- INI
        dockerls = {},      -- Docker
        terraformls = {},   -- Terraform
        ts_ls = {},         -- JavaScript / TypeScript
      },
    },
  },
}
