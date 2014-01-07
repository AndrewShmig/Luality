-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- print(Luality.String.is_palindrome("ad")) -- false
-- print(Luality.String.is_palindrome("ada")) -- true

-- returns true if @self is a palindrome ( http://en.wikipedia.org/wiki/Palindrome )
local function is_palindrome(self)
  local reversed_self = string.reverse(self)
  return reversed_self == self
end

-- return function
return is_palindrome