-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {1, 2, nil, 3}
-- local t_size = table.size(t) -- 3
--
-- local t = {["hello"] = 12, ["why"] = "he"}
-- local t_size = table.size(t) -- 2

-- returns table size, count of elements in table
function table.size(self)
  local length = 0
  
  for _ in pairs(self) do
    length = length + 1
  end
  
  return length
end

-- return
return table