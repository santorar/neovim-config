require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "rust","html","css","javascript" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    auto_install = true,

    -- List of parsers to ignore installing (for "all")
    -- ignore_install = { "javascript" },

    highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    --
    additional_vim_regex_highlighting = true,
    },
    autotag = {
    enable = true,
    },
    rainbow = {
    enable = true,
    -- disable = {'language you want disabled'}
    extended_mode = true,
    max_file_lines = nil,
    },
    matchup = {
        enable = true,
        disable = { "" },
    },
}
