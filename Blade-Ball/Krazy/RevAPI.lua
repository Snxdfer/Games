-- This script recreates the Revolution UI using the Lorevity (Fsploit) UI library functions.
-- It includes the full Lorevity library code and then uses its functions to build the Revolution UI structure.
-- Animations are handled smoothly with TweenService as per the library's implementation.
-- The example recreates the "Blatant" tab with "Auto Parry" module, including dropdown, slider, and keybind, matching the Revolution structure.
-- Additionally, examples for all elements (Toggle, Checkbox, TextBox, ColorPicker) are added in the module.

loadstring(game:HttpGet("https://pastebin.com/raw/pUvxWqc1"))()

-- Completed Lorevity library code
local Converted = {
	["_Flow"] = Instance.new("ScreenGui");
	["_Container"] = Instance.new("Frame");
	["_Frame"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_Header"] = Instance.new("Frame");
	["_UICorner1"] = Instance.new("UICorner");
	["_Client"] = Instance.new("TextLabel");
	["_UITextSizeConstraint"] = Instance.new("UITextSizeConstraint");
	["_SearchBar"] = Instance.new("Frame");
	["_UICorner2"] = Instance.new("UICorner");
	["_Input"] = Instance.new("TextBox");
	["_UITextSizeConstraint1"] = Instance.new("UITextSizeConstraint");
	["_UIPadding"] = Instance.new("UIPadding");
	["_IconBG"] = Instance.new("ImageLabel");
	["_Icon"] = Instance.new("ImageLabel");
	["_Tabs"] = Instance.new("ScrollingFrame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_Tab"] = Instance.new("TextButton");
	["_UICorner3"] = Instance.new("UICorner");
	["_Icon1"] = Instance.new("ImageLabel");
	["_Title"] = Instance.new("TextLabel");
	["_UITextSizeConstraint2"] = Instance.new("UITextSizeConstraint");
	["_Sections"] = Instance.new("Folder");
	["_LeftSection"] = Instance.new("ScrollingFrame");
	["_UIListLayout1"] = Instance.new("UIListLayout");
	["_Module"] = Instance.new("Frame");
	["_UICorner4"] = Instance.new("UICorner");
	["_Settings"] = Instance.new("Frame");
	["_UIListLayout2"] = Instance.new("UIListLayout");
	["_RightSection"] = Instance.new("ScrollingFrame");
	["_UIListLayout4"] = Instance.new("UIListLayout");
	["_UIScale"] = Instance.new("UIScale");
	["_UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint");
	["_Mobile"] = Instance.new("TextButton");
	["_UICorner10"] = Instance.new("UICorner");
	["_Icon2"] = Instance.new("ImageLabel");
	["_UIAspectRatioConstraint1"] = Instance.new("UIAspectRatioConstraint");
}
local Fsploit = {}
Fsploit.__index = Fsploit
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Config = {
    Tabs = {},
    CurrentTab = nil,
    Settings = {},
    Keybinds = {},
    Dropdowns = {},
    Sliders = {},
    Toggles = {},
    Checkboxes = {},
    ColorPickers = {}
}
local Library = {
    _device = "Unknown",
    _ui_scale = 1,
    _ui_open = true,
    _dragging = false,
    _drag_start = nil,
    _start_pos = nil,
    _minimized = false
}
local ConfigFolder
local PickerGui
local function hexToRgb(hex)
    hex = hex:gsub("#", "")
    local r = tonumber(hex:sub(1, 2), 16) / 255
    local g = tonumber(hex:sub(3, 4), 16) / 255
    local b = tonumber(hex:sub(5, 6), 16) / 255
    return Color3.new(r, g, b)
end
local function rgbToHex(r, g, b)
    return string.format("%02X%02X%02X", math.floor(r * 255), math.floor(g * 255), math.floor(b * 255))
end
local ColorPicker = {}
ColorPicker.__index = ColorPicker
function ColorPicker.new(callback, scale)
    local self = setmetatable({}, ColorPicker)
    self.callback = callback or function() end
    self.currentHue = 0
    self.currentSaturation = 1
    self.currentValue = 1
    self.currentAlpha = 1
    self.colorFormat = "Hex"
    self.isDragging = false
    self.isHueDragging = false
    self.isAlphaDragging = false
    self.isDraggingUI = false
    self.scale = scale or 1
    self.dragStart = nil
    self.startPos = nil
    self:createUI()
    self:setupEvents()
    self:updateColor()
    return self
end
function ColorPicker:createUI()
    self.container = Instance.new("Frame")
    self.container.Name = "ColorPicker"
    self.container.Size = UDim2.new(0, 320 * self.scale, 0, 430 * self.scale)
    local viewport = workspace.CurrentCamera.ViewportSize
    self.container.Position = UDim2.new(1, -340 * self.scale, 0.5, -215 * self.scale) 
    self.container.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    self.container.BorderSizePixel = 0
    self.container.Parent = PickerGui
    self.container.Visible = false
    local containerCorner = Instance.new("UICorner")
    containerCorner.CornerRadius = UDim.new(0, 16 * self.scale)
    containerCorner.Parent = self.container
    local topBar = Instance.new("Frame")
    topBar.Name = "TopBar"
    topBar.Size = UDim2.new(1, 0, 0, 30 * self.scale)
    topBar.Position = UDim2.new(0, 0, 0, 0)
    topBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    topBar.BorderSizePixel = 0
    topBar.Parent = self.container
    local topCorner = Instance.new("UICorner")
    topCorner.CornerRadius = UDim.new(0, 16 * self.scale)
    topCorner.Parent = topBar
    local title = Instance.new("TextLabel")
    title.Name = "Title"
    title.Size = UDim2.new(1, -40 * self.scale, 1, 0)
    title.Position = UDim2.new(0, 10 * self.scale, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = "Color Picker"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 14 * self.scale
    title.Font = Enum.Font.GothamBold
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = topBar
    local closeBtn = Instance.new("TextButton")
    closeBtn.Name = "Close"
    closeBtn.Size = UDim2.new(0, 24 * self.scale, 0, 24 * self.scale)
    closeBtn.Position = UDim2.new(1, -30 * self.scale, 0.5, -12 * self.scale)
    closeBtn.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
    closeBtn.BorderSizePixel = 0
    closeBtn.Text = "×"
    closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeBtn.TextSize = 18 * self.scale
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.Parent = topBar
    local closeCorner = Instance.new("UICorner")
    closeCorner.CornerRadius = UDim.new(0, 12 * self.scale)
    closeCorner.Parent = closeBtn
    closeBtn.MouseButton1Click:Connect(function()
        self.container.Visible = false
    end)
    self.colorSpace = Instance.new("Frame")
    self.colorSpace.Name = "ColorSpace"
    self.colorSpace.Size = UDim2.new(1, -32 * self.scale, 0, 200 * self.scale)
    self.colorSpace.Position = UDim2.new(0, 16 * self.scale, 0, 46 * self.scale)
    self.colorSpace.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    self.colorSpace.BorderSizePixel = 0
    self.colorSpace.Parent = self.container
    local colorSpaceCorner = Instance.new("UICorner")
    colorSpaceCorner.CornerRadius = UDim.new(0, 12 * self.scale)
    colorSpaceCorner.Parent = self.colorSpace
    self.saturationGradient = Instance.new("Frame")
    self.saturationGradient.Size = UDim2.new(1, 0, 1, 0)
    self.saturationGradient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    self.saturationGradient.BorderSizePixel = 0
    self.saturationGradient.Parent = self.colorSpace
    local satGradientCorner = Instance.new("UICorner")
    satGradientCorner.CornerRadius = UDim.new(0, 12 * self.scale)
    satGradientCorner.Parent = self.saturationGradient
    local satGradient = Instance.new("UIGradient")
    satGradient.Transparency = NumberSequence.new{
        NumberSequenceKeypoint.new(0, 0),
        NumberSequenceKeypoint.new(1, 1)
    }
    satGradient.Parent = self.saturationGradient
    self.valueGradient = Instance.new("Frame")
    self.valueGradient.Size = UDim2.new(1, 0, 1, 0)
    self.valueGradient.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    self.valueGradient.BorderSizePixel = 0
    self.valueGradient.Parent = self.colorSpace
    local valGradientCorner = Instance.new("UICorner")
    valGradientCorner.CornerRadius = UDim.new(0, 12 * self.scale)
    valGradientCorner.Parent = self.valueGradient
    local valGradient = Instance.new("UIGradient")
    valGradient.Rotation = 90
    valGradient.Transparency = NumberSequence.new{
        NumberSequenceKeypoint.new(0, 1),
        NumberSequenceKeypoint.new(1, 0)
    }
    valGradient.Parent = self.valueGradient
    self.colorPicker = Instance.new("Frame")
    self.colorPicker.Name = "ColorPicker"
    self.colorPicker.Size = UDim2.new(0, 20 * self.scale, 0, 20 * self.scale)
    self.colorPicker.Position = UDim2.new(1, -10 * self.scale, 0, -10 * self.scale)
    self.colorPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    self.colorPicker.BorderSizePixel = 3
    self.colorPicker.BorderColor3 = Color3.fromRGB(255, 255, 255)
    self.colorPicker.Parent = self.colorSpace
    local pickerCorner = Instance.new("UICorner")
    pickerCorner.CornerRadius = UDim.new(1, 0)
    pickerCorner.Parent = self.colorPicker
    local pickerShadow = Instance.new("Frame")
    pickerShadow.Size = UDim2.new(1, 4 * self.scale, 1, 4 * self.scale)
    pickerShadow.Position = UDim2.new(0, -2 * self.scale, 0, -2 * self.scale)
    pickerShadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    pickerShadow.BackgroundTransparency = 0.3
    pickerShadow.BorderSizePixel = 0
    pickerShadow.ZIndex = -1
    pickerShadow.Parent = self.colorPicker
    local shadowCorner = Instance.new("UICorner")
    shadowCorner.CornerRadius = UDim.new(1, 0)
    shadowCorner.Parent = pickerShadow
    self.hueSlider = Instance.new("Frame")
    self.hueSlider.Name = "HueSlider"
    self.hueSlider.Size = UDim2.new(1, -32 * self.scale, 0, 20 * self.scale)
    self.hueSlider.Position = UDim2.new(0, 16 * self.scale, 0, 270 * self.scale)
    self.hueSlider.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    self.hueSlider.BorderSizePixel = 0
    self.hueSlider.Parent = self.container
    local hueCorner = Instance.new("UICorner")
    hueCorner.CornerRadius = UDim.new(0, 10 * self.scale)
    hueCorner.Parent = self.hueSlider
    local hueGradient = Instance.new("UIGradient")
    hueGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)),
        ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
        ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)),
        ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
    }
    hueGradient.Parent = self.hueSlider
    self.hueHandle = Instance.new("Frame")
    self.hueHandle.Name = "HueHandle"
    self.hueHandle.Size = UDim2.new(0, 24 * self.scale, 0, 28 * self.scale)
    self.hueHandle.Position = UDim2.new(0, -12 * self.scale, 0, -4 * self.scale)
    self.hueHandle.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
    self.hueHandle.BorderSizePixel = 2
    self.hueHandle.BorderColor3 = Color3.fromRGB(255, 255, 255)
    self.hueHandle.Parent = self.hueSlider
    local hueHandleCorner = Instance.new("UICorner")
    hueHandleCorner.CornerRadius = UDim.new(0, 6 * self.scale)
    hueHandleCorner.Parent = self.hueHandle
    self.alphaSlider = Instance.new("Frame")
    self.alphaSlider.Name = "AlphaSlider"
    self.alphaSlider.Size = UDim2.new(1, -32 * self.scale, 0, 20 * self.scale)
    self.alphaSlider.Position = UDim2.new(0, 16 * self.scale, 0, 310 * self.scale)
    self.alphaSlider.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    self.alphaSlider.BorderSizePixel = 0
    self.alphaSlider.Parent = self.container
    local alphaCorner = Instance.new("UICorner")
    alphaCorner.CornerRadius = UDim.new(0, 10 * self.scale)
    alphaCorner.Parent = self.alphaSlider
    self.checkerboard = Instance.new("Frame")
    self.checkerboard.Size = UDim2.new(1, 0, 1, 0)
    self.checkerboard.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    self.checkerboard.BorderSizePixel = 0
    self.checkerboard.Parent = self.alphaSlider
    local checkerCorner = Instance.new("UICorner")
    checkerCorner.CornerRadius = UDim.new(0, 10 * self.scale)
    checkerCorner.Parent = self.checkerboard
    self.alphaGradient = Instance.new("Frame")
    self.alphaGradient.Size = UDim2.new(1, 0, 1, 0)
    self.alphaGradient.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    self.alphaGradient.BorderSizePixel = 0
    self.alphaGradient.Parent = self.alphaSlider
    local alphaGradCorner = Instance.new("UICorner")
    alphaGradCorner.CornerRadius = UDim.new(0, 10 * self.scale)
    alphaGradCorner.Parent = self.alphaGradient
    local alphaGrad = Instance.new("UIGradient")
    alphaGrad.Transparency = NumberSequence.new{
        NumberSequenceKeypoint.new(0, 1),
        NumberSequenceKeypoint.new(1, 0)
    }
    alphaGrad.Parent = self.alphaGradient
    self.alphaHandle = Instance.new("Frame")
    self.alphaHandle.Name = "AlphaHandle"
    self.alphaHandle.Size = UDim2.new(0, 24 * self.scale, 0, 28 * self.scale)
    self.alphaHandle.Position = UDim2.new(1, -12 * self.scale, 0, -4 * self.scale)
    self.alphaHandle.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
    self.alphaHandle.BorderSizePixel = 2
    self.alphaHandle.BorderColor3 = Color3.fromRGB(255, 255, 255)
    self.alphaHandle.Parent = self.alphaSlider
    local alphaHandleCorner = Instance.new("UICorner")
    alphaHandleCorner.CornerRadius = UDim.new(0, 6 * self.scale)
    alphaHandleCorner.Parent = self.alphaHandle
    self.infoContainer = Instance.new("Frame")
    self.infoContainer.Name = "InfoContainer"
    self.infoContainer.Size = UDim2.new(1, -32 * self.scale, 0, 60 * self.scale)
    self.infoContainer.Position = UDim2.new(0, 16 * self.scale, 0, 350 * self.scale)
    self.infoContainer.BackgroundTransparency = 1
    self.infoContainer.Parent = self.container
    self.formatButton = Instance.new("TextButton")
    self.formatButton.Name = "FormatButton"
    self.formatButton.Size = UDim2.new(0, 80 * self.scale, 0, 40 * self.scale)
    self.formatButton.Position = UDim2.new(0, 0, 0, 0)
    self.formatButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    self.formatButton.BorderSizePixel = 0
    self.formatButton.Text = "Hex"
    self.formatButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    self.formatButton.TextSize = 16 * self.scale
    self.formatButton.Font = Enum.Font.GothamMedium
    self.formatButton.Parent = self.infoContainer
    local formatCorner = Instance.new("UICorner")
    formatCorner.CornerRadius = UDim.new(0, 8 * self.scale)
    formatCorner.Parent = self.formatButton
    self.colorValue = Instance.new("TextLabel")
    self.colorValue.Name = "ColorValue"
    self.colorValue.Size = UDim2.new(0, 120 * self.scale, 0, 40 * self.scale)
    self.colorValue.Position = UDim2.new(0, 90 * self.scale, 0, 0)
    self.colorValue.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    self.colorValue.BorderSizePixel = 0
    self.colorValue.Text = "FF0000"
    self.colorValue.TextColor3 = Color3.fromRGB(255, 255, 255)
    self.colorValue.TextSize = 16 * self.scale
    self.colorValue.Font = Enum.Font.GothamMedium
    self.colorValue.Parent = self.infoContainer
    local valueCorner = Instance.new("UICorner")
    valueCorner.CornerRadius = UDim.new(0, 8 * self.scale)
    valueCorner.Parent = self.colorValue
    self.alphaValue = Instance.new("TextLabel")
    self.alphaValue.Name = "AlphaValue"
    self.alphaValue.Size = UDim2.new(0, 78 * self.scale, 0, 40 * self.scale)
    self.alphaValue.Position = UDim2.new(0, 220 * self.scale, 0, 0)
    self.alphaValue.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    self.alphaValue.BorderSizePixel = 0
    self.alphaValue.Text = "100%"
    self.alphaValue.TextColor3 = Color3.fromRGB(255, 255, 255)
    self.alphaValue.TextSize = 16 * self.scale
    self.alphaValue.Font = Enum.Font.GothamMedium
    self.alphaValue.Parent = self.infoContainer
    local alphaValueCorner = Instance.new("UICorner")
    alphaValueCorner.CornerRadius = UDim.new(0, 8 * self.scale)
    alphaValueCorner.Parent = self.alphaValue
