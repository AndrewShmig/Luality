-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local s = "Hello world!"
-- local s_shuffled = Luality.String.shuffle(s)
-- print(s_shuffled) -- "Hw!deolllor "

-- returns a new string, which consists of all characters from @self string in random order
local function shuffle(self)
  local indexes = {}
  for i = 1, #self do
    indexes[i] = i
  end
  
  local shuffled_indexes = Luality.Table.shuffle(indexes)
  local shuffled_self = ""
  for i = 1, #self do
    shuffled_self = shuffled_self .. string.sub(self, shuffled_indexes[i], shuffled_indexes[i])
  end
  
  return shuffled_self
end

-- return function
return shuffle