-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local str = "hello world!"
-- local prefix = "orld!"
-- print(Luality.String.ends_with(str, prefix)) -- true

-- returns true if string @self ends with @str, otherwise returns false
local function ends_with(self, str)
  local self_reversed = string.reverse(self)
  local str_reversed = string.reverse(str)
  
  return Luality.String.starts_with(self_reversed, str_reversed)
end

-- return function
return ends_with