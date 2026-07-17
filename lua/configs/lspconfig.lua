require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "rust_analyzer", "tinymist", "zls" }

vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--background-index",           -- 后台建立索引
    "--suggest-missing-includes",    -- 提示缺少的头文件
    "--clang-tidy",                 -- 开启代码静态检查
    "--header-insertion=iwyu",      -- 自动导入头文件
    "--query-driver=/usr/bin/clang++,/usr/bin/g++" -- 指定编译器路径防止报错
  },
  init_options = {
    fallbackFlags = { "-std=c++20" } -- 单文件没有项目时默认使用的标准
  }
})

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
