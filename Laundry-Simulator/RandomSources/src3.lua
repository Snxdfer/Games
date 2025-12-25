local VirtualUser = game:service("VirtualUser")
game:service('Players').LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

local owned_plot = game.Players.LocalPlayer.NonSaveVars.OwnsPlot
while owned_plot.Value == nil do
    wait(1)
end

while wait(0.01) do
    game.Players.LocalPlayer.Gamepasses.NitroSpeed.Value = true

    local basket_status = game.Players.LocalPlayer.NonSaveVars.BasketStatus
    local backpack_amount = game.Players.LocalPlayer.NonSaveVars.BackpackAmount
    local washing_machine_capacity = game.Players.LocalPlayer.NonSaveVars.TotalWashingMachineCapacity
    local basket_size = game.Players.LocalPlayer.NonSaveVars.BasketSize
    local remaining_basket = math.min(basket_size.Value - backpack_amount.Value, washing_machine_capacity.Value - backpack_amount.Value)

    if basket_status.Value == "Dirty" or backpack_amount.Value == 0 then
        while remaining_basket > 0 do
            remaining_basket = math.min(basket_size.Value - backpack_amount.Value, washing_machine_capacity.Value - backpack_amount.Value)

            local clothes_array = game.Workspace.Debris.Clothing:GetChildren()
            local count_clothes = #clothes_array

            for i = 1, #clothes_array do
                if clothes_array[i].Name == "Magnet" then
                    count_clothes -= 1
                end
            end

            if count_clothes == 0 then
                break
            end

            local index = 1
            local closest_cloth = nil
            while closest_cloth == nil do
                if index > #clothes_array then
                    index = 1
                end
                closest_cloth = clothes_array[index]
                index += 1
                wait(0.01)
            end

            local humanoid_root_part = game.Players.LocalPlayer.Character.HumanoidRootPart
            local temp = (closest_cloth.Position - humanoid_root_part.Position).Magnitude

            for i in ipairs(clothes_array) do
                local magnitude = (clothes_array[i].Position - humanoid_root_part.Position).Magnitude
                if (magnitude < temp or clothes_array[i]:FindFirstChild("SpecialTag")) and clothes_array[i].Name ~= "Magnet" then
                    temp = magnitude
                    closest_cloth = clothes_array[i]
                end
            end

            game.ReplicatedStorage.Events.GrabClothing:FireServer(closest_cloth)
            wait(0.01)
        end     

        local washing_machines = owned_plot.Value.WashingMachines:GetChildren()
        for i in ipairs(washing_machines) do
            if washing_machines[i].Config.CycleFinished.Value then
                game.ReplicatedStorage.Events.UnloadWashingMachine:FireServer(washing_machines[i])
                game.ReplicatedStorage.Events.DropClothesInChute:FireServer()
            else
                local temp = washing_machines[i].Config.Capacity.Value
                for j = 1, backpack_amount.Value do
                    game.ReplicatedStorage.Events.LoadWashingMachine:FireServer(washing_machines[i])
                    if temp >= washing_machines[i].Config.Capacity.Value then
                        break
                    end
                end
            end
        end
    end
end
