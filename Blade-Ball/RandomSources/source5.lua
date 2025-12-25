-- FIXED (dont know if it works, i havent tested it)

setfpscap(120)

getgenv().AutoParry = true

local inputManager = game:GetService("VirtualInputManager")
local runService = game:GetService("RunService")
local localPlayer = game:GetService("Players").LocalPlayer

local function FindTargetBall()
    for _, ball in workspace:WaitForChild("Balls"):GetChildren() do
        if ball:IsA("BasePart") and ball:GetAttribute("realBall") then
            return ball
        end
    end
end

local function IsPlayerTarget(ball)
    return ball:GetAttribute("target") == localPlayer.Name
end

local eventTriggered = false

task.spawn(function()
    runService.PreRender:Connect(function()
        if not getgenv().AutoParry then return end

        local currentBall = FindTargetBall()
        if not currentBall then return end

        local currentBallVelocity = currentBall.AssemblyLinearVelocity
        if currentBall:FindFirstChild('zoomies') then 
            currentBallVelocity = currentBall.zoomies.VectorVelocity
        end

        local currentBallPosition = currentBall.Position
        local playerCharacterPosition = localPlayer.Character.PrimaryPart.Position
        local directionFromBallToPlayer = (playerCharacterPosition - currentBallPosition).Unit
        local distanceFromPlayerToBall = localPlayer:DistanceFromCharacter(currentBallPosition)
        local dotProductValue = directionFromBallToPlayer:Dot(currentBallVelocity.Unit)
        local velocityMagnitude = currentBallVelocity.Magnitude

        if dotProductValue > 0 then
            local adjustedDistance = distanceFromPlayerToBall - 5
            local estimatedTimeToReach = adjustedDistance / velocityMagnitude

            if IsPlayerTarget(currentBall) and estimatedTimeToReach <= 0.6 and not eventTriggered then
                inputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
                eventTriggered = true
            end
        else
            eventTriggered = false
        end
    end)
end)
