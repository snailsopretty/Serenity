local TS = game:GetService("TweenService")

local Frame = script.Parent.Parent.Frame

local TI = TweenInfo.new(2)

local True = {BackgroundTransparency = 0}
local False = {BackgroundTransparency = 1}

local TrueActive = TS:Create(Frame, TI, True)
local FalseActive = TS:Create(Frame, TI, False)

script.Parent.MouseButton1Click:Connect(function()
	
	TrueActive:Play()

	wait(2)
	
	script.Parent.Parent.MouseIcon.Visible = true
	
	script.Parent.Interactable = false
	script.Parent.TextTransparency = 1
	script.Parent.Parent.Warning.TextTransparency = 1
	script.Parent.Parent.ConShadow.Visible = false
	script.Parent.Parent.WarningShadow.Visible = false
	
	game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	
	FalseActive:Play()
	
	local UserInputServies = game:GetService("UserInputService")
	UserInputServies.MouseIconEnabled = false
	
end)

script.Parent.MouseEnter:Connect(function()
script.Parent.Parent.Parent.SoundButton:Play()
end)