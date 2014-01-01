-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- metatable
local mt = {}

-- definitions
local Stack = {}
mt.__index = Stack

-- functions
function Stack:new()
  local self = setmetatable({}, mt)
  return self
end

function Stack:push(...)
  for _, value in ipairs({...}) do    
    self[#self + 1] = value
  end
end

function Stack:pop()
  local top_value = self[#self]
  self[#self] = nil
  
  return top_value
end

function Stack:clear()
  table.remove_all(self)
end

function Stack:top()
  return self[#self]
end

function Stack:size()
  return #self
end

function Stack:is_empty()
  return #self == 0
end

function Stack:to_array()
	local array = {}
  
  for _, value in ipairs(self) do
    array[#array + 1] = value
  end
  
  return array
end

-- return
return Stack