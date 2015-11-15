function HandleCPSHelpCommand(Split, Player)
	if( #Split <= 2 ) and Player:HasPermission("cps.help") then
		Player:SendMessageInfo("------------ [Craft-Planet System] ------------")
		Player:SendMessageInfo("Usage: "..Split[1].." help <page>")
		Player:SendMessageInfo("Usage: "..Split[1].." friend <add|remove|status> [playername]")
		Player:SendMessageInfo("Usage: "..Split[1].." party <invite|kick|status|members> [playername]")
		Player:SendMessageInfo("Usage: "..Split[1].." <show|set|give> [playername] [amount]")
		Player:SendMessageInfo("Usage: "..Split[1].." <show|set|give> [playername] [amount]")
	elseif Split[2] == "friend" and Player:HasPermission("cps.friend") then
		Player:SendMessagePrivateMsg("Testing")
	else
		Player:SendMessageFailure("Use /help")
	end
	-- Player:SendMessageSuccess("Item repaired")
	-- Player:SendMessageFailure("Please hold an item to repair")
	return true
end