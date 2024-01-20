local test = "hello there, I am saying hello there"
-- print(test)

-- print("Length of string: " .. #test) -- #test is the length of the string

local length = string.len(test) -- string.len is the same as #test
local newTest = string.gsub(test, "hello", "howdy") -- string.gsub replaces all instances of the first string with the second string

-- print(newTest)

local finding = string.find(test, "hello") -- string.find finds the first instance of the string and returns the index of the first character
