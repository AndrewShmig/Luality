-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = "hello world"
-- local res = ""
-- Luality.String.for_each(t, function(index, character)
--    local tmp = string.byte(character) + 1
--    res = res .. string.char(tmp)
-- end)
-- print(res) -- "ifmmp!xpsme"

-- calls @fn function for each character in @self string.
-- functino @fn receives index as its first argument and character as its second argument
local function for_each(self, fn)
  for i = 1, #self do
    fn(i, string.sub(self, i, i))
  end
end

-- return function
return for_each