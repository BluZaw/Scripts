--[[
 ____  _       ______              
 |  _ \| |     |___  /              
 | |_) | |_   _   / / __ ___      __
 |  _ <| | | | | / / / _` \ \ /\ / /
 | |_) | | |_| |/ /_| (_| |\ V  V / 
 |____/|_|\__,_/_____\__,_| \_/\_/  
  Animation Stealer by BluZaw#5188
 ]]--                                   

-- https://assetdelivery.roblox.com/v1/asset/?id=AnimIDHere | Replace AnimIDHere with the id of the animation

-- Instances:

local StealGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local StealID = Instance.new("TextButton")
local CopyToClipboard = Instance.new("TextButton")
local IDDisplayer = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")

-- Notification:
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Animation Grabber";
	Text = "Made by BluZaw";
	Icon = "rbxassetid://3703056618";
	Duration = 10;
})

--Properties:

StealGUI.Name = "StealGUI"
StealGUI.Parent = game.CoreGui
StealGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
MainFrame.Name = "MainFrame"
MainFrame.Parent = StealGUI
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.344727278, 0, 0.305555552, 0)
MainFrame.Size = UDim2.new(0.310545444, 0, 0.387426913, 0)
MainFrame.Draggable = true
MainFrame.Active = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(52, 46, 129)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 118, 49))}
UIGradient.Rotation = 90
UIGradient.Parent = MainFrame

StealID.Name = "StealID"
StealID.Parent = MainFrame
StealID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StealID.BackgroundTransparency = 0.300
StealID.BorderSizePixel = 0
StealID.Position = UDim2.new(0.392569005, 0, 0.711718023, 0)
StealID.Size = UDim2.new(0.210772827, 0, 0.0905660391, 0)
StealID.Font = Enum.Font.Ubuntu
StealID.Text = "Grab ID"
StealID.TextColor3 = Color3.fromRGB(0, 0, 0)
StealID.TextScaled = true
StealID.TextSize = 14.000
StealID.TextWrapped = true

CopyToClipboard.Name = "CopyToClipboard"
CopyToClipboard.Parent = MainFrame
CopyToClipboard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyToClipboard.BackgroundTransparency = 0.300
CopyToClipboard.BorderSizePixel = 0
CopyToClipboard.Position = UDim2.new(0.392569005, 0, 0.834343672, 0)
CopyToClipboard.Size = UDim2.new(0.210772827, 0, 0.0905660391, 0)
CopyToClipboard.Font = Enum.Font.Ubuntu
CopyToClipboard.Text = "Copy ID"
CopyToClipboard.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyToClipboard.TextScaled = true
CopyToClipboard.TextSize = 14.000
CopyToClipboard.TextWrapped = true

IDDisplayer.Name = "IDDisplayer"
IDDisplayer.Parent = MainFrame
IDDisplayer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IDDisplayer.BackgroundTransparency = 0.300
IDDisplayer.BorderSizePixel = 0
IDDisplayer.Position = UDim2.new(0.264975548, 0, 0.230004445, 0)
IDDisplayer.Size = UDim2.new(0.468384087, 0, 0.188679248, 0)
IDDisplayer.Font = Enum.Font.Ubuntu
IDDisplayer.Text = "ID will be displayed here"
IDDisplayer.TextColor3 = Color3.fromRGB(0, 0, 0)
IDDisplayer.TextScaled = true
IDDisplayer.TextSize = 14.000
IDDisplayer.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = MainFrame
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.264975488, 0, 0.494155347, 0)
Credits.Size = UDim2.new(0.468384087, 0, 0.113207549, 0)
Credits.Font = Enum.Font.Ubuntu
Credits.Text = "Made by BluZaw#5188"
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true

StealID.MouseButton1Down:Connect(function()
	if game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") ~= nil then
		for _,AnimaTrack in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
			IDDisplayer.Text = AnimaTrack.Animation.AnimationId
		end
	end
	StealID.Text = "Grabbed ID!"
	wait(1.5)
    StealID.Text = "Grab ID"	
end)

CopyToClipboard.MouseButton1Down:Connect(function()
	setclipboard(IDDisplayer.Text)
	CopyToClipboard.Text = "Copied ID!"
	wait(1.5)
	CopyToClipboard.Text = "Copy ID"
end)
