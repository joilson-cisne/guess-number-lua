local meta = {}
local SS = {} -- super string table

function SS.new(s)
  local superString = {}
  superString.s = s
  
  setmetatable(superString, meta)

  return superString
end

function SS.add(s1, s2)
  return s1.s .. s2.s
end

meta.__add = SS.add

firstName = SS.new('Bill')
lastName = SS.new('Gates')
print(firstName + lastName)

-- # The same thing as 'function SS.new(s)'
-- SS['new'] = function(s)
-- end