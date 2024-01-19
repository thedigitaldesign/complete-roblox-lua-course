-- 06 Local variables --

x = 100 -- Global variable
local y = 50 -- Local variable

print("x is", x)
print("y is", y)

if x > 5 then
  z = 100
  print("z is", z)
end

print("z is", z)

if y > 5 then
  local a = 10 -- `a` is only visible inside this if statement
  print("a is", a)
end