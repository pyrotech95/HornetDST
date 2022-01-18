local assets=
{
    Asset("ANIM", "anim/hneedle2.zip"),
    Asset("ANIM", "anim/swap_hneedle2.zip"),
    Asset("ATLAS", "images/inventoryimages/hneedle2.xml"),
    Asset("IMAGE", "images/inventoryimages/hneedle2.tex"),
}

prefabs = {}

local function fn()

	local function OnEquip(inst, owner)
		owner.AnimState:OverrideSymbol("swap_object", "swap_hneedle2", "swap_hneedle2")
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
    
	MakeInventoryPhysics(inst)        
	--anim:SetBank("hneedle2")    
	--anim:SetBuild("hneedle2")    
	--anim:PlayAnimation("idle")    

	inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(45)
	inst.components.weapon.onattack = onattack

	inst:AddComponent("inspectable")        
	inst:AddComponent("inventoryitem")  
  
	inst.components.inventoryitem.imagename = "hneedle2"    
	inst.components.inventoryitem.atlasname = "images/inventoryimages/hneedle2.xml"  
	
	local function OnEquip(inst, owner)
		if owner:HasTag("ishornet") then
			owner.AnimState:OverrideSymbol("swap_object", "swap_hneedle2", "swap_hneedle2")
			owner.AnimState:Show("ARM_carry")
			owner.AnimState:Hide("ARM_normal")
			owner.components.talker:Say("Repaired, but not what it was.")
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

return instendreturn Prefab("common/inventory/hneedle2", fn, assets, prefabs)