

local CurrentCamera = game.Workspace.CurrentCamera
local CameraPart = game.Workspace.CameraPart

CurrentCamera.CameraType = Enum.CameraType.Scriptable
CurrentCamera.CFrame =  CameraPart.CFrame

--- Camera Tween ----------------------------------------------

local TS = game:GetService("TweenService")

local TI = TweenInfo.new(5)

local Target = {CFrame = CFrame.new(-35.063, 7.5, -24.276)}

local Active = TS:Create(CurrentCamera, TI, Target)

--- Button Tween ----------------------------------------------

local Play = script.Parent
local Setting = script.Parent.Parent.Setting
local Donate = script.Parent.Parent.Donate
local Logo = script.Parent.Parent.Logo

local TI2 = TweenInfo.new(2)

local TargetAll = {TextTransparency = 1}

local ActivePlay = TS:Create(Play, TI2, TargetAll)
local ActiveSetting = TS:Create(Setting, TI2, TargetAll)
local ActiveDonate = TS:Create(Donate, TI2, TargetAll)
local ActiveLogo = TS:Create(Logo, TI2, TargetAll)

--- Continue Tween --------------------------------------------

local Con = script.Parent.Parent.Continue.con
local Textwarning = script.Parent.Parent.Continue.Warning

local ConS = script.Parent.Parent.Continue.ConShadow
local TextwarningS = script.Parent.Parent.Continue.WarningShadow

local TargetCon = {TextTransparency = 0}

local ActiveCon = TS:Create(Con, TI2, TargetCon)
local ActiveWar = TS:Create(Textwarning, TI2, TargetCon)


Play.MouseButton1Click:Connect(function()
	
	Active:Play()
	
	-- Buttons ------------------------------------------------
	
	ActivePlay:Play()
	ActiveSetting:Play()
	ActiveDonate:Play()
	ActiveLogo:Play()
	
	Play.Interactable = false
	Setting.Interactable = false
	Donate.Interactable = false
	
	wait(1.5)
	
	-- Cotinue ------------------------------------------------
	
	ActiveCon:Play()
	ActiveWar:Play()
	Con.Interactable =  true
	
	ConS.Visible = true
	TextwarningS.Visible = true
	
	-- Shadows ------------------------------------------------
	
	script.Parent.Parent.Shadow1.ImageTransparency = 1
	script.Parent.Parent.Shadow2.ImageTransparency = 1
	script.Parent.Parent.Shadow3.ImageTransparency = 1
	
end)