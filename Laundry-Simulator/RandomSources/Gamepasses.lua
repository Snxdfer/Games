getgenv().enabled = true -- set to false to disable

local LocalPlayer = game:GetService("Players").LocalPlayer
if getgenv().enabled then
    LocalPlayer.Gamepasses.VIP.Value = true
    LocalPlayer.Gamepasses.DoubleCoins.Value = true
    LocalPlayer.Gamepasses.NitroSpeed.Value = true
    LocalPlayer.Gamepasses.DoubleClothes.Value = true
    LocalPlayer.Gamepasses.BasketCapacity.Value = true
    print("all gamepasses unlocked.")
else
    LocalPlayer.Gamepasses.VIP.Value = false
    LocalPlayer.Gamepasses.DoubleCoins.Value = false
    LocalPlayer.Gamepasses.NitroSpeed.Value = false
    LocalPlayer.Gamepasses.DoubleClothes.Value = false
    LocalPlayer.Gamepasses.BasketCapacity.Value = false
    print("all gamepasses disabled.")
end

-- anti reset loop
while wait(1) do
    if getgenv().enabled then
        LocalPlayer.Gamepasses.VIP.Value = true
        LocalPlayer.Gamepasses.DoubleCoins.Value = true
        LocalPlayer.Gamepasses.NitroSpeed.Value = true
        LocalPlayer.Gamepasses.DoubleClothes.Value = true
        LocalPlayer.Gamepasses.BasketCapacity.Value = true
    else
        LocalPlayer.Gamepasses.VIP.Value = false
        LocalPlayer.Gamepasses.DoubleCoins.Value = false
        LocalPlayer.Gamepasses.NitroSpeed.Value = false
        LocalPlayer.Gamepasses.DoubleClothes.Value = false
        LocalPlayer.Gamepasses.BasketCapacity.Value = false
    end
end
