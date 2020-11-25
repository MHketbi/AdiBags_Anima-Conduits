local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")
local ConduitFilter = AdiBags:RegisterFilter("Conduits", 94)
ConduitFilter.uiName = "Conduits";
ConduitFilter.uiDesc = "Put Conduits in their own section."

function ConduitFilter:Filter(slotData)
	local itemLink = GetContainerItemLink(slotData.bag, slotData.slot)
	if (itemLink) then
		local IsItemConduitByItemInfo = IsItemConduitByItemInfo(itemLink)
		if (IsItemConduitByItemInfo) then
			return "Conduits";
		end
	end
end