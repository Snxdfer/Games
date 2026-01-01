--/ max distance is 600 studs
getgenv().toggled = true --/ true & false
getgenv().RingFOV = 150

getgenv().old = getgenv().old or require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera

local LocalPlayer = Players.LocalPlayer

local FOV = nil
local okDrawing = pcall(function() return Drawing and Drawing.new end)

if okDrawing then
    FOV = Drawing.new("Circle")
    FOV.Visible = true
    FOV.Radius = getgenv().RingFOV
    FOV.Color = Color3.fromRGB(255, 255, 255)
    FOV.Thickness = 2
    FOV.Filled = false
    FOV.Transparency = 1

    RunService.RenderStepped:Connect(function()
        if not getgenv().toggled then
            pcall(function() FOV.Visible = false end)
            return
        end

        local mousePos = UserInputService:GetMouseLocation()
        pcall(function()
            FOV.Position = Vector2.new(mousePos.X, mousePos.Y)
            FOV.Radius = getgenv().RingFOV
            FOV.Visible = true
        end)
    end)
end

local client = rawget(_G, "client") or {}
pcall(function()
    if not client.bulletonlocalhitplayer then
        local success, mod = pcall(function()
            return require(game:GetService("ReplicatedStorage").Game.Item.Gun)
        end)
        if success and type(mod) == "table" and mod.BulletEmitterOnLocalHitPlayer then
            client.bulletonlocalhitplayer = mod.BulletEmitterOnLocalHitPlayer
        end
    end
end)

local configs = rawget(_G, "configs") or {}
configs.combat = configs.combat or {}
if rawget(_G, "configs") == nil then
    _G.configs = configs
end

local epichook = nil
client.headshotCorrection = (function(boolean)
    if boolean then
        pcall(function()
            if client.bulletonlocalhitplayer and type(client.bulletonlocalhitplayer) == "function" and type(hookfunction) == "function" then
                epichook = hookfunction(client.bulletonlocalhitplayer, function(...)
                    local bulletshot = {...}
                    if bulletshot[15] and type(bulletshot[15]) == "table" then
                        bulletshot[15].isWallbang = false
                        bulletshot[15].isHeadshot = true
                    end
                    if type(epichook) == "function" then
                        return epichook(unpack(bulletshot))
                    else
                        return nil
                    end
                end)
            end
        end)
    else
        pcall(function()
            if client.bulletonlocalhitplayer and type(isfunctionhooked) == "function" and isfunctionhooked(client.bulletonlocalhitplayer) then
                restorefunction(client.bulletonlocalhitplayer)
            end
        end)
    end
end)

if rawget(_G, "client") == nil then
    _G.client = client
end

local function InRingFOV(part)
    if not part or not Camera then return false end
    local screenPos, onScreen = Camera:WorldToViewportPoint(part.Position)
    if not onScreen then return false end

    local mousePos = UserInputService:GetMouseLocation()
    local dist = (Vector2.new(screenPos.X, screenPos.Y) - Vector2.new(mousePos.X, mousePos.Y)).Magnitude

    return dist <= getgenv().RingFOV
end

if getgenv().toggled then
    require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = function(...)
        local nearestDistance, nearestEnemy = 500, nil
        local localTeam = LocalPlayer and LocalPlayer.Team or nil

        local localHeadPos = nil
        if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") then
            localHeadPos = LocalPlayer.Character.Head.Position
        end

        for _, v in pairs(Players:GetPlayers()) do
            if v ~= LocalPlayer and v.Team ~= localTeam and v.Character and v.Character:FindFirstChild("Head") then
                if v.Team and v.Team.Name ~= "Criminal" and v.Team.Name ~= "Prisoner" then
                    local dist = localHeadPos and (v.Character.Head.Position - localHeadPos).Magnitude or math.huge

                    if dist < nearestDistance and InRingFOV(v.Character.Head) then
                        nearestDistance = dist
                        nearestEnemy = v
                    end
                end
            end
        end

        local arg = {getgenv().old(...)}
        local isWeaponRelevant = (tostring(getfenv(2).script) == "BulletEmitter" or tostring(getfenv(2).script) == "Taser")

        if isWeaponRelevant and nearestEnemy then
            if nearestEnemy.Character and nearestEnemy.Character:FindFirstChild("Head") then
                arg[1] = nearestEnemy.Character.Head
                arg[2] = nearestEnemy.Character.Head.Position
            end

            pcall(function()
                if configs and configs.combat then
                    configs.combat.alwaysheadshot = true
                end
                if client and type(client.headshotCorrection) == "function" then
                    client.headshotCorrection(true)
                end
            end)
        else
            pcall(function()
                if configs and configs.combat then
                    configs.combat.alwaysheadshot = false
                end
                if client and type(client.headshotCorrection) == "function" then
                    client.headshotCorrection(false)
                end
            end)
        end

        return unpack(arg)
    end
else
    require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = getgenv().old
    pcall(function()
        if client and type(client.headshotCorrection) == "function" then
            client.headshotCorrection(false)
        end
    end)
end
