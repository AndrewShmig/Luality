-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local used = Luality.Table.fill(false, 3) -- {false, false, false}

-- returns newly created array filled with "values" "count" times
local function fill(value, count)
  local array = {}
  
  for i = 1, 10 do
    array[#array + 1] = value
  end
  
  return array
end

-- return
return fill