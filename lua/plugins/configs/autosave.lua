local autosave = require('autosave')
autosave.setup({
    enabled = true,
    on_off_comands = true,
    events = {"InsertLeave", "TextChanged"},
    debounce_delay = 1000,
    conditions = {
        filename_is_not = {".zshrc",},
        filetype_is_not = {"lua",},
        modifiable = true,
        exist = true,
    }
})
