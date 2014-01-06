-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = "hello"
-- local b = Luality.String.to_array(t) -- {"h", "e", "l", "l", "o"}
-- print(table.unpack(b))

-- returns an array of characters of passed @self string
local function to_array(self)
  local array = {}
  local self_length = #self
  
  for i = 1, self_length do
    array[#array + 1] = string.sub(self, i, i)
  end
  
  return array
end

-- return function
return to_array