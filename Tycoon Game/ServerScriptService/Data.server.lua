local DataStoreService = game:GetService("DataStoreService")

local myDataStore = DataStoreService:GetDataStore("myDataStore")

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local coins = Instance.new("IntValue")
	coins.Name = "Coins"
	coins.Parent = leaderstats

	local data
	local success, errormessage = pcall(function()
		data = myDataStore:GetAsync(player.UserId.."-coins")
	end)

	if success then
		Coins.Value = data
	else
		print("There was a error whilst getting your data")
		warn(errormessage)
	end
end)

game.Players.PlayerRemoving:Connect(function(player)

	local success, errormessage = pcall(function()
		myDataStore:SetAsync(player.UserId.."-clicks", player.leaderstats.Coins.Value)
	end)

	if success then
		print("Player Data Successfully saved!")
	else
		print("There Was an error when saveing data")
		warn(errormessage)
	end

end)