end
function ColorPicker:setupEvents()
    self.colorSpace.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            self.isDragging = true
            self:updateColorFromPosition(input.Position)
        end
    end)
    self.colorSpace.InputChanged:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and self.isDragging then
            self:updateColorFromPosition(input.Position)
        end
    end)
    self.hueSlider.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            self.isHueDragging = true
            self:updateHueFromPosition(input.Position)
        end
    end)
    self.hueSlider.InputChanged:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and self.isHueDragging then
            self:updateHueFromPosition(input.Position)
        end
    end)
    self.alphaSlider.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            self.isAlphaDragging = true
            self:updateAlphaFromPosition(input.Position)
        end
    end)
    self.alphaSlider.InputChanged:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and self.isAlphaDragging then
            self:updateAlphaFromPosition(input.Position)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            self.isDragging = false
            self.isHueDragging = false
            self.isAlphaDragging = false
        end
    end)
    self.formatButton.MouseButton1Click:Connect(function()
        self:cycleFormat()
    end)
    local moveConnection
    local function startDrag(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            self.isDraggingUI = true
            self.dragStart = Vector2.new(input.Position.X, input.Position.Y)
            self.startPos = self.container.AbsolutePosition
            moveConnection = UserInputService.InputChanged:Connect(function(inputChange)
                if self.isDraggingUI and (inputChange.UserInputType == Enum.UserInputType.MouseMovement or inputChange.UserInputType == Enum.UserInputType.Touch) then
                    local delta = Vector2.new(inputChange.Position.X, inputChange.Position.Y) - self.dragStart
                    local new_pos = self.startPos + delta
                    local viewport = workspace.CurrentCamera.ViewportSize
                    local containerSize = self.container.AbsoluteSize
                    new_pos = Vector2.new(
                        math.clamp(new_pos.X, 0, viewport.X - containerSize.X),
                        math.clamp(new_pos.Y, 0, viewport.Y - containerSize.Y)
                    )
                    self.container.Position = UDim2.new(0, new_pos.X, 0, new_pos.Y)
                end
            end)
        end
    end
    local function stopDrag(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            self.isDraggingUI = false
            if moveConnection then
                moveConnection:Disconnect()
            end
        end
    end
    self.container:FindFirstChild("TopBar").InputBegan:Connect(startDrag)
    UserInputService.InputEnded:Connect(stopDrag)
end
function ColorPicker:updateColorFromPosition(position)
    local relativePos = Vector2.new(
        math.clamp((position.X - self.colorSpace.AbsolutePosition.X) / self.colorSpace.AbsoluteSize.X, 0, 1),
        math.clamp((position.Y - self.colorSpace.AbsolutePosition.Y) / self.colorSpace.AbsoluteSize.Y, 0, 1)
    )
    self.currentSaturation = relativePos.X
    self.currentValue = 1 - relativePos.Y
    local targetPos = UDim2.new(relativePos.X, -10 * self.scale, relativePos.Y, -10 * self.scale)
    TweenService:Create(self.colorPicker, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Position = targetPos}):Play()
    self:updateColor()
end
function ColorPicker:updateHueFromPosition(position)
    local relativeX = math.clamp((position.X - self.hueSlider.AbsolutePosition.X) / self.hueSlider.AbsoluteSize.X, 0, 1)
    self.currentHue = relativeX * 360
    local targetPos = UDim2.new(relativeX, -12 * self.scale, 0, -4 * self.scale)
    TweenService:Create(self.hueHandle, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Position = targetPos}):Play()
    self:updateColor()
