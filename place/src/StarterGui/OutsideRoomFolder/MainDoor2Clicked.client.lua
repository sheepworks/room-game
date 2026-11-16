local doorDetector = game.Workspace["Room 2"].MainDoor2:WaitForChild("Top").ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local text = script.Parent.Parent.TextGui.TextFrame.Text

doorDetector.MouseClick:Connect(function()
	
	doorDetector.MaxActivationDistance = 0
	module.typewriterText(text, "I don't want to dwell in my room all day.", 0.02, 2)	
	doorDetector.MaxActivationDistance = 5
	
end)