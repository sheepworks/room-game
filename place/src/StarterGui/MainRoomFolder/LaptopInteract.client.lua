local laptopClicked = game.Workspace.MainRoom.Laptop.ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local text = script.Parent.Parent.TextGui.TextFrame.Text
local cubeClicked = game.Workspace.MainRoom.Cube.ClickDetector
local drawerPrompt = game.Workspace.MainRoom.Drawer:WaitForChild("Top").ProximityPrompt
local backpackClicked = game.Workspace.MainRoom.Backpack.ClickDetector
local journalDetect = game.Workspace.MainRoom.Journal.ClickDetector

laptopClicked.MouseClick:Connect(function()
	
	backpackClicked.MaxActivationDistance = 0
	drawerPrompt.Enabled = false
	cubeClicked.MaxActivationDistance = 0
	laptopClicked.MaxActivationDistance = 0
	journalDetect.MaxActivationDistance = 0
	module.typewriterText(text, "I don't feel like using my laptop right now.", 0.03, .5)
	module.typewriterText(text, "My priority lies in touching grass for once.", 0.03, 1)
	laptopClicked.MaxActivationDistance = 5
	cubeClicked.MaxActivationDistance = 5
	drawerPrompt.Enabled = true
	backpackClicked.MaxActivationDistance = 5
	journalDetect.MaxActivationDistance = 5
	
end)
