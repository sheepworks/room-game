local lightButton = game.Workspace["Room 2"].LightButton:WaitForChild("Button").ClickDetector
local lightBulb = game.Workspace["Room 2"].Room2Light
local lightBulbPoint = game.Workspace["Room 2"].Room2Light.PointLight
local switchSfx = game.Workspace["Switch SFX"]

lightButton.MouseClick:Connect(function()
	
	lightBulbPoint.Enabled = not lightBulbPoint.Enabled
	switchSfx:Play()
	
	if lightBulbPoint.Enabled == true then
		lightBulb.Color = Color3.new(1, 1, 1)
	else
		lightBulb.Color = Color3.new(99, 56, 27)
	end
	
end)