-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t0 = {}
-- local t1 = {4, 5, 6, 7, 8}
-- local t2 = {[1] = 2, [2] = 4, [3] = 5, [4] = 8}
-- local t3 = {["hello"] = "world", ["why"] = 10, [1] = 7}
--
-- print(Luality.Table.is_array(t0)) -- true
-- print(Luality.Table.is_array(t1)) -- true
-- print(Luality.Table.is_array(t2)) -- true
-- print(Luality.Table.is_array(t3)) -- false


-- checks if self is an array and returns true or false
local function is_array(self)
  local ilength = 0
  local alength = Luality.Table.size(self)
  
  for _ in ipairs(self) do
    ilength = ilength + 1
  end
  
  return ilength == alength
end

-- return
return is_array