-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
-- 
-- local t = {1, 2, 3, 4}
-- local fn = function (key, value)
--               return value%2 == 0 and true or false	 
--            end
-- local even = table.filter(t, fn)
-- print(table.unpack(even)) -- {nil, 2, nil, 4}

-- returns a new table with values for which fn function returned true
function table.filter(self, fn)
  local new_table = {}
  
  for key, value in pairs(self) do
    if fn(key, value) then
        new_table[key] = value
    end
  end
  
  return new_table
end

-- return
return table