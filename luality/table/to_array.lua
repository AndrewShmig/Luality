-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {["hello"] = "me", [10] = "yes", [3] = 7}
-- local array_t = Luality.Table.to_array(t) -- {{"hello", "me"}, {10, "yes"}, {3, 7}}
-- Luality.Table.for_each(array_t, function(_, value)
--    print(table.unpack(value))
-- end)

-- returns an array of {key, value} values from passed table
local function to_array(self)
  local array = {}
  
  for k,v in pairs(self) do
    array[#array + 1] = {k, v}
  end
  
  return array
end

-- return
return to_array