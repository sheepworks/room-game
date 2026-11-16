local module = require(game.ReplicatedStorage.TextModule)
local prompt = game.Workspace.MainRoom.Mirror:WaitForChild("Glass").ProximityPrompt
local text = script.Parent.Parent.TextGui.TextFrame.Text
local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
local player = game.Players.LocalPlayer

prompt.Triggered:Connect(function(player)

	prompt.Enabled = false
	module.typewriterText(text, "Looking good " .. player.DisplayName .. "!", 0.02, 1)
	prompt.Enabled = true
	
end)