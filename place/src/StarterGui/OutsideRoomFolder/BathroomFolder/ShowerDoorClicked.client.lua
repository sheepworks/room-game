local showerDoorClicked = game.Workspace.Bathroom:WaitForChild("ShowerDoor").ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local text = script.Parent.Parent.Parent.TextGui.TextFrame.Text
local lightButton = game.Workspace.Bathroom.LightButton.Button.ClickDetector
local mirror = game.Workspace.Bathroom.SinkWindow.Top.ClickDetector
local door = game.Workspace.Bathroom.BathroomDoor.Top.ClickDetector

showerDoorClicked.MouseClick:Connect(function()
	
	door.MaxActivationDistance = 0
	mirror.MaxActivationDistance = 0
	showerDoorClicked.MaxActivationDistance = 0
	lightButton.MaxActivationDistance = 0
	module.typewriterText(text, "I take showers at night.", 0.01, .5)
	module.typewriterText(text, "I'm already clean!", 0.01, 1)
	showerDoorClicked.MaxActivationDistance = 5
	mirror.MaxActivationDistance = 5
	lightButton.MaxActivationDistance = 5
	door.MaxActivationDistance = 5
	
	
end)