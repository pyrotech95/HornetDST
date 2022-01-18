local assets =
{
	Asset( "ANIM", "anim/hornet.zip" ),
	Asset( "ANIM", "anim/ghost_hornet_build.zip" ),
}

local skins =
{
	normal_skin = "hornet",
	ghost_skin = "ghost_hornet_build",
}

return CreatePrefabSkin("hornet_none",
{
	base_prefab = "hornet",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"HORNET", "CHARACTER", "BASE"},
	build_name_override = "hornet",
	rarity = "Character",
})
