local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local textGui = playerGui:WaitForChild("TextGui")
local frame = textGui:WaitForChild("TextFrame")
local room2 = Workspace:WaitForChild("Room 2")
local bathroomDoorProximity = room2:WaitForChild("BathroomDoor"):WaitForChild("Top"):WaitForChild("ClickDetector")
local bathroom = Workspace:WaitForChild("Bathroom")
local bathroomTeleporter = bathroom:WaitForChild("BathroomTeleporter")
local insideDoorProx = bathroom:WaitForChild("BathroomDoor"):WaitForChild("Top"):WaitForChild("ClickDetector")
local doorSfx = Workspace:WaitForChild("Door Open Sound")
local birdsSfx = Workspace:WaitForChild("Morning Birds 8 (SFX)")
local pressSfx = Workspace:WaitForChild("selectFinal")

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
