-- Made by BluZaw [2020]

-- Instances:

local Player = game:GetService("Players").LocalPlayer 
local MainGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local GunNameBox = Instance.new("TextBox")
local GunNameDecoration = Instance.new("TextLabel")

--Properties:

MainGUI.Name = "MainGUI"
MainGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MainGUI.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainGUI
MainFrame.BackgroundColor3 = Color3.fromRGB(49, 31, 4)
MainFrame.BorderColor3 = Color3.fromRGB(69, 129, 167)
MainFrame.BorderSizePixel = 3
MainFrame.Position = UDim2.new(0.390545458, 0, 0.736543894, 0)
MainFrame.Selectable = true
MainFrame.Size = UDim2.new(0, 300, 0, 67)

GunNameBox.Name = "GunNameBox"
GunNameBox.Parent = MainFrame
GunNameBox.BackgroundColor3 = Color3.fromRGB(69, 129, 167)
GunNameBox.BorderSizePixel = 0
GunNameBox.Position = UDim2.new(0.295696974, 0, 0.139141485, 0)
GunNameBox.Size = UDim2.new(0, 200, 0, 50)
GunNameBox.Font = Enum.Font.Ubuntu
GunNameBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
GunNameBox.PlaceholderText = "Insert name"
GunNameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
GunNameBox.TextScaled = true
GunNameBox.TextSize = 14.000
GunNameBox.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
GunNameBox.TextWrapped = true

GunNameDecoration.Name = "GunNameDecoration"
GunNameDecoration.Parent = MainFrame
GunNameDecoration.Active = true
GunNameDecoration.BackgroundColor3 = Color3.fromRGB(69, 129, 167)
GunNameDecoration.BorderSizePixel = 0
GunNameDecoration.Position = UDim2.new(0.0323636867, 0, 0.13914147, 0)
GunNameDecoration.Size = UDim2.new(0, 68, 0, 50)
GunNameDecoration.Font = Enum.Font.Ubuntu
GunNameDecoration.Text = "Gun Name:"
GunNameDecoration.TextColor3 = Color3.fromRGB(255, 255, 255)
GunNameDecoration.TextScaled = true
GunNameDecoration.TextSize = 18.000
GunNameDecoration.TextWrapped = true

local frame = MainFrame
frame.Draggable = true
frame.Active = true
frame.Selectable = true

GunNameBox.FocusLost:Connect(function(enterPressed)
if enterPressed then 

local Gun = Player.Backpack:FindFirstChild(GunNameBox.Text)
local CurrentValuesFolder = Gun.CurrentValues -- Don't touch

-- No spread 
CurrentValuesFolder.Spread.Value = 0
CurrentValuesFolder.SpreadIncrease.Value = 0
CurrentValuesFolder.SpreadMax.Value = 0
CurrentValuesFolder.SpreadDecrease.Value = 0

-- Fast fire rate
CurrentValuesFolder.AttackSpeed.Value = 999

-- Experimental stuff
CurrentValuesFolder.Pierce.Value = 5
end
end)
