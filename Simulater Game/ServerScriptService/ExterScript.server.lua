local BadgeService = game:GetService("BadgeService")

local function Badge(player)
	local BadgeId = -- Your BageId here
	if not BadgeService:UserHasBadgeAsync(player.UserId, BadgeId) then
		BadgeService:AwardBadge(player.UserId, BadgeId)
	end
end

game.Players.PlayerAdded:Connect(Badge)