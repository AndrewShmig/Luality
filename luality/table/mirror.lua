-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {["hello"] = 1, [4] = "me"}
-- local mirrored_t = Luality.Table.mirror(t) -- {[1] = "hello", ["me"] = 4}

-- return a new table which uses values as keys and vice versa
local function mirror(self)
  local new_table = {}
  
  for k, v in pairs(self) do
    new_table[v] = k
  end
  
  return new_table
end

-- return
return mirror