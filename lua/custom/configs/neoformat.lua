-- custom setting for clangformat
-- https=//jdhao.github.io/2020/04/19/nvim_cpp_and_c_completion/#code-formatting
vim.g.neoformat_cpp_clangformat = {
  exe = "clang-format",
  args = { '-style="{BasedOnStyle: llvm, IndentWidth: 4}"' },
}
vim.g.neoformat_c_clangformat = {
  exe = "clang-format",
  args = { '-style="{BasedOnStyle: llvm, IndentWidth: 4}"' },
}
vim.g.neoformat_enabled_cpp = { "clangformat" }
vim.g.neoformat_enabled_c = { "clangformat" }
vim.g.neoformat_enabled_python = { "autopep8" }
vim.g.neoformat_enabled_lua = { "stylua" }
vim.g.neoformat_enabled_rust = { "rustfmt" }

--run neoformat on save
--https=//github.com/sbdchd/neoformat/issues/134#issuecomment-347180213

vim.cmd[[
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
    ]]

