local MSQ = LibStub and LibStub("Masque", true)
if not MSQ then
	return
end

-- Merchant Items
local MerchantGroup = MSQ:Group("Merchants", "Items")
for i = 1, 100 do
	local btn = _G["MerchantItem" .. i .. "ItemButton"]
	if not btn then
		break
	end

	if not btn.MasqueButtonData then
		btn.MasqueButtonData = {
			Button = btn,
			Icon = btn.icon or _G["MerchantItem" .. i .. "ItemButtonIconTexture"],
		}
		MerchantGroup:AddButton(btn, btn.MasqueButtonData, "Item")
	end
end

-- Merchant Buyback
local BuybackGroup = MSQ:Group("Merchants", "Buyback")
do
	local btn = MerchantBuyBackItemItemButton
	if btn and not btn.MasqueButtonData then
		btn.MasqueButtonData = {
			Button = btn,
			Icon = btn.icon or _G["MerchantBuyBackItemItemButtonIconTexture"],
		}
		BuybackGroup:AddButton(btn, btn.MasqueButtonData, "Item")
	end
end
