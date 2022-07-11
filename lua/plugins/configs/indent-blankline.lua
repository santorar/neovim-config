vim.cmd [[highlight IndentBlanklineContextChar guifg=#807871 gui=nocombine]]
require("indent_blankline").setup({
    space_char_blankline = " ",
    show_current_context = true,
    char_context_list = {
        "IndentBlanklineContextChar",
    },
})
