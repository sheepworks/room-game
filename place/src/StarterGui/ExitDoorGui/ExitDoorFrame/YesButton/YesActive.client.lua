local yesButton = script.Parent
local exitDoorFrame = script.Parent.Parent
local player = game.Players.LocalPlayer
local character = player.Character
local selectSfx = game.Workspace.selectFinal
local frame = script.Parent.Parent.Parent.Parent.TextGui.TextFrame
local finalSfx = game.Workspace.selectFinal
local text = script.Parent.Parent.Parent.Parent.TextGui.TextFrame.Text
local module = require(game.ReplicatedStorage.TextModule)
local teleportService = game:GetService("TeleportService")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local door = game.Workspace.Hallway.HallwayExitDoor:WaitForChild("Top").ClickDetector
local bedMovementSfx = game.Workspace["Bed Movement 10 (SFX)"]
local RealityMainRoomTeleporter = game.Workspace["(REALITY) MainRoom"].RealityMainRoomTeleporter
local camera = game.Workspace.Camera
local nightTimeAmbienceSFX = game.Workspace["Night Time Ambience"]
local scatteredPapersClick = game.Workspace["(REALITY) MainRoom"].ScatteredPapers.ClickDetector
local bedPrompt = game.Workspace["(REALITY) MainRoom"].Bed.SleepPromptBed.ProximityPrompt

yesButton.MouseButton1Click:Connect(function()
	
	--[[ A cutscene will occur in this
	area of the script. ]]--
	
	selectSfx:Play()
	player.CameraMode = Enum.CameraMode.LockFirstPerson
	character.Humanoid.WalkSpeed = 0
	character.Humanoid.JumpPower = 0
	exitDoorFrame.Visible = false
	bedPrompt.Enabled = false
	scatteredPapersClick.MaxActivationDistance = 0
	frame.Transparency = 0
	door.MaxActivationDistance = 0
	wait(1)
	bedMovementSfx:Play()
	nightTimeAmbienceSFX:Play()
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = RealityMainRoomTeleporter.CFrame
	wait(2.5)
	for i = 0, 1, 0.02 do
		wait(0.02)
		frame.Transparency = i
	end
	frame.Transparency = 1
	text.TextColor3 = Color3.new(1, 1, 1)
	wait(2.5)
	module.typewriterText(text, "I need...", 0.2, 2)
	module.typewriterText(text, "to use the bathroom.", 0.1, 2)
	character.HumanoidRootPart.Running.PlaybackSpeed = .5
	character.Humanoid.WalkSpeed = 5
	scatteredPapersClick.MaxActivationDistance = 5
	bedPrompt.Enabled = true
	
end)

