return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#332B3B",
                bg_dark = "#332B3B",
                bg_highlight = "#736581",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#CCC2B3",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#CCC2B3",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#736581",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#C2A3A3",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#C3A2A2",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#CDBA98",
                -- green: Comments, strings, success states, git additions
                green = "#A8BDAF",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#98CBCD",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#AC98CD",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#CD98C2",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#CD98C2",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
