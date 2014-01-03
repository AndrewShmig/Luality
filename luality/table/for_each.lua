-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {1, 2, 3}
-- Luality.Table.for_each(t, print)
--
-- Luality.Table.for_each(t, function(key, value)
--    print(value .. " " .. (value * value))    
-- end)

-- iterates over the table and calls fn function with key-value params
local function for_each(self, fn)
  for key, value in pairs(self) do
    fn(key, value)
  end
end

-- return
return for_each