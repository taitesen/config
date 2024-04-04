local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    jason = { "prettierd" },
    yaml = { "prettierd" },
    markdown = { "prettierd" },
    graphql = { "prettierd" },
    liquid = { "prettierd" },
    python = { "isrot", "black" },
  },

  format_on_save = {
    --   -- These options will be passed to conform.format()
    async = false,
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
