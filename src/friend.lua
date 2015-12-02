function HandleFriendCommand(Split, Player)
	if( #Split <= 2 ) and Player:HasPermission("cps.friend") then
		Player:SendMessageInfo("------------ [Craft-Planet System] ------------")
		Player:SendMessageInfo("Usage: "..Split[1].." <add|remove|status> [playername]")
	elseif Split[3] == "" and Player:HasPermission("cps.friend") then
		Player:SendMessagePrivateMsg("Testing")
	else
		Player:SendMessageFailure("Use /help")

	end
	-- Player:SendMessageSuccess("Item repaired")
	-- Player:SendMessageFailure("Please hold an item to repair")
	return true
end
function HandleFriendAddCommand(Split, Player)
	if ( #Split == 3 ) and Player:HasPermission("cps.friend.add") then
	local username = Player:GetUUID()
	local friendDir = localDir.."\\playerdata\\"..username
	if not cFile:IsFolder(friendDir) then
		os.execute("mkdir "..friendDir)
		return true
	end
	if not file_exists(friendDir.."\\friends.txt") then
		os.execute("type nul >"..friendDir.."\\friends.txt")
		return true
	end
	local friendusername = cMojangAPI:GetUUIDFromPlayerName(Split[3], true)
	if friendusername == "" or friendusername == nil then
		Player:SendMessageFailure("Invalid Playername")
		return true
	end
	local file = io.open(friendDir.."\\friends.txt", "a")
	file:write(friendusername.."\n")
	file:close()
	Player:SendMessageSuccess("Friend added. You can check with /friend [playername]")
	end
	return true
end
function HandleFriendRemoveCommand(Split, Player)
	local username = Player:GetUUID()
	local friendDir = localDir.."\\playerdata\\"..username
	if not file_exists(friendDir.."\\friends.txt") then
		Player:SendMessageFailure("You have no friends yet. Add some /friend add [playername]")
		return true
	end
	local friendusername = cMojangAPI:GetUUIDFromPlayerName(Split[3], true)
	local one, two = string.find(lines_all(friendDir.."\\friends.txt"), friendusername)
	if (one == nil and two == nil) or (one == "" and two == "") then
		Player:SendMessageFailure("Invalid Playername")
	end
	Player:SendMessageInfo("Found player: "..found)
	found:gsub("", "%1")
end


function file_exists(file)
	local f = io.open(file, "rb")
	if f then
		f:close()
		return true
	end
	return f ~= nil
end

function lines_from(file)
	if not file_exists(file) then return {} end
	lines = {}
	for line in io.lines(file) do 
		lines[#lines + 1] = line
	end
	return lines
end

function lines_all(file)
    local f = io.open(file, "rb")
    local content = f:read("*a")
    f:close()
    return content
end