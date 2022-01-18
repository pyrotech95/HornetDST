PrefabFiles = {
	"hornet",
	"hornet_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/hornet.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/hornet.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/hornet.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/hornet.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/hornet_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/hornet_silho.xml" ),

    Asset( "IMAGE", "bigportraits/hornet.tex" ),
    Asset( "ATLAS", "bigportraits/hornet.xml" ),
	
	Asset( "IMAGE", "images/map_icons/hornet.tex" ),
	Asset( "ATLAS", "images/map_icons/hornet.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_hornet.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_hornet.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_hornet.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_hornet.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_hornet.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_hornet.xml" ),
	
	Asset( "IMAGE", "images/names_hornet.tex" ),
    Asset( "ATLAS", "images/names_hornet.xml" ),
	
	Asset( "IMAGE", "images/names_gold_hornet.tex" ),
    Asset( "ATLAS", "images/names_gold_hornet.xml" ),
}

AddMinimapAtlas("images/map_icons/hornet.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.hornet = "The Sentinel"
STRINGS.CHARACTER_NAMES.hornet = "Hornet"
STRINGS.CHARACTER_DESCRIPTIONS.hornet = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.hornet = "\"No shadow will haunt me...\""
STRINGS.CHARACTER_SURVIVABILITY.hornet = "Grim"

-- Custom speech strings
STRINGS.CHARACTERS.HORNET = require "speech_hornet"

-- The character's name as appears in-game 
STRINGS.NAMES.HORNET = "Hornet"
STRINGS.SKIN_NAMES.hornet_none = "Hornet"

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

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("hornet", "FEMALE", skin_modes)

--Recipe("hneedle1", {Ingredient("flint", 1), Ingredient("marble", 1), Ingredient("silk", 4)}, RECIPETABS.WAR, TECH.SCIENCE_ONE, nil, nil, nil, nil, "ishornet")
--Recipe("hneedle2", {Ingredient("flint", 1), Ingredient("marble", 2), Ingredient("silk", 6)}, RECIPETABS.WAR, TECH.SCIENCE_TWO, nil, nil, nil, nil, "ishornet")
--Recipe("hneedle3", {Ingredient("flint", 1), Ingredient("marble", 3), Ingredient("silk", 8)}, RECIPETABS.WAR, TECH.MAGIC_THREE, nil, nil, nil, nil, "ishornet")
