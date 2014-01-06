-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = "hello world"
-- local res = Luality.String.filter(t, function(index, char)
--    local char_code = string.byte(char)
    
--    if char_code % 2 == 0 then
--      return true
--    else
--      return false
--    end
    
-- end)
-- print(res) -- "hll rld"

-- returns a new string, containing only chars for which @fn function returned true
local function filter(self, fn)
  local result = ""
  
  Luality.String.for_each(self, function(index, char)
      if fn(index, char) then
        result = result .. char
      end
  end)

  return result
end

-- return function
return filter