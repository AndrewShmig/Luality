-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local g = Luality.Math.is_prime(6) -- false
-- local f = Luality.Math.is_prime(11) -- true

-- returns true is @self is a prime number, otherwise returns false
local function is_prime(self)
  self = math.abs(self)
  
  if self == 0 or self == 1 then
    return false
  end
  
  if self ~= 2 and self % 2 == 0 then
    return false
  end
  
  local sqrt_self = math.sqrt(self)
  local divider = 3
  while divider <= sqrt_self do
    if self % divider == 0 then
      return false
    end
    
    divider = divider + 2
  end
  
  return true
end

-- return function
return is_prime