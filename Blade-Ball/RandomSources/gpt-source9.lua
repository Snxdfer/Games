--// Services
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Stats = game:GetService("Stats")

local Player = Players.LocalPlayer

--// Auto Parry Toggle Variable
local autoParryEnabled = false

--// Parry Logic Variables
local Cooldown = tick()
local Parried = false
local Connection = nil

--// Visual Parry Area Variables
getgenv().ViewParryArea = false
getgenv().ParryRange = 10
local maxRange = 25
local parryAreaConnection

--// Rainbow Color Function
local function RainbowColor(t)
    return Color3.fromHSV((t * 0.25) % 1, 1, 1)
end

--// Function to find the active ball
local function GetBall()
    for _, Ball in ipairs(workspace.Balls:GetChildren()) do
        if Ball:GetAttribute("realBall") then
            return Ball
        end
    end
end

--// Resets the connection for resetting the parry flag
local function ResetConnection()
    if Connection then
        Connection:Disconnect()
        Connection = nil
    end
end

--// When a new ball is added, reset the parry flag on attribute change
workspace.Balls.ChildAdded:Connect(function()
    local Ball = GetBall()
    if not Ball then return end
    ResetConnection()
    Connection = Ball:GetAttributeChangedSignal("target"):Connect(function()
        Parried = false
    end)
end)

--// Main parry logic – only active when autoParryEnabled is true
RunService.PreSimulation:Connect(function()
    if not autoParryEnabled then return end
    local Ball = GetBall()
    local HRP = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
    if not Ball or not HRP then return end

    local zoomies = Ball:FindFirstChild("zoomies")
    local Speed = zoomies and zoomies.VectorVelocity.Magnitude or 0
    local Distance = (HRP.Position - Ball.Position).Magnitude

    if Ball:GetAttribute("target") == Player.Name and not Parried and Speed > 0 and (Distance / Speed <= 0.55) then
        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
        Parried = true
        Cooldown = tick()
    end

    if (tick() - Cooldown) >= 1 then
        Parried = false
    end
end)

--// Visual Parry Area Function
local function ViewParryArea()
    local BallParry = Instance.new("Part", workspace)
    BallParry.Name = "Parry Range <unknown>"
    BallParry.Material = Enum.Material.ForceField
    BallParry.CastShadow = false
    BallParry.CanCollide = false
    BallParry.Anchored = true
    BallParry.Shape = Enum.PartType.Ball

    -- Remove any existing part to prevent duplicates
    local existingPart = workspace:FindFirstChild(BallParry.Name)
    if existingPart and existingPart ~= BallParry then
        existingPart:Destroy()
    end

    local isExpanding = false
    local Range = getgenv().ParryRange
    local initialRange = getgenv().ParryRange

    parryAreaConnection = RunService.Heartbeat:Connect(function(deltaTime)
        if not getgenv().ViewParryArea then
            parryAreaConnection:Disconnect()
            BallParry:Destroy()
            return
        end

        -- Rainbow effect
        BallParry.Color = RainbowColor(tick())

        local plrChar = Player.Character
        local plrPP = plrChar and plrChar:FindFirstChild("HumanoidRootPart")
        if plrPP then
            BallParry.Position = plrPP.Position
        else
            BallParry.Position = Vector3.new(1000, 1000, 1000)
        end

        local ball = GetBall()
        if ball and plrPP then
            local ball_Velocity = ball:FindFirstChild("zoomies") and ball.zoomies.VectorVelocity or ball.AssemblyLinearVelocity
            local ball_Position = ball.Position
            local ball_Direction = (ball_Position - plrPP.Position).Unit
            local ball_Speed = ball_Velocity.Magnitude
            local ball_Dot = ball_Direction:Dot(ball_Velocity.Unit)

            local ping = 4
            if Stats and Stats.Network and Stats.Network.ServerStatsItem and Stats.Network.ServerStatsItem["Data Ping"] then
                pcall(function()
                    ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 10
                end)
            end

            local max_parry_Range = math.max(math.max(ping, 4) + ball_Speed / 1.5, maxRange)

            if ball_Dot < 0 then
                if not isExpanding then
                    Range = initialRange
                    isExpanding = true
                end
                Range = math.min(Range + ball_Speed / 5, max_parry_Range)
            else
                if isExpanding then
                    Range = getgenv().ParryRange
                    isExpanding = false
                end
            end

            BallParry.Size = Vector3.new(Range, Range, Range)
        end
    end)
end

--// Toggle function for visual parry area
local function ToggleParryView(toggled)
    getgenv().ViewParryArea = toggled
    if toggled then
        ViewParryArea()
    elseif parryAreaConnection then
        parryAreaConnection:Disconnect()
        local existingPart = workspace:FindFirstChild("Parry Range <unknown>")
        if existingPart then
            existingPart:Destroy()
        end
    end
end

--// GUI Creation Function
local function createGUI()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "BladeBallAutoParryGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = Player.PlayerGui

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 200, 0, 100)
    Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
    Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Frame.BorderSizePixel = 0
    Frame.Parent = ScreenGui
    Frame.Active = true
    Frame.Draggable = true
    Frame.Selectable = true

    local ToggleButton = Instance.new("TextButton")
    ToggleButton.Size = UDim2.new(0.8, 0, 0, 40)
    ToggleButton.Position = UDim2.new(0.1, 0, 0.5, 0)
    ToggleButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    ToggleButton.Text = "Enabled: ❌"
    ToggleButton.Parent = Frame

    -- Toggle auto parry
    ToggleButton.MouseButton1Click:Connect(function()
        autoParryEnabled = not autoParryEnabled
        ToggleButton.Text = autoParryEnabled and "Enabled: ✅" or "Enabled: ❌"
        ToggleButton.BackgroundColor3 = autoParryEnabled and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(200, 0, 0)
    end)

    local VisualButton = ToggleButton:Clone()
    VisualButton.Text = "Visual: ❌"
    VisualButton.Position = UDim2.new(0.1, 0, 0.1, 0)
    VisualButton.Parent = Frame

    VisualButton.MouseButton1Click:Connect(function()
        ToggleParryView(not getgenv().ViewParryArea)
        VisualButton.Text = getgenv().ViewParryArea and "Visual: ✅" or "Visual: ❌"
        VisualButton.BackgroundColor3 = getgenv().ViewParryArea and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(200, 0, 0)
    end)
end

--// Initialize GUI
createGUI()
