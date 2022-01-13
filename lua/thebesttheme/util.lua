local theme = require("thebesttheme.theme")

local util = {}

function util.highlight(group, colors)
    local style = colors.style and "gui=" .. colors.style or "gui=NONE"
    local fg = colors.fg and "guifg=" .. colors.fg or "guifg=NONE"
    local bg = colors.fg and "guibg=" .. colors.bg or "guibg=NONE"
    local sp = colors.sp and "guisp=" .. colors.sp or ""

    local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

    vim.cmd(hl)
    if colors.link then
        vim.cmd("highlight! link " .. group .. " " .. colors.link)
    end
end

function util.load(colors, exec_autocmd)
    local config = require("thebesttheme.config").options

    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "thebesttheme"

    colors = vim.tbl_deep_extend("force", colors, config.custom_colors)
    local base_highlights = theme.highlights(colors, config)

    local highlights = vim.tbl_deep_extend("force", base_highlights, config.custom_highlights)

    for group, color in pairs(highlights) do
        util.highlight(group, color)
    end

    --theme.load_terminal()

    if exec_autocmd then
        vim.cmd("doautocmd ColorScheme")
    end
end

return util
