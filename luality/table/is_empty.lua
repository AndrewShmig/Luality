-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {1}
-- local empty = Luality.Table.is_empty(t) -- false
-- 
-- local t = nil
-- local empty = Luality.Table.is_empty(t) -- true
--
-- local t = {}
-- local empty = Luality.Table.is_empty(t) -- true

-- checks if table is empty, returns true or false
local function is_empty(self)
  return self == nil or next(self) == nil
end

-- return
return is_empty