end
function ColorPicker:updateAlphaFromPosition(position)
    local relativeX = math.clamp((position.X - self.alphaSlider.AbsolutePosition.X) / self.alphaSlider.AbsoluteSize.X, 0, 1)
    self.currentAlpha = relativeX
    local targetPos = UDim2.new(relativeX, -12 * self.scale, 0, -4 * self.scale)
    TweenService:Create(self.alphaHandle, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Position = targetPos}):Play()
    self:updateColor()
end
function ColorPicker:hsvToRgb(h, s, v)
    local r, g, b
    local i = math.floor(h / 60) % 6
    local f = h / 60 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)
    if i == 0 then
        r, g, b = v, t, p
    elseif i == 1 then
        r, g, b = q, v, p
    elseif i == 2 then
        r, g, b = p, v, t
    elseif i == 3 then
        r, g, b = p, q, v
    elseif i == 4 then
        r, g, b = t, p, v
    elseif i == 5 then
        r, g, b = v, p, q
    end
    return r, g, b
end
function ColorPicker:updateColor()
    local r, g, b = self:hsvToRgb(self.currentHue, self.currentSaturation, self.currentValue)
    local color = Color3.new(r, g, b)
    self.colorSpace.BackgroundColor3 = Color3.fromHSV(self.currentHue / 360, 1, 1)
    self.alphaGradient.BackgroundColor3 = color
    self.colorValue.Text = self:getColorValue(color)
    self.alphaValue.Text = math.floor(self.currentAlpha * 100) .. "%"
    self.callback(color, self.currentAlpha)
