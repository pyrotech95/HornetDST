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
		--name = "Health",
		--label = "Options for altering the balance of armours",
		--options =	{
		--{description = "much more", data = "Rebalanced"},
		--{description = "more", data = "Rebalanced"},
		--{description = "Default", data = "Traditional"},
		--{description = "less", data = "Rebalanced"},
		--{description = "much less", data = "Rebalanced"},
		--}
		--default = 100,
	--},
	--{
		--name = "Sanity",
		--label = "Options for altering the balance of armours",
		--options =	{
		--{description = "Traditional", data = "Traditional"},
		--{description = "Rebalanced", data = "Rebalanced"},
		--}
		--Default = 150
	--},
	--{
		--name = "Stomach",
		--label = "Options for altering the balance of armours",
		--options =	{
		--{description = "Traditional", data = "Traditional"},
		--{description = "Rebalanced", data = "Rebalanced"},
		--}
		--Default = 150
	--},
	--{
		--name = "Movespeed",
		--label = "Options for altering the balance of armours",
		--options =	{
		--{description = "Traditional", data = "Traditional"},
		--{description = "Rebalanced", data = "Rebalanced"},
		--}
		--Default = "",
	--},
	--{
		--name = "Hollow Knight Charm Intergration",
		--label = "Options for Allowing hornet to use charms from the Hollow Knight mod.",
		--options =	{
		--{description = "Enabled, crafting enabled", data = "crenabled"},
		--{description = "Enabled, crafting disabled", data = "enabled"},
		--{description = "Disabled", data = "disabled"},
		--}
		--Default = "enabled",
	--},
	--{
		--name = "Use custom font",
		--label = "Options for Allowing hornet to use charms from the Hollow Knight mod.",
		--options =	{
		--{description = "Enabled", data = "enabled"},
		--{description = "Disabled", data = "disabled"},
		--}
		--Default = "enabled",
	--},
--}
