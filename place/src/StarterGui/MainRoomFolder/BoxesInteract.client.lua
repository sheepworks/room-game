local BoxesClicked = game.Workspace.MainRoom.StackedBoxes.ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local text = script.Parent.Parent.TextGui.TextFrame.Text

BoxesClicked.MouseClick:Connect(function()

	BoxesClicked.MaxActivationDistance = 0
	module.typewriterText(text, "Boxes.", 0.02, 1)
	module.typewriterText(text, "Not of much significance right now.", 0.03, 2)
	BoxesClicked.MaxActivationDistance = 5

end)
