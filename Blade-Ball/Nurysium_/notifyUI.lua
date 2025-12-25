-- xd

local TweenService = game:GetService('TweenService')
local TextService  = game:GetService('TextService')
local Debris       = game:GetService('Debris')

local notify_lib = {
	notify = Instance.new("ScreenGui"),
	notify_count = 0
}

function notify_lib:__init()
	notify_lib.notify.Name = "notify"
	notify_lib.notify.Parent = self.parent

    local notify_list   = Instance.new("Frame")
    local UIListLayout  = Instance.new("UIListLayout")

    notify_list.Name               = "notify_list"
    notify_list.Parent             = notify_lib.notify
    notify_list.AnchorPoint        = Vector2.new(0.5, 0.5)
    notify_list.BackgroundColor3   = Color3.fromRGB(191, 229, 248)
    notify_list.BackgroundTransparency = 1
    notify_list.BorderSizePixel    = 0
    notify_list.Position           = UDim2.new(0.5, 0, 0.8, 0)
    notify_list.Size               = UDim2.new(0, 495, 0, 440)

    UIListLayout.Parent      = notify_list
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder         = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding           = UDim.new(0.015, 0)
end

function notify_lib.draw_notify(text: string, draw_time: number)
    notify_lib.notify_count += 1

    if notify_lib.notify_count > 5 then
        for _, old_notify in notify_lib.notify.notify_list:GetChildren() do
            if old_notify:IsA('Frame') then
                Debris:AddItem(old_notify, 0)
                task.wait()
            end
        end
        notify_lib.notify_count = 1
    end

    local background = Instance.new("Frame")
    local UICorner   = Instance.new("UICorner")

    background.Name               = "background"
    background.Parent             = notify_lib.notify.notify_list
    background.AnchorPoint        = Vector2.new(0.5, 0.5)
    background.Position           = UDim2.new(0, 0, 0, 0)
    background.Size               = UDim2.new(0, 0, 0, 33)
    background.BorderSizePixel    = 0

    background.BackgroundColor3      = Color3.fromRGB(152, 181, 255)
    background.BackgroundTransparency = 0

    UICorner.CornerRadius = UDim.new(0.25, 0)
    UICorner.Parent       = background

    local UIStroke = Instance.new("UIStroke")
    UIStroke.Parent          = background
    UIStroke.Color           = Color3.fromRGB(52, 66, 89)
    UIStroke.Thickness       = 2
    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    local title = Instance.new("TextLabel")
    title.Name               = "title"
    title.Parent             = background
    title.BackgroundTransparency = 1
    title.BorderSizePixel    = 0
    title.Position           = UDim2.new(0, 32, 0, 6)
    title.Size               = UDim2.new(0, 80, 0, 21)
    title.Font               = Enum.Font.GothamBold
    title.Text               = text
    title.TextColor3         = Color3.fromRGB(255, 255, 255)
    title.TextSize           = 15
    title.TextWrapped        = true
    title.TextTransparency   = 1

    local text_size = TextService:GetTextSize(
        title.Text,
        title.TextSize,
        title.Font,
        Vector2.new(1000, title.TextSize)
    )
    title.Size = UDim2.new(0, text_size.X, 0, 21)

    local UIScale = Instance.new("UIScale")
    UIScale.Parent = background
    UIScale.Scale  = 1

    task.delay(0.4, function()
        TweenService:Create(title, TweenInfo.new(1, Enum.EasingStyle.Back), {
            TextTransparency = 0
        }):Play()
    end)

    TweenService:Create(background, TweenInfo.new(1.5, Enum.EasingStyle.Exponential), {
        Size = UDim2.new(0, text_size.X + 65, 0, 33)
    }):Play()

    TweenService:Create(background, TweenInfo.new(0.6, Enum.EasingStyle.Back), {
        BackgroundTransparency = 0.1
    }):Play()

    task.delay(draw_time, function()
        TweenService:Create(title, TweenInfo.new(0.4, Enum.EasingStyle.Back), {
            TextTransparency = 1
        }):Play()

        TweenService:Create(background, TweenInfo.new(0.6, Enum.EasingStyle.Back), {
            BackgroundTransparency = 1
        }):Play()

        TweenService:Create(UIScale, TweenInfo.new(1.5, Enum.EasingStyle.Exponential), {
            Scale = 0
        }):Play()

        Debris:AddItem(background, 1.5)
        task.wait(1)
        notify_lib.notify_count -= 1
    end)
end

return notify_lib
