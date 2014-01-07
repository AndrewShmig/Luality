-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local g = Luality.Math.lcm(10, 15) -- 30
-- local d = Luality.Math.lcb(7, 11) -- 77

-- returns the least common multiple of two numbers @self and @b
-- Algorithm: http://en.wikipedia.org/wiki/Least_common_multiple#Computing_the_least_common_multiple
local function lcm(self, b)
  local result = (self * b) / Luality.Math.gcd(self, b)
  return result
end

-- return function
return lcm