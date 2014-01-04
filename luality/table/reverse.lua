-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
-- 
-- local t = {1, 2,3 , 4, 5}
-- local rt = Luality.Table.reverse(t) -- rt = {5, 4, 3, 2, 1}
-- Luality.Table.for_each(rt, print)

-- returns reversed array
local function reverse(self)
  if not Luality.Table.is_array(self) then
    return self
  end
  
  local new_self = {}
  local self_size = #self
  for i = self_size, 1, -1 do
    new_self[#new_self + 1] = self[i]
  end
  
  return new_self
end

-- return
return reverse