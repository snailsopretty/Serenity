local CurrentCamera = game.Workspace.CurrentCamera
local CameraPart = game.Workspace.CameraPart

CurrentCamera.CameraType = Enum.CameraType.Scriptable
CurrentCamera.CFrame = CameraPart.CFrame

--- Tween -------------------------------------------------------

local TS = game:GetService("TweenService")

local TI = TweenInfo.new(2)

local Button1 = {CFrame  = CFrame.new(-35.063, 9, 19.224)}
local Button2 = {CFrame  = CFrame.new(-35.063, 7, 19.224)}
local Button3 = {CFrame  = CFrame.new(-35.063, 5, 19.224)}

local Button1Play = TS:Create(CurrentCamera, TI, Button1)
local Button2Play = TS:Create(CurrentCamera, TI, Button2)
local Button3Play = TS:Create(CurrentCamera, TI, Button3)

--- Local -------------------------------------------------------

local sound = script.Parent.SoundButton

--- Entre -------------------------------------------------------

script.Parent.Play.MouseEnter:Connect(function()
	Button1Play:Play()
	sound:Play()
	
end)

script.Parent.Setting.MouseEnter:Connect(function()
	Button2Play:Play()
	sound:Play()
	
end)

script.Parent.Donate.MouseEnter:Connect(function()
	Button3Play:Play()
	sound:Play()
	
end)