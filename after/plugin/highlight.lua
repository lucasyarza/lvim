local util = require('user.colors.util')

local highlights = {
  ['@function.call'] = {italic = true},
  ['@keyword'] = {italic = true},
  ['@keyword.function'] = {italic = true},
}

for hlgroup, hlcolors in pairs(highlights) do
  util.modified_highlight(hlgroup, hlcolors)
end
