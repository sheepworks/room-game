local backpackDetect = game.Workspace.MainRoom.Backpack.ClickDetector
local module = require(game.ReplicatedStorage.TextModule)
local laptopDetect = game.Workspace.MainRoom.Laptop.ClickDetector
local cubeDetect = game.Workspace.MainRoom.Cube.ClickDetector
local text = script.Parent.Parent.TextGui.TextFrame.Text
local journalPrompt = game.Workspace.MainRoom.Journal.ClickDetector
local bedPrompt = game.Workspace.MainRoom.Bed:WaitForChild("SleepPromptBed").ProximityPrompt

journalPrompt.MouseClick:Connect(function()

	bedPrompt.Enabled = false
	laptopDetect.MaxActivationDistance = 0
	cubeDetect.MaxActivationDistance = 0
	backpackDetect.MaxActivationDistance = 0
	journalPrompt.MaxActivationDistance = 0
	module.typewriterText(text, "My journal.", 0.02, .3)
	module.typewriterText(text, "I write my thoughts in this.", 0.03, .3)
	module.typewriterText(text, "...", 0.03, .05)
	module.typewriterText(text, "obviously.", 0.03, 1)
	backpackDetect.MaxActivationDistance = 5
	laptopDetect.MaxActivationDistance = 5
	cubeDetect.MaxActivationDistance = 5
	journalPrompt.MaxActivationDistance = 5
	bedPrompt.Enabled = true

end)