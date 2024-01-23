local module = {}

local players: Players = game.Players

function module.GoldPickup(player: Player, goldPart: Part, goldValue: number) 
  local parent = player.Parent -- The parent of the player is the character
  local humanoid = parent:FindFirstChildWhichIsA("Humanoid")

  if humanoid then
    goldPart:Destroy()

    local player = players:GetPlayerFromCharacter(parent)
    local leaderstats = player.leaderstats
    local goldStats = leaderstats and leaderstats:FindFirstChild("Gold")

    if goldStats then
      goldStats.Value += goldValue
    end
  end
end

function module.ExperiencePickup(player: Player, experiencePart: Part, experienceValue: number)
  local parent = player.Parent -- The parent of the player is the character
  local humanoid = parent:FindFirstChildWhichIsA("Humanoid")

  if humanoid then
    experiencePart:Destroy()

    local player = players:GetPlayerFromCharacter(parent)
    local leaderstats = player.leaderstats
    local experienceStats = leaderstats and leaderstats:FindFirstChild("Experience")

    if experienceStats then
      experienceStats.Value += experienceValue
    end
  end
end

return module