game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://15392071445"
	end)
end)