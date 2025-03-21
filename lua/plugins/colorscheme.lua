--[[function ColorSet(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
  {
    "rose-pine/neovim",
    opts = {},
    config = function()
      ColorSet()
    end,
  },
}, {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      disable_background = true,
      styles = {
        italic = false,
      },
    })
  end,
}--]]
return {
  -- current color scheme
  {
    "NTBBloodbath/doom-one.nvim",
    name = "doom-one",
    opts = {
      cursor_coloring = false,
      terminal_colors = true,
      italic_comments = false,
      enable_treesitter = true,
      diagnostics_text_color = false,
      transparent_background = true,
      pumblend_enable = false,
      pumblend_transparency = 20,
      plugin_neorg = true,
      plugin_barbar = false,
      plugin_telescope = false,
      plugin_neogit = true,
      plugin_nvim_tree = true,
      plugin_dashboard = true,
      plugin_startify = true,
      plugin_whichkey = true,
      plugin_indent_blankline = true,
      plugin_vim_illuminate = true,
      plugin_lspsaga = false,
    },
    config = function(_, opts)
      for k, v in pairs(opts) do
        vim.g["doom_one_" .. k] = v
      end
      vim.cmd("colorscheme doom-one")
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      return {
        require("rose-pine").setup({
          variant = "auto",
          dark_variant = "main",

          disable_background = true,
          disable_nc_background = true,
          disable_float_background = true,

          groups = {
            -- background = "pine", --"#133340", --"#255159",
            -- panel = "surface",   -- "#133340",
            border = "pine", --"pine",
          },

          highlight_groups = {
            -- blend colours against the 'base' background
            ColorColumn = { bg = "pine", blend = 40 },
            CursorLine = { bg = "pine", blend = 21 },

            Search = { bg = "rose", inherit = false },
            FloatBorder = { bg = "none" },
            LineNr = { fg = "#f6c177" }, -- gold

            -- nvim-cmp
            -- winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None"
            CmpPmenu = { bg = "#011b26" },
            CmpSel = { bg = "pine" },
            CmpDoc = { bg = "#011b26" },
          },
        }),
      }
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "doom-one",
    },
  },
}
