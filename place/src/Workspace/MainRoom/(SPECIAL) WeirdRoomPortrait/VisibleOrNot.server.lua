local painting = script.Parent
game.Players.PlayerAdded:Connect(function(player)
	
	-- poor coding convention lololol!
	if player.UserId == 93872860 then
		print(player.DisplayName .. " exclusive painting has appeared!")
	else 
		painting:FindFirstChild("Part").Transparency = 1
		painting:FindFirstChild("Part2").Transparency = 1
		painting:FindFirstChild("Part3").Transparency = 1
		painting:FindFirstChild("Part4").Transparency = 1
		painting.thaiPainting.Transparency = 1
		painting.thaiPainting.Decal:Destroy()
		painting:FindFirstChild("Part").CanCollide = false
		painting:FindFirstChild("Part2").CanCollide = false
		painting:FindFirstChild("Part3").CanCollide = false
		painting:FindFirstChild("Part4").CanCollide = false
		painting.thaiPainting.CanCollide = false
		end	
	
end)