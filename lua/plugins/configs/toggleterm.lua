require('toggleterm').setup{
    size = function(term)
    if term.direction == "horizontal" then
      return 10
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.3
    end
    end,
    open_mapping = [[<C-\>]],
    shade_filetypes = {},
    shade_terminals = {},
    shading_factor = 50,
    start_in_insert = true,
    persist_size = true,
    direction = "horizontal",
}
