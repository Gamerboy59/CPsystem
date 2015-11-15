function OnPlayerJoined(a_Player)
	-- Send an example composite chat message to the player:
	a_Player:SendMessage(cCompositeChat()
		:AddTextPart("Hello, "..a_Player:GetName()..". Visit our WebSite at ")
		:AddUrlPart("Craft-Planet.eu", "http://craft-planet.eu", "u@2")  -- Colored underlined link
		:AddTextPart(". ", "@4")
		:AddSuggestCommandPart("You can request help at any time.", "/help", "u")       -- Underlined suggest-command
		:AddRunCommandPart(" SetDay", "/time set 0")                 -- Regular text that will execute command when clicked
		:SetMessageType(mtJoin)                                      -- It is a join-message
	)
end