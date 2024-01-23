-- Required Modules


-- Variables
local players: Players = game.Players
local parent = players.Parent
local player: Player = players:GetPlayerFromCharacter(parent)

players.PlayerAdded:Connect(function(player: Player)
  player.CharacterAdded:Connect(function(character: Model)
    local trail = game.ServerStorage.Trail:Clone()
    trail.Parent = character

    task.wait(0.5)

    local attachment0 = Instance.new("Attachment", character.Head)
    attachment0.Name = "TrailAttachment0"

    local attachment1 = Instance.new("Attachment", character.LowerTorso)
    attachment1.Name = "TrailAttachment1"

    trail.Attachment0 = attachment0
    trail.Attachment1 = attachment1
  end)
end)

-- Scripts


-- Functions

