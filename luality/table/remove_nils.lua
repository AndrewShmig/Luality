-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
-- 
-- local t = {1, nil, nil, 89}
-- local new_t = table.remove_nils(t) -- {1, 89}

-- Won't work if table looks like this:
--- local t = {[1] = 2, [3] = 6, nil, nil, ["hello"] = 45}

-- returns a new table with values for which fn function returned true
local table_without_nils = {}

function table.remove_nils(self)
  local count_args = select("#", table.unpack(self))
  
  if count_args ~= 0 then
    local first_arg = table.unpack(self)
    
    if first_arg ~= nil then
      table_without_nils[#table_without_nils + 1] = first_arg
    end
    
    table.remove_nils(table.pack(select(2, table.unpack(self))))
  end
  
  return table_without_nils
end

-- return
return table