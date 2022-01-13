-- Colorscheme name:            thebesttheme.nvim
-- Description:                 A Neovim theme representing The Best Theme from vscode
-- Author:                      Théo Posty
-- Website:                     https://github.com/theo-coder/thebesttheme.nvim

local config = require("thebesttheme.config")
local util = require("thebesttheme.util")

local thebesttheme = {}

function thebesttheme.setup(options)
    config.set_options(options)
    thebesttheme.load(true)
end

function thebesttheme.load(exec_autocmd)
    local colors = require("thebesttheme.colors").load()

    util.load(colors, exec_autocmd)
end

return thebesttheme
