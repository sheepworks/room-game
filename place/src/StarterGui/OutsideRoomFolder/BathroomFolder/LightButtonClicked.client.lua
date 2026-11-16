local lightButton = game.Workspace.Bathroom.LightButton:WaitForChild("Button").ClickDetector
local bathroomPointLight = game.Workspace.Bathroom.BathroomLight.Light.PointLight
local switchSfx = game.Workspace["Switch SFX"]
local bathroomLight = game.Workspace.Bathroom.BathroomLight.Light

lightButton.MouseClick:Connect(function()
	
	bathroomPointLight.Enabled = not bathroomPointLight.Enabled
	
	if bathroomPointLight.Enabled == true then
		switchSfx:Play()
		bathroomLight.Color = Color3.new(1, 1, 1)
	else
		switchSfx:Play()
		bathroomLight.Color = Color3.new(0, 0, 0)
	end
	
end)