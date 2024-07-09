return {
  "L3MON4D3/LuaSnip",
  config = function(plugin, opts)
    -- include the default astronvim config that calls the setup call
    require("astronvim.plugins.configs.luasnip")(plugin, opts)
    -- load snippets paths
    -- require("luasnip.loaders.from_vscode").lazy_load({
    --   paths = { vim.fn.stdpath("config") .. "/snippets" },
    -- })

    -- Load all snippets from the nvim/LuaSnip directory at startup
    require("luasnip.loaders.from_lua").lazy_load({paths = { vim.fn.stdpath("config") .. "/LuaSnip/"}})

    require("luasnip").config.set_config({ -- Setting LuaSnip config

      -- Enable autotriggered snippets
      enable_autosnippets = true,

      -- Use Tab (or some other key if you prefer) to trigger visual selection
      store_selection_keys = "<Tab>",
    })

  end,
}
