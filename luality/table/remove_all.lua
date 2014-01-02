-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local t = {} -- address 0xibot7v7
-- table.remove_all(t) -- t is empty now and has 0xibot7v7 address

-- removes all elements from current table
function table.remove_all(self)
  table.map(self, function (key, value) return nil end)
end

-- return
return table