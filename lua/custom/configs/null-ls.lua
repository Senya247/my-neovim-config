local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  b.formatting.stylua,
  b.formatting.clang_format.with { extra_args = { "-style={BasedOnStyle: LLVM, IndentWidth: 4}" } },
  b.formatting.rustfmt,
  b.formatting.fixjson,

  b.diagnostics.cppcheck,

  b.code_actions.shellcheck,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
