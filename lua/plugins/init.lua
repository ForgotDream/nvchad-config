return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup {
        compile_command = {
          cpp = { exec = "g++", args = { "$(FNAME)", "-o", "$(FNOEXT)", "-Wall", "--std=c++17", "-O2" } },
          -- zig = { exec = "zig", args = { "build-exe", "$(FNAME)", "-O", "ReleaseFast" } },
          zig = { exec = "zig", args = { "build-exe", "$(FNAME)" } },
        },

        run_command = {
          zig = { exec = "./$(FNOEXT)" },
        },

        maximum_time = 2500,
        view_output_diff = true,

        testcases_directory = ".cache"
      }
    end,
    ft = { "cpp", "zig" },
  },

  {
    "chomosuke/typst-preview.nvim",
    opts = {},
    ft = { "typ", "typst" },
  }
}
