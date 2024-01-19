-- 05 If and Else --

gold = 100
toll = 69
grade = 65
location = "Home"
isCourseGood = true

-- if isCourseGood then
--   print("This course is good")
-- else
--   print("This course is bad")
-- end

if gold >= toll then
  print("You have enough gold")
  gold -= toll
  location = "Dungeon"
else
  print("You do not have enough gold")
end

print("You have "..gold.." gold")
print("You are at "..location)

if grade >= 90 then
  print("You got an A")
elseif grade >= 80 then
  print("You got a B")
elseif grade >= 70 then
  print("You got a C")
elseif grade >= 60 then
  print("You got a D")
else
  print("You got an F")
end

if gold <= 50 and location == "Dungeon" then
  print("You are poor and in the dungeon")
end
