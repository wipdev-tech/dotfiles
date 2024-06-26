-- require('catppuccin').setup({
--     flavour = "mocha",
--     no_italic = true,
--     -- custom_highlights = function(colors)
--     --     return {
--     --         Normal = { bg = colors.crust }
--     --     }
--     -- end
-- })

require("gruvbox").setup({
    contrast = "hard",
    dim_inactive = false,
    italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
    },
})

vim.cmd.colorscheme "gruvbox"

require('lualine').setup({
    options = {
        disabled_filetypes = { 'NvimTree' },
        icons_enabled = true,
        theme = 'gruvbox_dark',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = {
            {
                'mode',
                cond = nil,            -- Condition function, the component is loaded when the function returns `true`.
                draw_empty = false,    -- Whether to draw component even if it's empty.
                padding = 1,           -- Adds padding to the left and right of components.
                fmt = function(str, _) -- Format function, formats the component's output.
                    return " " .. str
                end,
            }
        }
    }
})
