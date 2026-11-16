local cubeClicked = game.Workspace.MainRoom.Cube.ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local text = script.Parent.Parent.TextGui.TextFrame.Text
local drawerPrompt = game.Workspace.MainRoom.Drawer:WaitForChild("Top").ProximityPrompt
local laptopClicked = game.Workspace.MainRoom.Laptop.ClickDetector
local backpackClicked = game.Workspace.MainRoom.Backpack.ClickDetector

cubeClicked.MouseClick:Connect(function()
	
	backpackClicked.MaxActivationDistance = 0
	laptopClicked.MaxActivationDistance = 0
	drawerPrompt.Enabled = false
	cubeClicked.MaxActivationDistance = 0
	module.typewriterText(text, "Mind cube.", 0.02, 1)
	cubeClicked.MaxActivationDistance = 5
	drawerPrompt.Enabled = true
	laptopClicked.MaxActivationDistance = 5
	backpackClicked.MaxActivationDistance = 5
	
end)

