local bathroomDoorProximity = game.Workspace["Room 2"].BathroomDoor:WaitForChild("Top").ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local frame = script.Parent.Parent.TextGui.TextFrame
local doorSfx = game.Workspace["Door Open Sound"]
local birdsSfx = game.Workspace["Morning Birds 8 (SFX)"]
local pressSfx = game.Workspace.selectFinal
local module = require(game.ReplicatedStorage.TextModule)
local bathroomTeleporter = game.Workspace.Bathroom.BathroomTeleporter
local text = script.Parent.Parent.TextGui.TextFrame.Text
local insideDoorProx = game.Workspace.Bathroom.BathroomDoor:WaitForChild("Top").ClickDetector

insideDoorProx.MaxActivationDistance = 0

bathroomDoorProximity.MouseClick:Connect(function()
	
	game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = 0
	bathroomDoorProximity.MaxActivationDistance = 0
	pressSfx:Play()
	frame.Transparency = 0
	wait(1)
	doorSfx:Play()
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = bathroomTeleporter.CFrame
	wait(2)
	birdsSfx.Volume = 0
	for i = 0, 1, 0.02 do
		wait(0.02)
		frame.Transparency = i
	end
	frame.Transparency = 1
	game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = 8
	insideDoorProx.MaxActivationDistance = 5
	
	
end)