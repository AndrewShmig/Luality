-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local g = Luality.Math.gcd(10, 11) -- 1
-- local c = Luality.Math.gcd(10, 15) -- 5

-- returns greatest common divisor of two numbers
-- uses Euclid's algorithm ( http://en.wikipedia.org/wiki/Greatest_common_divisor#Using_Euclid.27s_algorithm )
local function gcd(self, b)
  if b == 0 then
    return self
  else
    return Luality.Math.gcd(b, self % b)
  end
end

-- return function
return gcd