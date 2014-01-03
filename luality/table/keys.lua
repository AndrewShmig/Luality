-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {[1] = 4, [4] = 5, [5] = 9}
-- local t_keys = Luality.Table.keys(t) -- {1, 4, 5}

-- returns an array of table keys
local function keys(self)
  local keys = {}
  
  for k,_ in pairs(self) do
    keys[#keys + 1] = k
  end
  
  return keys
end

-- return
return keys