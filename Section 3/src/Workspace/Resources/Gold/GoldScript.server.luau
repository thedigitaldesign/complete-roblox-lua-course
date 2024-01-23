-- Required Modules
local resources = require(game.ReplicatedStorage.Shared["resource-module"])

-- Variables
local RunService = game:GetService("RunService")
local goldPart = script.Parent
local goldValue = goldPart.GoldScript.GoldValue.Value

local ROTATE_SPEED = 4

-- Scripts
RunService.PostSimulation:Connect(function()
  goldPart.CFrame *= CFrame.Angles(math.rad(ROTATE_SPEED), math.rad(ROTATE_SPEED), 0)
end)

-- Functions
local function spawnGold()
  
end

local function onGoldTouch(player: Player)
  resources.GoldPickup(player, goldPart, goldValue)
end

goldPart.Touched:Connect(onGoldTouch)