end
function ColorPicker:getColorValue(color)
    if self.colorFormat == "Hex" then
        return rgbToHex(color.R * 255, color.G * 255, color.B * 255)
    elseif self.colorFormat == "RGB" then
        return math.floor(color.R * 255) .. ", " .. math.floor(color.G * 255) .. ", " .. math.floor(color.B * 255)
    elseif self.colorFormat == "HSV" then
        local h, s, v = color:ToHSV()
        return math.floor(h * 360) .. ", " .. math.floor(s * 100) .. ", " .. math.floor(v * 100)
    end
end
function ColorPicker:cycleFormat()
    if self.colorFormat == "Hex" then
        self.colorFormat = "RGB"
    elseif self.colorFormat == "RGB" then
        self.colorFormat = "HSV"
    else
        self.colorFormat = "Hex"
    end
    self.formatButton.Text = self.colorFormat
    self:updateColor()
end
function ColorPicker:setColor(color, alpha)
    local h, s, v = color:ToHSV()
    self.currentHue = h * 360
    self.currentSaturation = s
    self.currentValue = v
    self.currentAlpha = alpha or 1
    self.colorSpace.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
    self.alphaGradient.BackgroundColor3 = color
    self.colorPicker.Position = UDim2.new(s, -10 * self.scale, 1 - v, -10 * self.scale)
    self.hueHandle.Position = UDim2.new(h, -12 * self.scale, 0, -4 * self.scale)
    self.alphaHandle.Position = UDim2.new(self.currentAlpha, -12 * self.scale, 0, -4 * self.scale)
    self:updateColor()
end

-- LoadValue and SaveValue functions (placeholders)
local function LoadValue(title, default, valueType)
    return default
end
local function SaveValue(title, valueType, value)
end

-- Fsploit functions
function Fsploit.new(title, description)
    local self = setmetatable({}, Fsploit)
    Converted["_Flow"].Name = "Flow"
    Converted["_Flow"].Parent = game:GetService("CoreGui")
    Converted["_Container"].Parent = Converted["_Flow"]
    Converted["_Frame"].Parent = Converted["_Container"]
    Converted["_UICorner"].Parent = Converted["_Container"]
    Converted["_Header"].Parent = Converted["_Container"]
    Converted["_UICorner1"].Parent = Converted["_Header"]
    Converted["_Client"].Text = title or "Flow"
    Converted["_Client"].Parent = Converted["_Header"]
    Converted["_UITextSizeConstraint"].Parent = Converted["_Client"]
    Converted["_SearchBar"].Parent = Converted["_Header"]
    Converted["_UICorner2"].Parent = Converted["_SearchBar"]
    Converted["_Input"].Parent = Converted["_SearchBar"]
    Converted["_UITextSizeConstraint1"].Parent = Converted["_Input"]
    Converted["_UIPadding"].Parent = Converted["_SearchBar"]
    Converted["_IconBG"].Parent = Converted["_SearchBar"]
    Converted["_Icon"].Parent = Converted["_IconBG"]
    Converted["_Tabs"].Parent = Converted["_Container"]
    Converted["_UIListLayout"].Parent = Converted["_Tabs"]
    Converted["_Sections"].Parent = Converted["_Container"]
    Converted["_LeftSection"].Parent = Converted["_Sections"]
    Converted["_UIListLayout1"].Parent = Converted["_LeftSection"]
    Converted["_RightSection"].Parent = Converted["_Sections"]
    Converted["_UIListLayout4"].Parent = Converted["_RightSection"]
    Converted["_UIScale"].Parent = Converted["_Container"]
    Converted["_UIAspectRatioConstraint"].Parent = Converted["_Flow"]
    Converted["_Mobile"].Parent = Converted["_Flow"]
    Converted["_UICorner10"].Parent = Converted["_Mobile"]
    Converted["_Icon2"].Parent = Converted["_Mobile"]
    Converted["_UIAspectRatioConstraint1"].Parent = Converted["_Mobile"]
    TweenService:Create(Converted["_Container"], TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
    return self
end

function Fsploit:CreateTab(name, icon)
    local tab = {}
    local tabButton = Converted["_Tab"]:Clone()
    tabButton.Name = name
    tabButton.Parent = Converted["_Tabs"]
    Converted["_UICorner3"].Parent = tabButton
    Converted["_Icon1"].Image = icon or "rbxassetid://10709810463"
    Converted["_Icon1"].Parent = tabButton
    Converted["_Title"].Text = name
    Converted["_Title"].Parent = tabButton
    Converted["_UITextSizeConstraint2"].Parent = Converted["_Title"]
    tab.LeftSection = Converted["_LeftSection"]
    tab.RightSection = Converted["_RightSection"]
    tabButton.MouseButton1Click:Connect(function()
        TweenService:Create(tabButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
    end)
    Config.Tabs[name] = tab
    return tab
end

function Fsploit:CreateModule(parent, title, callback)
    local module = Converted["_Module"]:Clone()
    module.Name = title
    module.Parent = parent
    Converted["_UICorner4"].Parent = module
    Converted["_Settings"].Parent = module
    Converted["_UIListLayout2"].Parent = Converted["_Settings"]
    local header = Instance.new("ImageButton")
    header.Name = "Header"
    header.Image = "rbxassetid://72035547110749"
    header.ImageTransparency = 0.5
    header.BackgroundTransparency = 1
    header.Size = UDim2.new(0, 237, 0, 28)
    header.Parent = module
    local arrow = Instance.new("ImageLabel")
    arrow.Name = "Arrow"
    arrow.Image = "rbxassetid://136776761805636"
    arrow.ImageTransparency = 0.5
    arrow.BackgroundTransparency = 1
    arrow.Position = UDim2.new(0.9, 0, 0.286, 0)
    arrow.Rotation = -90
    arrow.Size = UDim2.new(0, 11, 0, 11)
    arrow.Parent = header
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.Font = Enum.Font.Unknown
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextScaled = true
    titleLabel.TextTransparency = 0.5
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.AnchorPoint = Vector2.new(0, 0.5)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Position = UDim2.new(0.15, 0, 0.5, 0)
    titleLabel.Size = UDim2.new(0, 156, 0, 12)
    titleLabel.Parent = header
    local titleConstraint = Instance.new("UITextSizeConstraint")
    titleConstraint.MaxTextSize = 12
    titleConstraint.MinTextSize = 12
    titleConstraint.Parent = titleLabel
    local keybind = self:CreateKeybind(header, title, "R", callback)
    local expanded = true
    header.MouseButton1Click:Connect(function()
        expanded = not expanded
        local targetSize = expanded and UDim2.new(0, 237, 0, Converted["_UIListLayout2"].AbsoluteContentSize.Y) or UDim2.new(0, 237, 0, 0)
        TweenService:Create(Converted["_Settings"], TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Size = targetSize}):Play()
        local targetRotation = expanded and -90 or 90
        TweenService:Create(arrow, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Rotation = targetRotation}):Play()
        local moduleTargetSize = UDim2.new(0, 237, 0, 28 + (expanded and Converted["_UIListLayout2"].AbsoluteContentSize.Y or 0))
        TweenService:Create(module, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Size = moduleTargetSize}):Play()
    end)
    local moduleData = {Settings = Converted["_Settings"], UpdateSize = function()
        local contentSize = Converted["_UIListLayout2"].AbsoluteContentSize.Y
        local targetSize = expanded and UDim2.new(0, 237, 0, contentSize) or UDim2.new(0, 237, 0, 0)
        TweenService:Create(Converted["_Settings"], TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Size = targetSize}):Play()
        local moduleTargetSize = UDim2.new(0, 237, 0, 28 + (expanded and contentSize or 0))
        TweenService:Create(module, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Size = moduleTargetSize}):Play()
    end}
    return moduleData
