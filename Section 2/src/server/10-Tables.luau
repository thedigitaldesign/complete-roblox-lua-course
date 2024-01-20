-- 10 Tables --

-- Tables are a data structure that can hold multiple values
local days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"}

print (days[1]) -- Monday -- Indexing starts at 1



local person = {
  name = "John",
  age = 20,
  isMale = true,
  hobbies = {"Soccer", "Basketball", "Programming"}
}

print(
  person.name
  , "is"
  , person.age
  , "years old and likes"
  , person.hobbies[3]
) -- John

-- for key, value in pairs(person) do -- pairs() returns the key and value of each item in the table
--   print(key, value)
-- end

table.insert(days, 8, "Funday") -- Adds an item to the end of the table

for i = 1, #days, 1 do -- #days is the length of the table
  print(days[i])
end