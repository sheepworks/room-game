local bedPrompt = game.Workspace.MainRoom.Bed:WaitForChild("SleepPromptBed").ProximityPrompt
local module = require(game.ReplicatedStorage.TextModule)
local text = script.Parent.Parent.TextGui.TextFrame.Text
local journalDetect = game.Workspace.MainRoom.Journal.ClickDetector

bedPrompt.Triggered:Connect(function()
	
	journalDetect.MaxActivationDistance = 0
	bedPrompt.Enabled = false
	module.typewriterText(text, "I just woke up.", 0.03, 2)
	bedPrompt.Enabled = true
	journalDetect.MaxActivationDistance = 5
	
end)