-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- removes all elements from current table
function table:remove_all()
  for key, value in pairs(self) do
    self[key] = nil
  end
end

-- return
return table