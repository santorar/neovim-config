local if_nil = vim.F.if_nil

local default_header = {
    type = "text",
    val = {
        [[]],
        [[ ______   ________   ___   __    _________  ______   ______    ________   ______          ]],
        [[/_____/\ /_______/\ /__/\ /__/\ /________/\/_____/\ /_____/\  /_______/\ /_____/\         ]],
        [[\::::_\/_\::: _  \ \\::\_\\  \ \\__.::.__\/\:::_ \ \\:::_ \ \ \::: _  \ \\:::_ \ \        ]],
        [[ \:\/___/\\::(_)  \ \\:. `-\  \ \  \::\ \   \:\ \ \ \\:(_) ) )_\::(_)  \ \\:(_) ) )_      ]],
        [[  \_::._\:\\:: __  \ \\:. _    \ \  \::\ \   \:\ \ \ \\: __ `\ \\:: __  \ \\: __ `\ \     ]],
        [[    /____\:\\:.\ \  \ \\. \`-\  \ \  \::\ \   \:\_\ \ \\ \ `\ \ \\:.\ \  \ \\ \ `\ \ \    ]],
        [[    \_____\/ \__\/\__\/ \__\/ \__\/   \__\/    \_____\/ \_\/ \_\/ \__\/\__\/ \_\/ \_\/    ]],
        [[                      ___   __    __   __   ________  ___ __ __     ]],
        [[                     /__/\ /__/\ /_/\ /_/\ /_______/\/__//_//_/\    ]],
        [[                     \::\_\\  \ \\:\ \\ \ \\__.::._\/\::\| \| \ \   ]],
        [[                      \:. `-\  \ \\:\ \\ \ \  \::\ \  \:.      \ \  ]],
        [[                       \:. _    \ \\:\_/.:\ \ _\::\ \__\:.\-/\  \ \ ]],
        [[                        \. \`-\  \ \\ ..::/ //__\::\__/\\. \  \  \ \]],
        [[                         \__\/ \__\/ \___/_( \________\/ \__\/ \__\/]],
        [[]],
        [[]],
    },
    opts = {
        position = "center",
        hl = "Type",
        -- wrap = "overflow";
    },
}

local footer = {
    type = "text",
    val = "Enjoy your coding 😎",
    opts = {
        position = "center",
        hl = "Number",
    },
}

local leader = "SPC"

--- @param sc string
--- @param txt string
--- @param keybind string optional
--- @param keybind_opts table optional
local function button(sc, txt, keybind, keybind_opts)
    local sc_ = sc:gsub("%s", ""):gsub(leader, "<leader>")

    local opts = {
        position = "center",
        shortcut = sc,
        cursor = 5,
        width = 50,
        align_shortcut = "right",
        hl_shortcut = "Keyword",
    }
    if keybind then
        keybind_opts = if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
        opts.keymap = { "n", sc_, keybind, keybind_opts }
    end

    local function on_press()
        -- local key = vim.api.nvim_replace_termcodes(keybind .. "<Ignore>", true, false, true)
        local key = vim.api.nvim_replace_termcodes(sc_ .. "<Ignore>", true, false, true)
        vim.api.nvim_feedkeys(key, "t", false)
    end

    return {
        type = "button",
        val = txt,
        on_press = on_press,
        opts = opts,
    }
end

local buttons = {
    type = "group",
    val = {
        button("e", "  New file", ":ene <CR>"),
        button("SPC f f", "  Find file", ":Telescope find_files<CR>"),
        button("SPC f o", "  Recently opened files",":Telescope oldfiles<CR>"),
        button("SPC f r", "  Frecency/MRU",":Telescope frecency<CR>"),
        button("SPC f g", "  Find word",":Telescope live_grep<CR>"),
        button("SPC f m", "  Jump to bookmarks",":Telescope bookmarks<CR>"),
        button("SPC e n", "  Edit nvim config",":e /home/santorar/.config/nvim/init.lua<CR>"),
    },
    opts = {
        spacing = 1,
    },
}

local section = {
    header = default_header,
    buttons = buttons,
    footer = footer,
}

local config = {
    layout = {
        { type = "padding", val = 2 },
        section.header,
        { type = "padding", val = 2 },
        section.buttons,
        section.footer,
    },
    opts = {
        margin = 5,
    },
}

return {
    button = button,
    section = section,
    config = config,
    -- theme config
    leader = leader,
    -- deprecated
    opts = config,
}
