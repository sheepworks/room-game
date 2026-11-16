local yesButton = script.Parent
local doorFrame = script.Parent.Parent
local player = game.Players.LocalPlayer
local character = player.Character
local doorSfx = game.Workspace["Door Open Sound"]
local morningBirdsSfx = game.Workspace["Morning Birds 8 (SFX)"]
local door2Active = game.Workspace["Room 2"].MainDoor2:WaitForChild("Top").ClickDetector
local doorActive = game.Workspace.MainRoom.MainDoor:WaitForChild("Top").ClickDetector
local frame = script.Parent.Parent.Parent.Parent.TextGui.TextFrame

local teleportRoom2 = game.Workspace["Room 2"].Teleport2

yesButton.MouseButton1Click:Connect(function()
	
	door2Active.MaxActivationDistance = 0
	frame.Transparency = 0
	doorFrame.Visible = false
	game.Workspace.selectFinal:Play()
	wait(1)
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = teleportRoom2.CFrame
	doorSfx:Play()
	wait(2)
	morningBirdsSfx.Volume = .2
	for i = 0, 1, 0.02 do
		wait(0.02)
		frame.Transparency = i
	end
	frame.Transparency = 1
	
	game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = 8
	doorActive.MaxActivationDistance = 5
	door2Active.MaxActivationDistance = 5
	
	
end)

