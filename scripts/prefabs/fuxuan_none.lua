local assets =
{
	Asset( "ANIM", "anim/kemomimi.zip" ),
	Asset( "ANIM", "anim/ghost_kemomimi_build.zip" ),
}

local skins =
{
	normal_skin = "fuxuan",
	ghost_skin = "ghost_fuxuan_build",
}

return CreatePrefabSkin("fuxuan_none",
{
	base_prefab = "fuxuan",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"fuxuan", "CHARACTER", "BASE"},
	build_name_override = "fuxuan",
	rarity = "Character",
})