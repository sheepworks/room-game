local noButton = script.Parent
local exitDoorFrame = script.Parent.Parent
local clickDetector = game.Workspace["Room 2"].ExitDoor:WaitForChild("Top").ClickDetector
local player = game.Players.LocalPlayer

noButton.MouseButton1Click:Connect(function()
	
	player.Character:WaitForChild("Humanoid").WalkSpeed = 8
	clickDetector.MaxActivationDistance = 5
	exitDoorFrame.Visible = false
	game.Workspace.selectFinal:Play()
	
end)