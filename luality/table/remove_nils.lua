-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
-- 
-- local t = {1, nil, nil, 89}
-- local new_t = Luality.Table.remove_nils(t) -- {1, 89}
--
-- Won't work if table looks like this:
-- local t = {[1] = 2, [3] = 6, nil, nil, ["hello"] = 45}

-- returns a new array with nils removed (works only for arrays)
local new_table = {}

local function remove_nils(self)
  local count_args = select("#", table.unpack(self))
  
  if count_args ~= 0 then
    local first_arg = table.unpack(self)
    
    if first_arg ~= nil then
      new_table[#new_table + 1] = first_arg
    end
    
    Luality.Table.remove_nils(table.pack(select(2, table.unpack(self))))
  end
  
  return new_table
end

-- return
return remove_nils