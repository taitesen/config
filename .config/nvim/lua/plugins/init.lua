return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

   -- These are some examples, uncomment them if you want to see them work!
   {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "configs.null-ls"
    end,
   },
   {
    "christoomey/vim-tmux-navigator",
    lazy = false,
   },
   {
     "neovim/nvim-lspconfig",
     config = function()
       require("nvchad.configs.lspconfig").defaults()
       require "configs.lspconfig"
     end,
   },
   {
   	"williamboman/mason.nvim",
   	opts = {
   		ensure_installed = {
   			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettierd",
        "pyright", "clangd", "typescript-language-server",
        "tailwindcss-language-server", "eslint-lsp",
        "clang-format", "mypy", "black",
   		},
   	},
   },
   {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    config = function ()
      require("nvim-ts-autotag").setup()
    end
   },

   {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        "html", "css", "javascript",
        "typescript", "tsx", "c", "cpp",
        "python"
   		},
   	},
   },
}
