-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- How to use?
--
-- local rstr = Luality.String.random_string(10, "0123456789") -- 0532716236

-- returns a random string composed of characters from @characters parameter and with @length length
local function random_string(length, characters)
  local result = ""
  
  math.randomseed(os.time())
  
  for i = 1,length do
    local random_index = math.random(1, #characters)
    result = result .. string.sub(characters, random_index, random_index)
  end
  
  return result
end

-- return function
return random_string