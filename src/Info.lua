g_PluginInfo =
{
	Name = "CPS",
	Version = "1",
	Description = [[Craft-Planet.de System]],

	Commands =
	{
		["/cps"] =
		{
			Permission = "cps.global",
			HelpString = "Global command for CPS.",
			Handler = HandleCPSCommand,
			Alias = { "/cpsystem", "/craftplanet", },
			Category = "CPS",
			Subcommands =
			{
					help =
					{
						HelpString = "Help menu.",
						Permission = "cps.help",
						Handler = HandleCPSHelpCommand,
					},
					friend =
					{
						HelpString = "Global command for friends.",
						Permission = "cps.friend",
						Handler = HandleFriendCommand,
					},
			},
		},
		["/friend"] =
		{
			Permission = "cps.friend",
			HelpString = "Global command for friends.",
			Handler = HandleFriendCommand,
			Alias = { "/friends", },
			Category = "Friend",
			Subcommands =
			{
					add =
					{
						HelpString = "Add a friend.",
						Permission = "cps.friend.add",
						Handler = HandleFriendAddCommand,
					},
					remove =
					{
						HelpString = "Removes a friend.",
						Permission = "cps.friend.remove",
						Handler = HandleFriendRemoveCommand,
					},
					status =
					{
						HelpString = "Check if you're friends.",
						Permission = "cps.friend.status",
						Handler = HandleFriendStatusCommand,
					},
			},
		},
	},
}