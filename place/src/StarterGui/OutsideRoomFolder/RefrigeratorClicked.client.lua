local refrig = game.Workspace["Room 2"].Refrigerator:WaitForChild("Top").ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local stove = game.Workspace["Room 2"].KitchenStove:WaitForChild("Top").ClickDetector
local microwave = game.Workspace["Room 2"].Microwave:WaitForChild("Top").ClickDetector
local text = script.Parent.Parent.TextGui.TextFrame.Text

refrig.MouseClick:Connect(function()
	
	refrig.MaxActivationDistance = 0
	stove.MaxActivationDistance = 0
	microwave.MaxActivationDistance = 0
	module.typewriterText(text, "My fridge.", 0.0001, .5)
	module.typewriterText(text, "...", 0.0001, .5)
	module.typewriterText(text, "I have no food.", 0.0001, .5)
	module.typewriterText(text, "Maybe I should go shopping later.", 0.001, 1)
	refrig.MaxActivationDistance = 5
	stove.MaxActivationDistance = 5
	microwave.MaxActivationDistance = 5
	
end)