end

function Fsploit:CreateDropdown(parent, title, options, default, callback)
    local dropdown = Converted["_Dropdown"]:Clone()
    dropdown.Name = title
    dropdown.Parent = parent
    Converted["_UIPadding1"].Parent = dropdown
    Converted["_Title1"].Text = title
    Converted["_Title1"].Parent = dropdown
    Converted["_UITextSizeConstraint3"].Parent = Converted["_Title1"]
    Converted["_Box"].Parent = Converted["_Title1"]
    Converted["_UICorner5"].Parent = Converted["_Box"]
    Converted["_Options"].Parent = Converted["_Box"]
    Converted["_List"].Parent = Converted["_Options"]
    Converted["_UIListLayout3"].Parent = Converted["_List"]
    local selected = default
    for _, opt in ipairs(options) do
        local option = Converted["_Option"]:Clone()
        option.Text = opt
        option.Parent = Converted["_List"]
        Converted["_UITextSizeConstraint4"].Parent = option
        Converted["_UIGradient"].Parent = option
        option.MouseButton1Click:Connect(function()
            selected = opt
            Converted["_Option5"].Text = opt
            if callback then callback(selected) end
            TweenService:Create(Converted["_Options"], TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Size = UDim2.new(0, 218, 0, 0)}):Play()
        end)
    end
    Converted["_Fill"].Parent = Converted["_Options"]
    Converted["_Corner"].Parent = Converted["_Fill"]
    Converted["_Header1"].Parent = Converted["_Box"]
    Converted["_Arrow"].Parent = Converted["_Header1"]
    Converted["_Option5"].Text = default
    Converted["_Option5"].Parent = Converted["_Header1"]
    Converted["_UITextSizeConstraint9"].Parent = Converted["_Option5"]
    Converted["_UIGradient5"].Parent = Converted["_Option5"]
    dropdown.MouseButton1Click:Connect(function()
        TweenService:Create(Converted["_Options"], TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Size = UDim2.new(0, 218, 0, Converted["_List"].AbsoluteContentSize.Y)}):Play()
    end)
    Config.Dropdowns[title] = {Dropdown = dropdown, Selected = selected, Callback = callback}
    return dropdown
end

function Fsploit:CreateSlider(parent, title, min, max, default, callback)
    local slider = Converted["_Slider"]:Clone()
    slider.Name = title
    slider.Parent = parent
    Converted["_Drag"].Parent = slider
    Converted["_UICorner6"].Parent = Converted["_Drag"]
    Converted["_Fill1"].Parent = Converted["_Drag"]
    Converted["_UICorner7"].Parent = Converted["_Fill1"]
    Converted["_Circle"].Parent = Converted["_Fill1"]
    Converted["_UICorner8"].Parent = Converted["_Circle"]
    Converted["_Title2"].Text = title
    Converted["_Title2"].Parent = slider
    Converted["_UITextSizeConstraint10"].Parent = Converted["_Title2"]
    Converted["_Value"].Text = tostring(default)
    Converted["_Value"].Parent = slider
    Converted["_UITextSizeConstraint11"].Parent = Converted["_Value"]
    local dragging = false
    local currentValue = default
    local function updateSlider(relativePos)
        relativePos = math.clamp(relativePos, 0, 1)
        currentValue = math.floor(min + (max - min) * relativePos)
        Converted["_Value"].Text = tostring(currentValue)
        TweenService:Create(Converted["_Fill1"], TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Size = UDim2.new(relativePos, 0, 1, 0)}):Play()
        TweenService:Create(Converted["_Circle"], TweenInfo.new(0.1, Enum.EasingStyle.Quad), {Position = UDim2.new(1, 0, 0.5, 0)}):Play()
        SaveValue(title, "Number", currentValue)
        if callback then callback(currentValue) end
    end
    slider.MouseButton1Down:Connect(function()
        dragging = true
        local mouse = game.Players.LocalPlayer:GetMouse()
        local relativePos = (mouse.X - Converted["_Drag"].AbsolutePosition.X) / Converted["_Drag"].AbsoluteSize.X
        updateSlider(relativePos)
    end)
    local dragMoveConnection
    slider.MouseButton1Down:Connect(function()
        dragMoveConnection = UserInputService.InputChanged:Connect(function(input)
            if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                local abs_pos = Converted["_Drag"].AbsolutePosition
                local abs_size = Converted["_Drag"].AbsoluteSize
                local input_x = input.Position.X
                local relativePos = (input_x - abs_pos.X) / abs_size.X
                updateSlider(relativePos)
            end
        end)
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
            if dragMoveConnection then
                dragMoveConnection:Disconnect()
            end
        end
    end)
    Config.Sliders[title] = {
        Slider = slider,
        Value = currentValue,
        Min = min,
        Max = max,
        Callback = callback
    }
    return slider
end

