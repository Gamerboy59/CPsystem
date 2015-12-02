function Initialize(Plugin)

	dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")

	Plugin:SetName(g_PluginInfo.Name)
	Plugin:SetVersion(g_PluginInfo.Version)
	
	cPluginManager:AddHook(cPluginManager.HOOK_PLAYER_JOINED, OnPlayerJoined);

	RegisterPluginInfoCommands();
	
	-- RegisterPluginInfoConsoleCommands();
	
	localDir = "C:\\Users\\$user\\Desktop\\Cuberite\\Plugins\\CPS"
	
	prefixTag = cChatColor.Yellow..'[CPS]'

	LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end