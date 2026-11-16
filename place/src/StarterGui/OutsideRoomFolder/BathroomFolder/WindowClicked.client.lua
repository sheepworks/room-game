local bathroomWindowClicked = game.Workspace.Bathroom.SinkWindow:WaitForChild("Top").ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local text = script.Parent.Parent.Parent.TextGui.TextFrame.Text
local showerDoor = game.Workspace.Bathroom.ShowerDoor.ClickDetector
local door = game.Workspace.Bathroom.BathroomDoor.Top.ClickDetector

bathroomWindowClicked.MouseClick:Connect(function()
	
	door.MaxActivationDistance = 0
	bathroomWindowClicked.MaxActivationDistance = 0
	showerDoor.MaxActivationDistance = 0
	module.typewriterText(text, "Woah...", 0.04, .5)
	module.typewriterText(text, "Bathroom mirror!", 0.01, .5)
	bathroomWindowClicked.MaxActivationDistance = 5
	showerDoor.MaxActivationDistance = 5
	door.MaxActivationDistance = 5
	
end)