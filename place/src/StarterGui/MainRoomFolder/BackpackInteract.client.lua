local backpackPrompt = game.Workspace.MainRoom.Backpack.ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local laptopDetect = game.Workspace.MainRoom.Laptop.ClickDetector
local cubeDetect = game.Workspace.MainRoom.Cube.ClickDetector
local text = script.Parent.Parent.TextGui.TextFrame.Text

backpackPrompt.MouseClick:Connect(function()
	
	laptopDetect.MaxActivationDistance = 0
	cubeDetect.MaxActivationDistance = 0
	backpackPrompt.MaxActivationDistance = 0
	module.typewriterText(text, "My backpack.", 0.02, .3)
	module.typewriterText(text, "I'm on summer break, so no school for now.", 0.03, 2)
	backpackPrompt.MaxActivationDistance = 5
	laptopDetect.MaxActivationDistance = 5
	cubeDetect.MaxActivationDistance = 5
	
end)