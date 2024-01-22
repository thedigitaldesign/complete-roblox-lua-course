-- Leaderboard or Leaderstats --

local player = game.Players

local function leaderboardSetup(player: Player)
  local stats = Instance.new("Folder")
  stats.Name = "leaderstats"
  stats.Parent = player

  local exp = Instance.new("IntValue")
  exp.Name = "Experience"
  exp.Value = 0
  exp.Parent = stats

  local gold = Instance.new("IntValue")
  gold.Name = "Gold"
  gold.Value = 10
  gold.Parent = stats
  
  -- local stats = Instance.new("Folder")
  -- stats.Name = "leaderstats"
  -- stats.Parent = player
  
  -- local experience = Instance.new("IntValue")
  -- experience.Name = "Experience"
  -- experience.Value = 0
  -- experience.Parent = stats
end

player.PlayerAdded:Connect(leaderboardSetup) -- Connects the function to the PlayerAdded event
