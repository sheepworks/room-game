local drawerPrompt = game.Workspace.MainRoom.Drawer:WaitForChild("Top").ProximityPrompt
local module = require(game.ReplicatedStorage.TextModule)
local text = script.Parent.Parent.TextGui.TextFrame.Text
local cubeDetector = game.Workspace.MainRoom.Cube.ClickDetector
local laptopDetector = game.Workspace.MainRoom.Backpack.ClickDetector

drawerPrompt.Triggered:Connect(function()
	
	laptopDetector.MaxActivationDistance = 0
	cubeDetector.MaxActivationDistance = 0
	drawerPrompt.Enabled = false
	module.typewriterText(text, "Pants and miscellaneous stuff go here.", 0.03, 2)
	drawerPrompt.Enabled = true
	cubeDetector.MaxActivationDistance = 5
	laptopDetector.MaxActivationDistance = 5
	
end)