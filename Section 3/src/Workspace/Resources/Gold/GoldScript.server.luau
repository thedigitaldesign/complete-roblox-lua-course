local goldPart = script.Parent
local goldValue = 1

local players = game.Players

local function spawnGold()
  
end

local function onGoldTouch(player: Player)
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

goldPart.Touched:Connect(onGoldTouch)
