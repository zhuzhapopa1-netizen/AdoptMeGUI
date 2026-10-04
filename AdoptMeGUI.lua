local Players = game:GetService("Players")

local player = Players.LocalPlayer

local GROUP_ID = 35243205
local GROUP_LINK = "https://www.roblox.com/share/g/35243205"

local gui = Instance.new("ScreenGui")
gui.Name = "AdoptMeGUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 420, 0, 220)
frame.Position = UDim2.new(0.5, -210, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BorderSizePixel = 0
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0, 50)
title.Position = UDim2.new(0, 10, 0, 10)
title.BackgroundTransparency = 1
title.Text = "ADOPT ME"
title.TextColor3 = Color3.fromRGB(80, 120, 200)
title.TextSize = 28
title.Font = Enum.Font.GothamBold
title.Parent = frame

local text = Instance.new("TextLabel")
text.Size = UDim2.new(1, -30, 0, 55)
text.Position = UDim2.new(0, 15, 0, 60)
text.BackgroundTransparency = 1
text.Text = "For this script to work you must join the group."
text.TextColor3 = Color3.fromRGB(50, 50, 50)
text.TextSize = 16
text.Font = Enum.Font.Gotham
text.TextWrapped = true
text.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -40, 0, 45)
button.Position = UDim2.new(0, 20, 0, 120)
button.BackgroundColor3 = Color3.fromRGB(120, 170, 255)
button.Text = "GROUP LINK"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 17
button.Font = Enum.Font.GothamBold
button.Parent = frame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)
buttonCorner.Parent = button

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -30, 0, 35)
status.Position = UDim2.new(0, 15, 0, 175)
status.BackgroundTransparency = 1
status.TextSize = 15
status.Font = Enum.Font.Gotham
status.Parent = frame

local success, isMember = pcall(function()
	return player:IsInGroup(GROUP_ID)
end)

if success and isMember then
	status.Text = "You are in the group!"
	status.TextColor3 = Color3.fromRGB(40, 170, 80)
else
	status.Text = "ERROR: User not in group"
	status.TextColor3 = Color3.fromRGB(220, 60, 60)
end

button.Activated:Connect(function()
	status.Text = GROUP_LINK
	status.TextColor3 = Color3.fromRGB(70, 100, 180)
end)
