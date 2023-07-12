--Way 1
game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder", player)
	leaderstats.Name = "leaderstats"

    local clicks = Instance.new("IntValue", leaderstats) -- You leaderstats here
    clicks.Name = "Clicks"
end)

--Way 2
local function onPlayerAdded(player)
    local leaderstats = Instance.new("Folder", player)
	leaderstats.Name = "leaderstats"

    local clicks = Instance.new("IntValue", leaderstats) -- You leaderstats here
    clicks.Name = "Clicks"
end


game.Players.PlayerAdded:Connect(onPlayerAdded)

--Way 3

local function onPlayerAdd(player)
    local leaderstats = Instance.new("Folder", player)
	leaderstats.Name = "leaderstats"

    local clicks = Instance.new("IntValue", leaderstats) -- You leaderstats here
    clicks.Name = "Clicks"
end

game.player.PlayerAdded:Connect(function(plr)
    onPlayerAdd(plr)
end)