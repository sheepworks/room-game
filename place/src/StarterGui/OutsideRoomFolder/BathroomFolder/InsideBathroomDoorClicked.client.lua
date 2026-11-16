local bathroomDoorProximity = game.Workspace.Bathroom.BathroomDoor:WaitForChild("Top").ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local text = script.Parent.Parent.Parent.TextGui.TextFrame.Text
local frame = script.Parent.Parent.Parent.TextGui.TextFrame
local doorSfx = game.Workspace["Door Open Sound"]
local pressSfx = game.Workspace.selectFinal
local bathroomTeleporter = game.Workspace["Room 2"].OutsideBathroomTeleporter
local outsideDoorProx = game.Workspace["Room 2"].BathroomDoor:WaitForChild("Top").ClickDetector
local lightPoint = game.Workspace.Bathroom.BathroomLight.Light.PointLight
local insideBathroomDoor = game.Workspace.Bathroom.BathroomDoor.Top.ClickDetector
local lightButton = game.Workspace.Bathroom.LightButton.Button.ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local text = script.Parent.Parent.Parent.TextGui.TextFrame.Text
local mirror = game.Workspace.Bathroom.SinkWindow.Top.ClickDetector
local birdSfx = game.Workspace["Morning Birds 8 (SFX)"]


bathroomDoorProximity.MouseClick:Connect(function()
	
	if lightPoint.Enabled == true then
		
		mirror.MaxActivationDistance = 0
		lightButton.MaxActivationDistance = 0
		insideBathroomDoor.MaxActivationDistance = 0
		module.typewriterText(text, "I'm not leaving with the lights on!", 0.02, 2)
		lightButton.MaxActivationDistance = 5
		insideBathroomDoor.MaxActivationDistance = 5
		mirror.MaxActivationDistance = 5
		
	else
		
		
		game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = 0
		lightButton.MaxActivationDistance = 0
		mirror.MaxActivationDistance = 0
		bathroomDoorProximity.MaxActivationDistance = 0
		pressSfx:Play()
		frame.Transparency = 0
		wait(1)
		doorSfx:Play()
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = bathroomTeleporter.CFrame
		wait(2)
		birdSfx.Volume = .1

		for i = 0, 1, 0.02 do
			wait(0.02)
			frame.Transparency = i
		end
		frame.Transparency = 1
		game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = 8
		outsideDoorProx.MaxActivationDistance = 5
		lightButton.MaxActivationDistance = 5
		mirror.MaxActivationDistance = 5
				
		
	end
	
end)