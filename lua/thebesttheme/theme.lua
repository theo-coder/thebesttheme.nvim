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
            LineNr = { fg = "#66779966" }
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
    -- local function load_plugins()
    --     local plugins = {
    --
    --     }
    --     return plugins
    -- end
    --
    -- function theme.load_terminal()
    -- end

    -- return vim.tbl_deep_extend("error", load_syntax(), load_editor(), load_treesitter(), load_lsp(), load_plugins())
    return vim.tbl_deep_extend("error", load_syntax(), load_editor())
end

return theme
