local frame = script.Parent:WaitForChild("TextGui").TextFrame
local player = game.Players.LocalPlayer
local text = script.Parent:WaitForChild("TextGui").TextFrame.Text
local sleepPrompt = game.Workspace.MainRoom.Bed:WaitForChild("SleepPromptBed").ProximityPrompt
local laptopClick = game.Workspace.MainRoom.Laptop.ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local backgroundMusic = game.Workspace["Tropical Jazz"]
local logo = script.Parent.IntroCreditGui.SN_Logo

player.Character:WaitForChild("Humanoid").WalkSpeed = 0
player.Character:WaitForChild("Humanoid").JumpPower = 0
frame.Transparency = 0
text.TextTransparency = 0
sleepPrompt.Enabled = false
laptopClick.MaxActivationDistance = 0
player.CameraMinZoomDistance = 5

game.Workspace["Bed Movement 10 (SFX)"]:Play()

wait(5)
for i = 0, 1, 0.02 do
	wait(0.02)
	frame.Transparency = i
end
frame.Transparency = 1

wait(.5)


backgroundMusic:Play()
sleepPrompt.Enabled = true
laptopClick.MaxActivationDistance = 5
player.Character:WaitForChild("Humanoid").WalkSpeed = 8
player.Character:WaitForChild("Humanoid").JumpPower = 32







