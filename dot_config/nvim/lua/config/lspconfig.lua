local lspconfig = require("lspconfig")
local setup_auto_format = require("utils.lsp").setup_auto_format

setup_auto_format("dart")
setup_auto_format("rs")

setup_auto_format("cpp")
setup_auto_format("cc")
setup_auto_format("h")

setup_auto_format("js")
setup_auto_format("css")
setup_auto_format("tsx")
setup_auto_format("svelte")
setup_auto_format("ts")
setup_auto_format("py")
setup_auto_format("dart")
setup_auto_format("lua", "lua require('stylua-nvim').format_file()")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.clangd.setup({})
-- lspconfig.pylsp.setup({})

-----------------------
-- Lua
-----------------------
local luadev = require("lua-dev").setup({
  lspconfig = {
    cmd = { "lua-language-server" },
  },
  settings = {
    Lua = {
      workspace = {
        library = {
          ["/usr/share/nvim/runtime/lua"] = true,
          ["/usr/share/nvim/runtime/lua/lsp"] = true,
          ["/usr/share/awesome/lib"] = true,
        },
      },
    },
  },
})
require("lspconfig").sumneko_lua.setup(luadev)

vim.lsp.handlers["textDocument/codeAction"] =
  require("lsputil.codeAction").code_action_handler

-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config({
  virtual_text = true,
  virtual_lines = true,
})
