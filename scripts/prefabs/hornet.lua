local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}

--Hornet's stats. Static method incase I break something in the config
--TUNING.HORNET_HEALTH = 100
--TUNING.HORNET_HUNGER = 150
--TUNING.HORNET_SANITY = 150
--TUNING.HORNET_MOVESPEED = 1.25
--TUNING.HORNET_DAMAGEMULT = 1
--TUNING.HORNET_HUNGER_RATE = 1

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.HORNET = {
	"flint",
	"flint",
	"twigs",
	"twigs",
	"hneedle1",
}

local start_inv = {
	"hneedle1",
}

for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.HORNET
end

local prefabs = FlattenTree(start_inv, true)

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "hornet_speed_mod", TUNING.HORNET_MOVESPEED)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "hornet_speed_mod")
end

-- When loading or spawning the character
local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Battle sanity mechanics
local function onEndHornetComfort()

end

local function onApplyHornetComfort()

end

local function applyHornetComfortRange()

end

local function onHornetAttackEnemy()

end

local function onEnemyAttackHornet()

end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "hornet.tex" )
	
	--Tags the character as hornet
	inst:AddTag("ishornet")
	
	--Custom speech font
	inst.components.talker.font = TALKINGFONT_HORNET
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	
	-- Set starting inventory
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
	-- choose which sounds this character will play
	inst.soundsname = "willow"
	
	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.HORNET_HEALTH)
	inst.components.hunger:SetMax(TUNING.HORNET_HUNGER)
	inst.components.sanity:SetMax(TUNING.HORNET_SANITY)
	
	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = TUNING.HORNET_DAMAGEMULT
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	
end

return MakePlayerCharacter("hornet", prefabs, assets, common_postinit, master_postinit, start_inv)
