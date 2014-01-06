-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = "hello"
-- local b = Luality.String.to_array(t) -- {"h", "e", "l", "l", "o"}
-- print(table.unpack(b))

-- returns an array of characters of passed @self string
local function to_array(self)
  local array = {}
  
  Luality.Sting.for_each(self, function(index, char)
      array[#array + 1] = char
  end)

  return array
end

-- return function
return to_array