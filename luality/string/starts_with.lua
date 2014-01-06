-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local str = "hello world!"
-- local prefix = "hella"
-- print(Luality.String.starts_with(str, prefix)) -- false

-- returns true if string @self starts with @str, otherwise returns false
local function starts_with(self, str)
  local self_length = string.len(self)
  local str_length = string.len(str)
  local min_length = (self_length < str_length) and self_length or str_length
  
  for i = 1,min_length do
    local ch1 = string.sub(self, i, i)
    local ch2 = string.sub(str, i, i)
    
    if ch1 ~= ch2 then
      return false
    end
  end
  
  return true
end

-- return function
return starts_with