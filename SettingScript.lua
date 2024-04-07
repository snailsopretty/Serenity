
local CurrentCamera = game.Workspace.CurrentCamera
local CameraPart = game.Workspace.CameraPart

--- Camera Tween ----------------------------------------------

local TS = game:GetService("TweenService")

local TI = TweenInfo.new(3)

local Target = {CFrame = CFrame.new(-35.063, 7.5, 50.924)}

local Active = TS:Create(CurrentCamera, TI, Target)

--- Button Tween ----------------------------------------------

local Play = script.Parent.Parent.Play
local Setting = script.Parent
local Donate = script.Parent.Parent.Donate
local Logo = script.Parent.Parent.Logo

local TI2 = TweenInfo.new(2)

local TargetAll = {TextTransparency = 1}

local ActivePlay = TS:Create(Play, TI2, TargetAll)
local ActiveSetting = TS:Create(Setting, TI2, TargetAll)
local ActiveDonate = TS:Create(Donate, TI2, TargetAll)
local ActiveLogo = TS:Create(Logo, TI2, TargetAll)

-- Close ------------------------------------------------------

local Close = script.Parent.Parent.SettingActive.Close
local Music = script.Parent.Parent.SettingActive.Music
local SFX = script.Parent.Parent.SettingActive.SFX

local TargetVisible = {TextTransparency = 0}

local ActiveClose = TS:Create(Close, TI2, TargetVisible)
local ActiveClose2 = TS:Create(Music, TI2, TargetVisible)
local ActiveClose3 = TS:Create(SFX, TI2, TargetVisible)

Setting.MouseButton1Click:Connect(function()

	Active:Play()
	ActiveClose:Play()
	ActiveClose2:Play()
	ActiveClose3:Play()
	
	Music.Interactable = true
	Close.Interactable = true
	SFX.Interactable = true

	-- Buttons ------------------------------------------------

	ActivePlay:Play()
	ActiveSetting:Play()
	ActiveDonate:Play()
	ActiveLogo:Play()

	Play.Interactable = false
	Setting.Interactable = false
	Donate.Interactable = false
	
end)