-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {[1] = 4, [4] = 5, [5] = 9}
-- local t_vals = Luality.Table.values(t) -- {4, 5, 9}

-- returns an array of table values
local function values(self)
  local vals = {}
  
  for _,v in pairs(self) do
    vals[#vals + 1] = v
  end
  
  return vals
end

-- return
return values