-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {1, 2, 3, 4}
-- local square_it = function (key, value)
--          return value * value  
--       end
-- Luality.Table.map(t, square_it)
-- print(table.unpack(t)) -- {1, 4, 9, 16}

-- calls function fn on each key-value pair from table self and sets new value for key
local function map(self, fn)
  local new_self = {}
  
  for key, value in pairs(self) do
    new_self[key] = fn(key, value)
  end
  
  return new_self
end

-- return
return map