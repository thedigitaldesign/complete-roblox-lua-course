-- 08 Loops --

-- for i = 1, 10, 1 do -- Start at 1 (x), end at 10, increment by 1
--   if(i % 2 == 0) then -- If i is divisible by 2
--     print(i.." is even")
--   else
--     print(i.." is odd")
--   end
-- end

local x = 3
while x <= 10 do
  x += 1
  print(x)

  if x == 5 then
    break
  end
end

repeat -- Do this at least once
  x += 1
until x == 10