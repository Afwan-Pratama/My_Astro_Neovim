return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "andweeb/presence.nvim",
    lazy = false,
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "rainbowhxch/beacon.nvim",
    lazy = false,
    config = function()
      require("beacon").setup {
        enable = true,
        size = 60,
        fade = true,
        minimal_jump = 10,
        show_jumps = true,
        focus_gained = false,
        shrink = true,
        timeout = 700,
        ignore_buffers = {},
        ignore_filetypes = {},
      }
    end,
  },
  {
    "echasnovski/mini.animate",
    version = false,
    lazy = false,
    config = function()
      require("mini.animate").setup {
        open = {
          enable = false,
        },
        close = {
          enable = false,
        },
      }
    end,
  },
  { "mrjones2014/nvim-ts-rainbow", lazy = false },
  {
    "roobert/search-replace.nvim",
    lazy = false,
    config = function()
      require("search-replace").setup {
        -- optionally override defaults
        default_replace_single_buffer_options = "gcI",
        default_replace_multi_buffer_options = "egcI",
      }
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup {
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {
          -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        show_end_of_buffer = false, -- show the '~' characters after the end of buffers
        term_colors = false,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        -- custom_highlights = {},
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          notify = true,
          mini = false,
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      }
    end,
  },
}
