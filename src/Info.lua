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
			},
		},
	},
}