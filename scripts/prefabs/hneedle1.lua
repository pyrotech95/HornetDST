local assets=
{
    Asset("ANIM", "anim/hneedle1.zip"),
    Asset("ANIM", "anim/swap_hneedle1.zip"),
    Asset("ATLAS", "images/inventoryimages/hneedle1.xml"),
    Asset("IMAGE", "images/inventoryimages/hneedle1.tex"),
}

prefabs = {}

local function fn()

	local function OnEquip(inst, owner)
		owner.AnimState:OverrideSymbol("swap_object", "swap_hneedle1", "swap_hneedle1")
		owner.AnimState:Show("ARM_carry")
		owner.AnimState:Hide("ARM_normal")
	end   

	local function OnUnequip(inst, owner)        
		owner.AnimState:Hide("ARM_carry")        
		owner.AnimState:Show("ARM_normal")    
	end  
	
	local inst = CreateEntity()    
	local trans = inst.entity:AddTransform()    
	local anim = inst.entity:AddAnimState()    
	local sound = inst.entity:AddSoundEmitter()
	
	inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(30)
	inst.components.weapon.onattack = onattack
	
	inst:AddComponent("inspectable")        
	inst:AddComponent("inventoryitem")  
	
	inst.components.inventoryitem.imagename = "hneedle1"    
	inst.components.inventoryitem.atlasname = "images/inventoryimages/hneedle1.xml"     
	local function OnEquip(inst, owner)
		if owner:HasTag("ishornet") then
			owner.AnimState:OverrideSymbol("swap_object", "swap_hneedle1", "swap_hneedle1")
			owner.AnimState:Show("ARM_carry")
			owner.AnimState:Hide("ARM_normal")
			owner.components.talker:Say("Damaged, but still functional")
		else
            inst:DoTaskInTime(0, function()
                if owner and owner.components and owner.components.inventory then
                    owner.components.inventory:GiveItem(inst)
                    if owner.components.talker then
                        owner.components.talker:Say("This needle wasn't made for me, it's too difficult to use.")
                    end
                end
            end)
        end 
	end
	inst:AddComponent("equippable")    
	inst.components.equippable:SetOnEquip( OnEquip )    
	inst.components.equippable:SetOnUnequip( OnUnequip )    
end

return  Prefab("common/inventory/hneedle1", fn, assets, prefabs)