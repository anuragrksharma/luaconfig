local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,                                                     -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettierd.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  b.diagnostics.eslint_d,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  --python
  b.formatting.black,
  b.diagnostics.ruff,

  --go
  b.formatting.gofumpt,

  --rust
  b.formatting.rustfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function()
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        vim.lsp.buf.format { async = false }
      end,
    })
  end,
}
