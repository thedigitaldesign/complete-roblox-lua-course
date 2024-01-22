print("Hello from ExperienceClickerScript.server.luau!!")

local detector: ClickDetector = script.Parent.ClickDetector

function onClick(player: Player)
  print("Clicked!", player)

  local leaderstats = player.leaderstats
  local expStats = leaderstats and leaderstats:FindFirstChild("Experience")
  local goldStats = leaderstats and leaderstats:FindFirstChild("Gold")

  if expStats and goldStats then
    print("Experience:", expStats.Value, "-- Gold:", goldStats.Value)
  else
    print("Experience or Gold not found!")
  end
end

detector.MouseClick:Connect(onClick)
