return {
  {
    "mbbill/undotree",
    lazy = false,
    config = function()
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end,
  },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "ThePrimeagen/harpoon",
    config = function()
      require("telescope").load_extension "harpoon"
    end,
  },
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    init = function()
      local wk = require "which-key"
      wk.register({
        ["s"] = {
          name = "Silicon",
          ["s"] = {
            function()
              require("nvim-silicon").shoot()
            end,
            "Create code screenshot",
          },
          ["f"] = {
            function()
              require("nvim-silicon").file()
            end,
            "Save code screenshot as file",
          },
          ["c"] = {
            function()
              require("nvim-silicon").clip()
            end,
            "Copy code screenshot to clipboard",
          },
        },
      }, { prefix = "<leader>", mode = "v" })
    end,
    config = function()
      require("nvim-silicon").setup {
        font = "JetBrainsMono Nerd Font=34;Noto Color Emoji=34",
      }
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lint"
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
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
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "clangd",
        "typescript-language-server",
        "tailwindcss-language-server",
        "clang-format",
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "isort",
        "black",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "c",
        "cpp",
        "javascript",
        "typescript",
        "tsx",
      },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup {
        autotag = {
          enable = true,
          enable_rename = true,
          enable_close = true,
          enable_close_on_slash = true,
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "html",
          },
        },
      }
    end,
  },
}
