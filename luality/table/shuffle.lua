-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {"1", "2", "3", "4", "5"}
-- local new_t = Luality.Table.shuffle(t)
-- print(table.unpack(new_t)) -- 4	5	2	1	3

-- returns a shuffled array containing all elements from @self (@self should be an array, not a table)
local function shuffle(self)
  if not Luality.Table.is_array(self) then
    return self
  end
  
  local self_length = #self
  local indexes = {}
  for i = 1, self_length do
    indexes[i] = i
  end
  
  local shuffled_self = {}
  math.randomseed(os.time())
  for i = 1, #self do
    local index = math.random(1, #indexes)
    
    shuffled_self[#shuffled_self + 1] = self[indexes[index]]
    table.remove(indexes, index)
  end
  
  return shuffled_self
end

-- return
return shuffle