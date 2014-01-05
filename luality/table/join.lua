-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {6, 9, 0, 8}
-- print(Luality.Table.join(t, ",")) -- 6,9,0,8

-- returns a string which represents a concatenation of array values, separated with "sep" string
local function join(self, sep)
  if not Luality.Table.is_array(self) then
    return nil
  end
  
  local result = table.concat(self, sep)
  return result
end

-- return
return join