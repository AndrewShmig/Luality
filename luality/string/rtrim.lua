-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local str = "Something goes here    \t\n"
-- local new_str = Luality.String.rtrim(str) -- "Something goes here"
-- local new_str2 = Luality.String.rtrim(str, " \n\te") -- "Something goes her"

-- returns a string from the end of which characters_to_remove were removed
-- if no characters_to_remove provided then standart characters are used - space (" "), new line ("\n"), tab ("\t")
local function rtrim(self, characters_to_remove)
  local reversed_string = string.reverse(self) 
  local trimmed_reversed_string = Luality.String.ltrim(reversed_string, characters_to_remove)
  local result = string.reverse(trimmed_reversed_string)
  
  return result
end

-- return function
return rtrim