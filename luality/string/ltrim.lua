-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local str = " \n\tSomething goes here..."
-- local new_str = Luality.String.ltrim(str) -- "Something goes here"
-- local new_str2 = Luality.String.ltrim(str, " \n\tS") -- "omething goes here"

-- returns a string from the beginning of which characters_to_remove were removed
-- if no characters_to_remove provided then standart characters are used - space (" "), new line ("\n"), tab ("\t")
local function ltrim(self, characters_to_remove)
  -- setting default characters to remove if none is provided
  local chars_to_be_removed
  if nil == characters_to_remove then
    chars_to_be_removed = " \n\t"
  else
    chars_to_be_removed = characters_to_remove
  end
  
  -- creating a set of characters needed to be removed
  local characters = {}
  for i = 1, #chars_to_be_removed do
    local ch = string.sub(chars_to_be_removed, i, i)
    characters[string.byte(ch)] = true -- any value is OK except nil
  end
  
  -- creating a new string filtering unneeded characters from left of the main string
  local result = ""
  local done = false
  
  for i = 1,#self do
    local ch = string.sub(self, i, i)
    
    if characters[string.byte(ch)] and not done then
    else
      done = true
      result = result .. ch
    end
  end
  
  -- returning results
  return result
end

-- return function
return ltrim