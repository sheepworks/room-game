local exitDoor = game.Workspace["Room 2"].ExitDoor:WaitForChild("Top").ClickDetector
local exitFrame = script.Parent.Parent.ExitDoorGui.ExitDoorFrame
local player = game.Players.LocalPlayer
local selectSfx = game.Workspace.selectInital
local roomLightPoint = game.Workspace["Room 2"].Room2Light.PointLight
local text = script.Parent.Parent.TextGui.TextFrame.Text
local module = require(game.ReplicatedStorage.TextModule)

exitDoor.MouseClick:Connect(function()
	
	
	if roomLightPoint.Enabled == true then
		exitDoor.MaxActivationDistance = 0
		module.typewriterText(text, "Can't leave the house with the lights on!", 0.02, 2)
		exitDoor.MaxActivationDistance = 5
	else
		exitDoor.MaxActivationDistance = 0
		selectSfx:Play()
		player.Character:FindFirstChild("Humanoid").WalkSpeed = 0
		exitFrame.Visible = true
	end
end)