name = "Hornet"
description = "A character template for Don't Starve Together."
author = "Pyrotech95 & The Deadly Cow"
version = "0.1.0" -- First number is major version, second number minor version. The third number represents bugfix versions

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = "/files/file/950-extended-sample-character/"

api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- The mod's tags displayed on the server list
server_filter_tags = {
"character",
}

--configuration_options =
--{
	--{
		--name = "HORNET_HEALTH",
		--label = "Hornet's health stat",
		--options = {
		--{description = "Masochism(50)", data = 50},
		--{description = "much less (70)", data = 70},
		--{description = "less (80)", data = 80},
		--{description = "Default (100)", data = 100},
		--{description = "more (120)", data = 120},
		--{description = "much more (150)", data = 150},
		--},
		--default = 100,
	--},
	--{
		--name = "HORNET_SANITY",
		--label = "Hornet's sanity stat",
		--options =	{
		--{description = "much more (200)", data = 200},
		--{description = "more (180)", data = 180},
		--{description = "Default (150)", data = 150},
		--{description = "less (120)", data = 120},
		--{description = "much less (100)", data = 100},
		--{description = "Masochism(80)", data = 80},
		--},
		--Default = 150,
	--},
	--{
		--name = "HORNET_HUNGER",
		--label = "Hornet's hunger stat",
		--options =	{
		--{description = "much more (200)", data = 200},
		--{description = "more (180)", data = 180},
		--{description = "Default (150)", data = 150},
		--{description = "less (120)", data = 120},
		--{description = "much less (100)", data = 100},
		--{description = "Masochism(80)", data = 80},
		--},
		--Default = 150,
	--},
	--{
		--name = "HORNET_MOVESPEED",
		--label = "How fast hornet moves",
		--options =	{
		--{description = "Traditional", data = "Traditional"},
		--{description = "Rebalanced", data = "Rebalanced"},
		--}
		--Default = 1,
	--},
	--{
		--name = "HORNET_CHARM",
		--label = "Options for Allowing hornet to use charms from the Hollow Knight mod (If present).",
		--options =	{
		--{description = "Enabled, crafting enabled", data = "crenabled"},
		--{description = "Enabled, crafting disabled", data = "enabled"},
		--{description = "Disabled", data = "disabled"},
		--},
		--Default = "enabled",
	--},
	--{
		--name = "HORNET_FONT",
		--label = "Option for enabling or disabling Hornet's custom font.",
		--options =	{
		--{description = "Enabled", data = "enabled"},
		--{description = "Disabled", data = "disabled"},
		--},
		--Default = "enabled",
	--},
--}
