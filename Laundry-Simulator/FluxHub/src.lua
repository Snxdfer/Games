local x = getrawmetatable(game)
setreadonly(x, false)
local old_namecall = x.__namecall

x.__namecall = function(a, ...)
    local method = getnamecallmethod()
    local Args = {...}
    if method == "FireServer" then
        if tostring(Args[2]):find("LocalError") then
            return 
        end
    end
    return old_namecall(a, ...)
end

pcall(function()
    function GetClothes() 
        local Clothing = workspace.Debris.Clothing:GetChildren()
        for i,v in pairs(Clothing) do
            local Remote = game.ReplicatedStorage.Events['GrabClothing']
            local Arguments = {
                [1] = v
            }
            Remote:FireServer(unpack(Arguments))
        end
    end
    
    function GetPlot()
        local AllPlots = workspace.Plots:GetChildren()
        for i,v in pairs(AllPlots) do
            if tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
                return v
            end
        end
    end
    
    function LoadWash()
    
        local Plot = GetPlot()
        
        for i,v in pairs(Plot["WashingMachines"]:GetChildren()) do 
            GetClothes()
    
            wait(0.5)
    
            local CFrame = v["MAIN"].CFrame
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
            
            wait(0.5)
            
            local Remote = game.ReplicatedStorage.Events['LoadWashingMachine']
            local Arguments = {
                    [1] = v
            }
            Remote:FireServer(unpack(Arguments))
        end
    
    
    end
    
    function Drop()
        local CFrame = CFrame.new(-142.327789, 4.49800396, -6.91391087, 0.194494158, -9.69223208e-08, 0.980903685, -2.39351117e-08, 1, 1.03555081e-07, -0.980903685, -4.36188969e-08, 0.194494158)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
        wait(0.2)
        local Remote = game.ReplicatedStorage.Events['DropClothesInChute']
        local Arguments = {
            
        }
        Remote:FireServer(unpack(Arguments))
    end
    
    function UnLoadWash()
    
        local Plot = GetPlot()
        
        for i,v in pairs(Plot["WashingMachines"]:GetChildren()) do 
            local CFrame = v["MAIN"].CFrame
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
            
            wait(0.5)
            
            local Remote = game.ReplicatedStorage.Events['UnloadWashingMachine']
            local Arguments = {
                    [1] = v
            }
            Remote:FireServer(unpack(Arguments))
    
            wait(0.5)
    
            Drop()
        end
    end
    
    local UI_Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Snxdfer/Games/refs/heads/main/Laundry-Simulator/FluxHub/FluxUI.lua")()
    local Window = UI_Lib:Window("FluxHub")
    local Section = Window:Section("NICEWORDa Farm")

    _G.IsAutoNICEWORDaOn = false;
    
    Section:Toggle("Auto Farm", function(State)
        _G.IsAutoNICEWORDaOn = State
    end)
        
    function CollectCoins()
        LoadWash()
    
        wait(15)
    
        UnLoadWash()
    
        wait(0.5)
    end

    while wait() do
        if _G.IsAutoNICEWORDaOn then
            if GetPlot() then
                CollectCoins()
            end
        end
    end
end)
