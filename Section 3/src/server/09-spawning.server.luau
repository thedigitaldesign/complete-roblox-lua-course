-- Spawning Objects --

-- -- Create a new part and place it in the workspace
-- local newPart: Part = Instance.new("Part")

-- -- Change the properties of the part
-- newPart.Name = "A New Part"
-- newPart.Size = Vector3.new(5, 5, 5)
-- newPart.Position = Vector3.new(10, 0, 5)
-- newPart.Anchored = false

-- -- Add the part to the workspace
-- newPart.Parent = game.Workspace

-- local wallPart: Part = game.Workspace.WallPart

-- wallPart.Touched:Connect(function(otherPart)
--   -- Create a new part and place it in the workspace
--   local blobPart: Part = Instance.new("Part")
  
--   -- Change the properties of the part
--   blobPart.Name = "Touch Part"
--   blobPart.Size = Vector3.new(1, 1, 1)
--   blobPart.Position = newPart.Position
--   blobPart.Color = Color3.fromRGB(0, 0, 0)
--   blobPart.Material = Enum.Material.Neon

--   -- Add the part to the workspace
--   blobPart.Parent = game.Workspace

--   task.wait(1)
-- end)
