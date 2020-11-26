local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")
local ConduitFilter = AdiBags:RegisterFilter("Conduits", 94)
ConduitFilter.uiName = "Conduits";
ConduitFilter.uiDesc = "Put Conduits in their own section."
local AnimaFilter = AdiBags:RegisterFilter("Anima", 94)
AnimaFilter.uiName = "Anima";
AnimaFilter.uiDesc = "Put Anima in their own section."



function ConduitFilter:Filter(slotData)
	local itemLink = GetContainerItemLink(slotData.bag, slotData.slot)
	if (itemLink) then
		local IsConduit = C_Soulbinds.IsItemConduitByItemInfo(itemLink)
		if (IsConduit) then
			return "Conduits";
		end
	end
end

function AnimaFilter:Filter(slotData)
	local itemLink = GetContainerItemLink(slotData.bag, slotData.slot)
	if (itemLink) then
		local IsAnima = C_Item.IsAnimaItemByID(itemLink)
		if (IsAnima) then
			return "Anima";
		end
	end
end