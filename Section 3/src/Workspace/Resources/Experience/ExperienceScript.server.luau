-- Required Modules
local resources = require(game.ReplicatedStorage.Shared["resource-module"])

-- Variables
local RunService = game:GetService("RunService")
local experiencePart = script.Parent
local experienceValue = experiencePart.ExperienceScript.ExperienceValue.Value

local ROTATE_SPEED = 4

-- Scripts
RunService.PostSimulation:Connect(function()
  experiencePart.CFrame *= CFrame.Angles(0, math.rad(ROTATE_SPEED), 0)
end)

-- Functions
local function spawnExperience()
  
end

local function onExperienceTouch(player: Player)
  resources.ExperiencePickup(player, experiencePart, experienceValue)
end

experiencePart.Touched:Connect(onExperienceTouch)
