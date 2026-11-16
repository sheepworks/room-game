local frame = script.Parent.Parent:WaitForChild("MainDoorGui").MainDoorFrame
local doorClick = game.Workspace.MainRoom.MainDoor:WaitForChild("Top").ClickDetector

doorClick.MouseClick:Connect(function(player)
	player.Character:WaitForChild("Humanoid").WalkSpeed = 0
	doorClick.MaxActivationDistance = 0
	game.Workspace.selectInital:Play()
	player.PlayerGui.MainDoorGui:WaitForChild("MainDoorFrame").Visible = true
end)