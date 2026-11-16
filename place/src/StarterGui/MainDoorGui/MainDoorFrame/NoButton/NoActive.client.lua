local noButton = script.Parent
local doorFrame = script.Parent.Parent
local clickDetector = game.Workspace.MainRoom.MainDoor:WaitForChild("Top").ClickDetector
local player = game.Players.LocalPlayer

noButton.MouseButton1Click:Connect(function()
	
	player.Character:WaitForChild("Humanoid").WalkSpeed = 8
	clickDetector.MaxActivationDistance = 5
	doorFrame.Visible = false
	game.Workspace.selectFinal:Play()
	
end)