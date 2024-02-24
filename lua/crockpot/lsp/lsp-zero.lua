require("luasnip/loaders/from_vscode")
local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.setup()
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
local cmp = require('cmp')
local ls = require("luasnip")


cmp.setup({
  mapping = {
      ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
              fallback()
      end
		end, {
			"i",
			"s",
		}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
            else
                fallback()
            end
        end, {
                "i",
                "s",
            }),
        ["<CR>"] = function(fallback)
            if cmp.get_selected_entry() ~= nil and ls.expandable() then
                cmp.confirm()
            else
                fallback()
            end
        end
    }
})


