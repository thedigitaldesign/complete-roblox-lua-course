local experiencePart = script.Parent
local experienceValue = 1

local players = game.Players

local function spawnExperience()
  
end

local function onExperienceTouch(player: Player)
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

experiencePart.Touched:Connect(onExperienceTouch)
