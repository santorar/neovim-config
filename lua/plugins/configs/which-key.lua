local wk = require("which-key")
local terminal = require('toggleterm.terminal').Terminal
local toggle_float  = function ()
    local float = terminal:new({direction = "float"})
    return float:toggle()
end
local toggle_lazygit  = function ()
    local lazygit = terminal:new({cmd = 'lazygit',direction = "float"})
    return lazygit:toggle()
end
local toggle_vertical  = function ()
    local vertical = terminal:new({direction = "vertical"})
    return vertical:toggle()
end
local mappings = {
    q = {
        name = "Quit",
        q = {"Close the current buffer"},
        w = {"Close and save the current buffer"},
        a = {":q!<CR>","Closes neovim"},
    },
    s = {
        name = 'Split',
        v = { "Vertical split"},
        h = { "Horizontal split"},
    },
    f = {
        name = "telescope",
        f = {":Telescope find_files<CR>", "find files"},
        g = {":Telescope live_grep<CR>", "find words"},
        r = {":Telescope frecency<CR>", "find files by frecency "},
        b = {":Telescope buffers<CR>", "find buffers"},
        o = {":Telescope oldfiles<CR>", "display recent opened files"},
        h = {":Telescope help_tags<CR>", "display help guides"},
        m = {":Telescope bookmarks<CR>", "display browser bookmarks"},
    },
    b = {
        name = "Buffers",
        t = {"Open a new buffer"},
        h = {"Open a new buffer horizontally"},
        v = {"Open a new buffer vertically"},
    },
    u = {
        name = "Update",
        u = {"Packer Sync"},
    },
    e = {
        name = "Edit",
        n = {":e /home/santorar/.config/nvim/init.lua<CR>","Edit nvim config"},
    },
    g = {
        name = "LSP",
        i = {":LspInfo<CR>","Connected Language Servers"},
        A = {":lua vim.lsp.buf.add_workspace_folder()<CR>","Add workspace folder"},
        R = {":lua vim.lsp.buf.remove_workspace_folder()<CR>","Remove workspace folder"},
        l = {":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>","List workspace folders"},
        D = {":lua vim.lsp.buf.type_definition()<CR>","Type definition"},
        r = {":lua vim.lsp.buf.rename()<CR>","Rename"},
        a = {":lua vim.lsp.buf.code_action()<CR>","Code actions"},
        e = {":lua vim.lsp.diagnostic.show_line_diagnostics()<CR>","Show line diagnostics"},
        q = {":lua vim.lsp.diagnostic.set_loclist()<CR>","Show loclist"},
    },
    h = {"Next buffer"},
    l = {"Prev buffer"},
    t = {
        name = "terminal",
        t = {":ToggleTerm<CR>","Toggle a horizontal terminal"},
        v = {toggle_vertical,"Toggle a vertical terminal"},
        f = {toggle_float,"Toggle a floating terminal"},
        g = {toggle_lazygit,"Toggle a terminal with lazy git"},
    },
    n = {"Open the Neotree"},
}
local opts = {
    prefix = "<Leader>",
}
wk.register(mappings, opts)
