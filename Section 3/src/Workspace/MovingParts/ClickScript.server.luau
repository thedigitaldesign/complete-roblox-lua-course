print("Hello from Workspace > MovingPart > ClickScript.server.luau!!") 

local partLeft: Part = game.Workspace.MovingParts.ClickPartLeft
local partRight: Part = game.Workspace.MovingParts.ClickPartRight
local partHover: Part = game.Workspace.MovingParts.PartHover

local clickPartLeft: ClickDetector = partLeft.ClickDetector
local clickPartRight: ClickDetector = partRight.ClickDetector

function onClick(object: Part)
  partHover.Position = Vector3.new(object.Position.X, partHover.Position.Y, partHover.Position.Z)
end

clickPartLeft.MouseClick:Connect(function()
  onClick(partLeft)
end)

clickPartRight.MouseClick:Connect(function()
  onClick(partRight)
end)
