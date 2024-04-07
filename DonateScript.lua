local MplaceSer =  game:GetService("MarketplaceService")

local LPlayer = game.Players.LocalPlayer

local id = 1798548504

script.Parent.MouseButton1Click:Connect(function()
	MplaceSer:PromptGamePassPurchase(LPlayer, id)
end)