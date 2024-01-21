-- Touch Event --

local wallPart: Part = game.Workspace.WallPart
local moving: boolean = false

-- wallPart.Touched:Once(function(otherPart)
--   print("Touched Once!", otherPart)
--   wallPart.Transparency = 0
-- end)

-- wallPart.Touched:Connect(function(otherPart)
--   if not moving then
--     moving = not moving

--     for i = 1, 10, 1 do
--       task.wait(0.01)
--       wallPart.Position += Vector3.new(-1, 0, 0)
--     end

--     moving = false
--   end
-- end)