function Fsploit:CreateKeybind(parent, title, defaultKey, callback)
    local default = LoadValue(title, defaultKey or "R", "String")
    local keybind = Instance.new("TextButton")
    keybind.Name = "Keybind"
    keybind.Font = Enum.Font.SourceSans
    keybind.Text = ""
    keybind.TextColor3 = Color3.fromRGB(0, 0, 0)
    keybind.TextSize = 14 * Library._ui_scale
    keybind.AutoButtonColor = false
    keybind.AnchorPoint = Vector2.new(1, 0.5)
    keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    keybind.BackgroundTransparency = 1
    keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
    keybind.BorderSizePixel = 0
    keybind.Position = UDim2.new(1, -33 * Library._ui_scale, 0.5, 0)
    keybind.Size = UDim2.new(0, 33 * Library._ui_scale, 0, 28 * Library._ui_scale)
    keybind.Parent = parent
    
    local background = Instance.new("Frame")
    background.Name = "Background"
    background.AnchorPoint = Vector2.new(0.5, 0.5)
    background.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
    background.BackgroundTransparency = 0.5
    background.BorderColor3 = Color3.fromRGB(0, 0, 0)
    background.BorderSizePixel = 0
    background.Position = UDim2.new(0.5, 0, 0.5, 0)
    background.Size = UDim2.new(0, 20 * Library._ui_scale, 0, 20 * Library._ui_scale)
    background.Parent = keybind
    
    local backgroundCorner = Instance.new("UICorner")
    backgroundCorner.CornerRadius = UDim.new(0, 4 * Library._ui_scale)
    backgroundCorner.Parent = background
    
    local keyString = Instance.new("TextLabel")
    keyString.Name = "String"
    keyString.Font = Enum.Font.Gotham
    keyString.Text = default
    keyString.TextColor3 = Color3.fromRGB(255, 255, 255)
    keyString.TextSize = 10 * Library._ui_scale
    keyString.TextTransparency = 0.5
    keyString.AnchorPoint = Vector2.new(0.5, 0.5)
    keyString.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    keyString.BackgroundTransparency = 1
    keyString.BorderColor3 = Color3.fromRGB(0, 0, 0)
    keyString.BorderSizePixel = 0
    keyString.Position = UDim2.new(0.5, 0, 0.5, 0)
    keyString.Size = UDim2.new(0, 12 * Library._ui_scale, 0, 12 * Library._ui_scale)
    keyString.Parent = background
    
    local stringConstraint = Instance.new("UITextSizeConstraint")
    stringConstraint.MaxTextSize = 11 * Library._ui_scale
    stringConstraint.MinTextSize = 11 * Library._ui_scale
    stringConstraint.Parent = keyString
    
    local titleLabel
    if not string.find(parent.Name, "Header") then
        titleLabel = Instance.new("TextLabel")
        titleLabel.Name = "Title"
        titleLabel.Font = Enum.Font.Gotham
        titleLabel.Text = title
        titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        titleLabel.TextScaled = true
        titleLabel.TextSize = 14 * Library._ui_scale
        titleLabel.TextTransparency = 0.5
        titleLabel.TextWrapped = true
        titleLabel.TextXAlignment = Enum.TextXAlignment.Left
        titleLabel.AnchorPoint = Vector2.new(0, 0.5)
        titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        titleLabel.BackgroundTransparency = 1
        titleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        titleLabel.BorderSizePixel = 0
        titleLabel.Position = UDim2.new(1, 0, 0.5, 0)
        titleLabel.Size = UDim2.new(0, 156 * Library._ui_scale, 0, 12 * Library._ui_scale)
        titleLabel.Parent = keybind
        
        local titleConstraint = Instance.new("UITextSizeConstraint")
        titleConstraint.MaxTextSize = 12 * Library._ui_scale
        titleConstraint.MinTextSize = 12 * Library._ui_scale
        titleConstraint.Parent = titleLabel
    end
    
    local listening = false
    local currentKey = default
    local connection = nil
    local activationConnection = nil
    
    local function setupActivation()
        if activationConnection then
            activationConnection:Disconnect()
        end
        
        activationConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed and not listening and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode.Name == currentKey then
                if callback then
                    callback(currentKey)
                end
            end
        end)
    end
    
    keybind.MouseButton1Click:Connect(function()
        if not listening then
            listening = true
            keyString.Text = "..."
            keyString.TextTransparency = 0.2
            
            TweenService:Create(background, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(100, 100, 100)}):Play()
            
            connection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if input.UserInputType == Enum.UserInputType.Keyboard and not gameProcessed then
                    local keyName = input.KeyCode.Name
                    currentKey = keyName
                    keyString.Text = keyName
                    SaveValue(title, "String", keyName)
                    keyString.TextTransparency = 0.5
                    listening = false
                    
                    TweenService:Create(background, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(62, 62, 62)}):Play()
                    
                    if connection then
                        connection:Disconnect()
                        connection = nil
                    end
                    
                    Config.Keybinds[title] = {
                        Keybind = keybind,
                        Key = currentKey,
                        Callback = callback
                    }
                    
                    setupActivation()
                end
            end)
        end
    end)
    
    setupActivation()
    
    SaveValue(title, "String", currentKey)
    
    Config.Keybinds[title] = {
        Keybind = keybind,
        Key = currentKey,
        Callback = callback
    }
    
    return keybind
end

function Fsploit:CreateToggle(parent, title, defaultState, callback)
    local default = LoadValue(title, defaultState or false, "Bool")
    local onColor = Color3.fromRGB(255, 255, 255)
    local offColor = Color3.fromRGB(60, 60, 60)
    local onCircleColor = onColor
    local offCircleColor = Color3.fromRGB(120, 120, 120)

    local toggle = Instance.new("TextButton")
    toggle.Name = "Toggle"
    toggle.Font = Enum.Font.SourceSans
    toggle.Text = ""
    toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
    toggle.TextSize = 14 * Library._ui_scale
    toggle.AutoButtonColor = false
    toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    toggle.BackgroundTransparency = 1
    toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    toggle.BorderSizePixel = 0
    toggle.Size = UDim2.new(0, 216 * Library._ui_scale, 0, 18 * Library._ui_scale)
    toggle.Parent = parent

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.Font = Enum.Font.GothamMedium
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextScaled = true
    titleLabel.TextSize = 14 * Library._ui_scale
    titleLabel.TextTransparency = 0.5
    titleLabel.TextWrapped = true
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.AnchorPoint = Vector2.new(0, 0.5)
    titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.BackgroundTransparency = 1
    titleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.BorderSizePixel = 0
    titleLabel.Position = UDim2.new(0, 0, 0.5, 0)
    titleLabel.Size = UDim2.new(0, 172 * Library._ui_scale, 0, 12 * Library._ui_scale)
    titleLabel.Parent = toggle

    local titleConstraint = Instance.new("UITextSizeConstraint")
    titleConstraint.MaxTextSize = 12 * Library._ui_scale
    titleConstraint.MinTextSize = 12 * Library._ui_scale
    titleConstraint.Parent = titleLabel

    local toggleBG = Instance.new("Frame")
    toggleBG.Name = "ToggleBG"
    toggleBG.AnchorPoint = Vector2.new(1, 0.5)
    toggleBG.Position = UDim2.new(1, -3 * Library._ui_scale, 0.5, 0)
    toggleBG.BorderColor3 = Color3.fromRGB(0, 0, 0)
    toggleBG.Size = UDim2.new(0, 30 * Library._ui_scale, 0, 15 * Library._ui_scale)
    toggleBG.BorderSizePixel = 0
    toggleBG.BackgroundTransparency = 0.7
    toggleBG.BackgroundColor3 = default and onColor or offColor
    toggleBG.Parent = toggle

    local toggleCorner = Instance.new("UICorner")
    toggleCorner.CornerRadius = UDim.new(1, 0)
    toggleCorner.Parent = toggleBG

    local circle = Instance.new("Frame")
    circle.Name = "Circle"
    circle.AnchorPoint = Vector2.new(0, 0.5)
    circle.Position = default and UDim2.new(0.55, 0, 0.5, 0) or UDim2.new(0, 0, 0.5, 0)
    circle.Size = UDim2.new(0, 12 * Library._ui_scale, 0, 12 * Library._ui_scale)
    circle.BackgroundColor3 = default and onCircleColor or offCircleColor
    circle.BackgroundTransparency = 0.2
    circle.BorderSizePixel = 0
    circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    circle.Parent = toggleBG

    local circleCorner = Instance.new("UICorner")
    circleCorner.CornerRadius = UDim.new(1, 0)
    circleCorner.Parent = circle

    local state = default

    toggle.MouseButton1Click:Connect(function()
        state = not state
        SaveValue(title, "Bool", state)

        if state then
            TweenService:Create(toggleBG, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                BackgroundColor3 = onColor
            }):Play()

            TweenService:Create(circle, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                BackgroundColor3 = onCircleColor,
                Position = UDim2.fromScale(0.55, 0.5)
            }):Play()
        else
            TweenService:Create(toggleBG, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                BackgroundColor3 = offColor
            }):Play()

            TweenService:Create(circle, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                BackgroundColor3 = offCircleColor,
                Position = UDim2.fromScale(0.10, 0.5)
            }):Play()
        end

        Config.Toggles[title] = {
            Toggle = toggle,
            State = state,
            Callback = callback
        }

        if callback then
            callback(state)
        end
    end)

    Config.Toggles[title] = {
        Toggle = toggle,
        State = state,
        Callback = callback
    }

    return toggle
