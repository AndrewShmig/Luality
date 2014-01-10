-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local str = "Hello"
-- local new_str = Luality.String.map(str, function(index, char)
--    local ch_code = string.byte(char) + 1
--    
--    return string.char(ch_code)
-- end)
-- print(new_str) -- Ifmmp

-- returns a new string after applying function @fn to each character from @self
-- if @fn function returns nil than no character is added
local function map(self, fn)
  local new_str = ""
  
  for i = 1, #self do
    local ch = fn(i, string.sub(self, i, i))
    
    if ch ~= nil then
      new_str = new_str .. ch
    end
    
  end
  
  return new_str
end

-- return function
return map