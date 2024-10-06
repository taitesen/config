local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    json = { "prettierd" },
    python = { "isort", "black" },
    c_cpp = {"clang-format"},
    cpp = { "clang_format" },
    c = { "clang_format" },
  },

  formatters = {
    clang_format = {
      prepend_args = {
        "-styles={ \
        IndentWidth: 4, \
        TabWidth: 4, \
        UseTab: Never, \
        AccessModifierOffset: 0, \
        IndentAccessModifier: true, \
        PackConstructorInitializers: Never}",
      },
    },
  },

  format_on_save = {
    --   -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