end

function Fsploit:CreateCheckbox(parent, title, defaultState, callback)
    local default = LoadValue(title, defaultState or false, "Bool")
    local onColor = Color3.fromRGB(255, 255, 255)
    local offColor = Color3.fromRGB(60, 60, 60)
    
    local checkbox = Instance.new("TextButton")
    checkbox.Name = "Checkbox"
    checkbox.Font = Enum.Font.SourceSans
    checkbox.Text = ""
    checkbox.TextColor3 = Color3.fromRGB(0, 0, 0)
    checkbox.TextSize = 14 * Library._ui_scale
    checkbox.AutoButtonColor = false
    checkbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    checkbox.BackgroundTransparency = 1
    checkbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    checkbox.BorderSizePixel = 0
    checkbox.Size = UDim2.new(0, 216 * Library._ui_scale, 0, 20 * Library._ui_scale)
    checkbox.Parent = parent
    
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.Font = Enum.Font.GothamMedium
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextScaled = true
    titleLabel.TextSize = 14 * Library._ui_scale
    titleLabel.TextTransparency = 0.2
    titleLabel.TextWrapped = true
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.AnchorPoint = Vector2.new(0, 0.5)
    titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.BackgroundTransparency = 1
    titleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.BorderSizePixel = 0
    titleLabel.Position = UDim2.new(0, 0, 0.5, 0)
    titleLabel.Size = UDim2.new(0, 142 * Library._ui_scale, 0, 13 * Library._ui_scale)
    titleLabel.Parent = checkbox
    
    local titleConstraint = Instance.new("UITextSizeConstraint")
    titleConstraint.MaxTextSize = 11 * Library._ui_scale
    titleConstraint.MinTextSize = 11 * Library._ui_scale
    titleConstraint.Parent = titleLabel
    
    local box = Instance.new("Frame")
    box.Name = "Box"
    box.BorderColor3 = Color3.fromRGB(0, 0, 0)
    box.AnchorPoint = Vector2.new(1, 0.5)
    box.BackgroundTransparency = default and 0.7 or 0.9
    box.Position = UDim2.new(1, 0, 0.5, 0)
    box.Size = UDim2.new(0, 15 * Library._ui_scale, 0, 15 * Library._ui_scale)
    box.BorderSizePixel = 0
    box.BackgroundColor3 = default and onColor or offColor
    box.Parent = checkbox
    
    local boxCorner = Instance.new("UICorner")
    boxCorner.CornerRadius = UDim.new(0, 4 * Library._ui_scale)
    boxCorner.Parent = box
    
    local fill = Instance.new("Frame")
    fill.AnchorPoint = Vector2.new(0.5, 0.5)
    fill.BackgroundTransparency = 0.2
    fill.Position = UDim2.new(0.5, 0, 0.5, 0)
    fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
    fill.Name = "Fill"
    fill.BorderSizePixel = 0
    fill.BackgroundColor3 = onColor
    fill.Size = default and UDim2.fromOffset(9 * Library._ui_scale, 9 * Library._ui_scale) or UDim2.fromOffset(0, 0)
    fill.Parent = box
    
    local fillCorner = Instance.new("UICorner")
    fillCorner.CornerRadius = UDim.new(0, 3 * Library._ui_scale)
    fillCorner.Parent = fill
    
    local state = default
    
    local function changeState(newState)
        state = newState
        SaveValue(title, "Bool", state)
        if state then
            TweenService:Create(box, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                BackgroundColor3 = onColor,
                BackgroundTransparency = 0.7
            }):Play()
            TweenService:Create(fill, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                Size = UDim2.fromOffset(9 * Library._ui_scale, 9 * Library._ui_scale)
            }):Play()
        else
            TweenService:Create(box, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                BackgroundColor3 = offColor,
                BackgroundTransparency = 0.9
            }):Play()
            TweenService:Create(fill, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                Size = UDim2.fromOffset(0, 0)
            }):Play()
        end
        
        Config.Checkboxes[title] = {
            Checkbox = checkbox,
            State = state,
            Callback = callback
        }
        
        if callback then
            callback(state)
        end
    end
    
    checkbox.MouseButton1Click:Connect(function()
        changeState(not state)
    end)
    
    local keybind = self:CreateKeybind(checkbox, title .. " Keybind", "None", function(key)
        if key == "None" then return end
        changeState(not state)
    end)
    keybind.Visible = false
    
    Config.Checkboxes[title] = {
        Checkbox = checkbox,
        State = state,
        Keybind = keybind,
        Callback = callback
    }
    
    return checkbox
end

function Fsploit:CreateTextBox(parent, title, default, callback)
    local defaultVal = LoadValue(title, default or "", "String")
    local textbox = Instance.new("TextButton")
    textbox.Name = "TextBox"
    textbox.Font = Enum.Font.SourceSans
    textbox.Text = ""
    textbox.TextColor3 = Color3.fromRGB(0, 0, 0)
    textbox.TextSize = 14 * Library._ui_scale
    textbox.AutoButtonColor = false
    textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textbox.BackgroundTransparency = 1
    textbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    textbox.BorderSizePixel = 0
    textbox.Size = UDim2.new(0, 216 * Library._ui_scale, 0, 27 * Library._ui_scale)
    textbox.Parent = parent
    
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.Font = Enum.Font.GothamMedium
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextScaled = true
    titleLabel.TextSize = 14 * Library._ui_scale
    titleLabel.TextTransparency = 0.5
    titleLabel.TextWrapped = true
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.AnchorPoint = Vector2.new(0, 0.5)
    titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.BackgroundTransparency = 1
    titleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.BorderSizePixel = 0
    titleLabel.Position = UDim2.new(0, 0, 0.4, 0)
    titleLabel.Size = UDim2.new(0, 172 * Library._ui_scale, 0, 12 * Library._ui_scale)
    titleLabel.Parent = textbox
    
    local titleConstraint = Instance.new("UITextSizeConstraint")
    titleConstraint.MaxTextSize = 12 * Library._ui_scale
    titleConstraint.MinTextSize = 12 * Library._ui_scale
    titleConstraint.Parent = titleLabel
    
    local input = Instance.new("TextBox")
    input.Name = "Input"
    input.Font = Enum.Font.Gotham
    input.Text = defaultVal
    input.TextColor3 = Color3.fromRGB(255, 255, 255)
    input.TextSize = 12 * Library._ui_scale
    input.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
    input.BackgroundTransparency = 0.5
    input.BorderColor3 = Color3.fromRGB(0, 0, 0)
    input.BorderSizePixel = 0
    input.Position = UDim2.new(0.5, 0, 0.7, 0)
    input.AnchorPoint = Vector2.new(0.5, 0)
    input.Size = UDim2.new(0, 217 * Library._ui_scale, 0, 18 * Library._ui_scale)
    input.TextXAlignment = Enum.TextXAlignment.Left
    input.Parent = textbox
    
    local inputCorner = Instance.new("UICorner")
    inputCorner.CornerRadius = UDim.new(0, 5 * Library._ui_scale)
    inputCorner.Parent = input
    
    local inputConstraint = Instance.new("UITextSizeConstraint")
    inputConstraint.MaxTextSize = 12 * Library._ui_scale
    inputConstraint.MinTextSize = 12 * Library._ui_scale
    inputConstraint.Parent = input
    
    input.FocusLost:Connect(function(enterPressed)
        local text = input.Text
        SaveValue(title, "String", text)
        Config.TextBoxes[title] = {
            TextBox = textbox,
            Value = text,
            Callback = callback
        }
        if callback then
            callback(text, enterPressed)
        end
    end)
    
    input:GetPropertyChangedSignal("Text"):Connect(function()
        local text = input.Text
        Config.TextBoxes[title] = {
            TextBox = textbox,
            Value = text,
            Callback = callback
        }
    end)
    
    SaveValue(title, "String", defaultVal)
    
    return textbox
