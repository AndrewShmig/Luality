-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local str = "     Something goes here    \t\n"
-- local new_str = Luality.String.trim(str) -- "Something goes here"
-- local new_str2 = Luality.String.trim(str, " \n\te") -- "Something goes her"

-- returns a string from the end and the beginning of which characters_to_remove were removed
-- if no characters_to_remove provided then standart characters are used - space (" "), new line ("\n"), tab ("\t")
local function trim(self, characters_to_remove)
  local self_ltrim = Luality.String.ltrim(self, characters_to_remove)
  local result = Luality.String.rtrim(self_ltrim, characters_to_remove)
  
  return result
end

-- return function
return trim