require("gooch.set")
require("gooch.remap")
require("gooch.lazy")
require("gooch.lsp")

vim.o.background = "dark" -- or "light" for light mode
require("gruvbox").setup({
    italic = {
        strings = false,
        comments = true,
        folds = false,
    },
})
vim.cmd([[colorscheme gruvbox]])
