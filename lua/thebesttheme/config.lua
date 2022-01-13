local config = {}

local defaults = {
    theme = nil,
    borders = true,
    fade_nc = false,
    styles = {
        comments = "NONE",
        strings = "NONE",
        keywords = "NONE",
        functions = "NONE",
        variables = "NONE",
        diagnostics = "underline",
    },
    disable = {
        background = false,
        cursorline = false,
        eob_lines = true,
    },
    custom_highlights = {},
    custom_colors = {},
}

config.options = {}

function config.set_options(opts)
    config.options = vim.tbl_deep_extend("force", config.options, opts or {})
end

config.set_options(defaults)

return config
