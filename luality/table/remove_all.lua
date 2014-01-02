-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {1, 2, 3, 4, 5} -- t has address 0xibot7v7
-- table.remove_all(t) -- t is empty now and has 0xibot7v7 address

-- removes all elements from current table
local function remove_all(self)
  for key, _ in pairs(self) do
    self[key] = nil
  end
end

-- return
return remove_all