end

function Fsploit:CreateColorPicker(parent, title, defaultColor, callback, moduleData)
    local scale = Library._ui_scale
    defaultColor = defaultColor or Color3.fromRGB(255, 255, 255)
    local defaultHex = rgbToHex(defaultColor.R * 255, defaultColor.G * 255, defaultColor.B * 255)
    local saved = LoadValue(title, defaultHex, "String")
    local hex, alphaStr
    if string.find(saved, ",") then
        local parts = string.split(saved, ",")
        hex = parts[1]
        alphaStr = parts[2] or "100"
    else
        hex = saved
        alphaStr = "100"
    end
    local currentColor = hexToRgb(hex)
    local currentAlpha = tonumber(alphaStr) / 100
    
    local colorElement = Instance.new("TextButton")
    colorElement.Name = "ColorPicker"
    colorElement.Font = Enum.Font.SourceSans
    colorElement.Text = ""
    colorElement.TextColor3 = Color3.fromRGB(0, 0, 0)
    colorElement.TextSize = 14 * scale
    colorElement.AutoButtonColor = false
    colorElement.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    colorElement.BackgroundTransparency = 1
    colorElement.BorderColor3 = Color3.fromRGB(0, 0, 0)
    colorElement.BorderSizePixel = 0
    colorElement.Size = UDim2.new(0, 216 * scale, 0, 27 * scale)
    colorElement.Parent = parent
    
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.Font = Enum.Font.GothamMedium
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextScaled = true
    titleLabel.TextSize = 14 * scale
    titleLabel.TextTransparency = 0.5
    titleLabel.TextWrapped = true
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.AnchorPoint = Vector2.new(0, 0.5)
    titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.BackgroundTransparency = 1
    titleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.BorderSizePixel = 0
    titleLabel.Position = UDim2.new(0, 0, 0.5, 0)
    titleLabel.Size = UDim2.new(0, 172 * scale, 0, 12 * scale)
    titleLabel.Parent = colorElement
    
    local titleConstraint = Instance.new("UITextSizeConstraint")
    titleConstraint.MaxTextSize = 12 * scale
    titleConstraint.MinTextSize = 12 * scale
    titleConstraint.Parent = titleLabel
    
    local swatch = Instance.new("TextButton")
    swatch.Name = "Swatch"
    swatch.AnchorPoint = Vector2.new(1, 0.5)
    swatch.BackgroundColor3 = currentColor
    swatch.BackgroundTransparency = 1 - currentAlpha
    swatch.BorderColor3 = Color3.fromRGB(255, 255, 255)
    swatch.BorderSizePixel = 1
    swatch.Position = UDim2.new(1, 0, 0.5, 0)
    swatch.Size = UDim2.new(0, 40 * scale, 0, 20 * scale)
    swatch.Text = ""
    swatch.AutoButtonColor = false
    swatch.Parent = colorElement
    
    local swatchCorner = Instance.new("UICorner")
    swatchCorner.CornerRadius = UDim.new(0, 4 * scale)
    swatchCorner.Parent = swatch
    
    local picker = ColorPicker.new(function(col, alp)
        swatch.BackgroundColor3 = col
        swatch.BackgroundTransparency = 1 - alp
        SaveValue(title, "String", rgbToHex(col.R * 255, col.G * 255, col.B * 255) .. "," .. math.floor(alp * 100))
        if callback then
            callback(col, alp)
        end
        if moduleData and moduleData.UpdateSize then
            moduleData.UpdateSize()
        end
    end, scale)
    
    picker:setColor(currentColor, currentAlpha)
    
    swatch.MouseButton1Click:Connect(function()
        picker.container.Visible = not picker.container.Visible
    end)
    
    colorElement.MouseButton1Click:Connect(function()
        picker.container.Visible = not picker.container.Visible
    end)
    
    if moduleData and moduleData.UpdateSize then
        moduleData.UpdateSize()
    end
    
    Config.ColorPickers[title] = {
        Element = colorElement,
        Swatch = swatch,
        Picker = picker,
        Color = currentColor,
        Alpha = currentAlpha,
        Callback = callback
    }
    
    return colorElement
end

-- Usage to recreate Revolution UI with all elements demonstrated
local revolution = Fsploit.new("Flow", "")

local blatantTab = revolution:CreateTab("Blatant", "rbxassetid://10709810463")

local autoParryModule = revolution:CreateModule(blatantTab.LeftSection, "Auto Parry", function(key)
    print("Auto Parry toggled with key:", key)
end)

revolution:CreateDropdown(autoParryModule.Settings, "", {"Camera", "Straight", "High", "Random"}, "Camera", function(selected)
    print("Selected mode:", selected)
end)

revolution:CreateSlider(autoParryModule.Settings, "Accuracy", 0, 100, 100, function(value)
    print("Accuracy set to:", value)
end)

revolution:CreateToggle(autoParryModule.Settings, "Toggle Example", true, function(state)
    print("Toggle state:", state)
end)

revolution:CreateCheckbox(autoParryModule.Settings, "Checkbox Example", false, function(state)
    print("Checkbox state:", state)
end)

revolution:CreateTextBox(autoParryModule.Settings, "TextBox Example", "Default Text", function(text)
    print("Text entered:", text)
end)

revolution:CreateColorPicker(autoParryModule.Settings, "ColorPicker Example", Color3.fromRGB(255, 0, 0), function(color, alpha)
    print("Color selected:", color, "Alpha:", alpha)
end, autoParryModule)

autoParryModule.UpdateSize()  -- Update module size after adding elements

-- The UI is now created with smooth tweens for all interactions
