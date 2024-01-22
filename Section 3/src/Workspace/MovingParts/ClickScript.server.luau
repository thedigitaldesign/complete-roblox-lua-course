local Players = game:GetService("Players")
print("Hello from Workspace > MovingPart > ClickScript.server.luau!!") 

local partLeft: Part = game.Workspace.MovingParts.ClickPartLeft
local partRight: Part = game.Workspace.MovingParts.ClickPartRight
local partHover: Part = game.Workspace.MovingParts.PartHover

local clickPartLeft: ClickDetector = partLeft.ClickDetector
local clickPartRight: ClickDetector = partRight.ClickDetector

function onClick(object: Part, player: Player)
  partHover.Position = Vector3.new(object.Position.X, partHover.Position.Y, partHover.Position.Z)
  
  local leaderstats = player.leaderstats
  local expStats = leaderstats and leaderstats:FindFirstChild("Experience")
  local goldStats = leaderstats and leaderstats:FindFirstChild("Gold")

  if expStats then
    expStats.Value += 1
  end

  if goldStats then
    goldStats.Value += 1
  end
end

clickPartLeft.MouseClick:Connect(function(player: Player)
  onClick(partLeft, player)
end)

clickPartRight.MouseClick:Connect(function(player: Player)
  onClick(partRight, player)
end)
