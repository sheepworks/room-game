local module = {
	
	typewriterText = function(object, text, speed, waitTime)
		
		local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
		object.TextTransparency = 0
		
		humanoid.WalkSpeed = 0
		for i = 1, #text, 1 do
			object.Text = string.sub(text, 1, i)	
			game.Workspace["UnderTale - Text Sound(Fixed)"]:Play()
			wait(speed)
		end
		wait(waitTime)

		for i = 0, 1, 0.06 do
			wait(0.06)
			object.TextTransparency = i
		end
		
		object.TextTransparency = 1
		humanoid.WalkSpeed = 8
		
	end
	
}

return module