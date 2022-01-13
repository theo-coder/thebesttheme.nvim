local colors = require("thebesttheme.colors.thebesttheme")

local function load()
    local theme = require("thebesttheme.config").options.theme

    if not theme then
        theme = vim.o.background
    end

    return colors
end

return {load = load}
