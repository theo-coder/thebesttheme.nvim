local theme = {}

function theme.highlights(colors, config)
    local function remove_background(group)
        group["bg"] = colors.none
    end

    local function load_syntax()
        local syntax = {
            Type = { fg = "#f0c36f" },
        }
        return syntax
    end

    local function load_editor()
        local editor = {
            LineNr = { fg = "#354050" },
            CursorLineNr = { fg = "#40709E" },
            Normal = { fg = colors.fg, bg = colors.bg },
            NormalNC = { bg = colors.bg },
        }
        return editor
    end

    -- local function load_treesitter()
    --     local treesitter = {
    --
    --     }
    --     return treesitter
    -- end
    --
    -- local function load_lsp()
    --     local lsp = {
    --
    --     }
    --     return lsp
    -- end
    --
    local function load_plugins()
        local plugins = {
            -- Indent Blankline
            IndentBlanklineChar = { fg = "#19232D", style = "nocombine" },
            IndentBlanklineContextChar = { fg = "#213445", style = "nocombine" },
        }
        return plugins
    end
    --
    -- function theme.load_terminal()
    -- end

    -- return vim.tbl_deep_extend("error", load_syntax(), load_editor(), load_treesitter(), load_lsp(), load_plugins())
    return vim.tbl_deep_extend("error", load_syntax(), load_editor(), load_plugins())
end

return theme
