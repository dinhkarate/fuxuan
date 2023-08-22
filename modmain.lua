PrefabFiles = {
	"fuxuan",
	"fuxuan_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/fuxuan.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/fuxuan.xml" ),

    --Asset( "IMAGE", "images/selectscreen_portraits/fuxuan.tex" ),
    --Asset( "ATLAS", "images/selectscreen_portraits/fuxuan.xml" ),
	
    --Asset( "IMAGE", "images/selectscreen_portraits/fuxuan_silho.tex" ),
    --Asset( "ATLAS", "images/selectscreen_portraits/fuxuan_silho.xml" ),

    Asset( "IMAGE", "bigportraits/fuxuan.tex" ),
    Asset( "ATLAS", "bigportraits/fuxuan.xml" ),
	
	Asset( "IMAGE", "images/map_icons/fuxuan.tex" ),
	Asset( "ATLAS", "images/map_icons/fuxuan.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_fuxuan.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_fuxuan.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_fuxuan.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_fuxuan.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_fuxuan.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_fuxuan.xml" ),
	
	Asset( "IMAGE", "images/names_gold_fuxuan.tex" ),
    Asset( "ATLAS", "images/names_gold_fuxuan.xml" ),

}

AddMinimapAtlas("images/map_icons/fuxuan.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.fuxuan = "fuxuan"
STRINGS.CHARACTER_NAMES.fuxuan = "fuxuan"
STRINGS.CHARACTER_DESCRIPTIONS.fuxuan = "*Đời là bể khổ\n*Qua khổ là hết đời"
STRINGS.CHARACTER_QUOTES.fuxuan = "\"Cố gắng chăm chỉ sẽ thành công!\""
STRINGS.CHARACTER_SURVIVABILITY.fuxuan = "Slut"

-- Custom speech strings
STRINGS.CHARACTERS.fuxuan = require "speech_fuxuan"

-- The character's name as appears in-game 
STRINGS.NAMES.fuxuan = "fuxuan"
STRINGS.SKIN_NAMES.fuxuan_none = "fuxuan"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}


local function OnTaskTick(inst)
    if inst.components.health:IsDead() or inst:HasTag("playerghost") then
        return
    end
    if inst.components.sanity:GetPercent() < 1 then 
        return
    end
    local x, y, z = inst.Transform:GetWorldPosition()
    local ents = TheSim:FindEntities(x, y, z, 8, {"player"}, {"playerghost"})
    for i, v in ipairs(ents) do
        if v.components.health ~= nil and v.components.health:GetPercent() < 1 and not v.components.health:IsDead() then
            v.components.health:DoDelta(1, true, "fuxuan")
        end
    end
end


-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("fuxuan", "FEMALE", skin_modes)
