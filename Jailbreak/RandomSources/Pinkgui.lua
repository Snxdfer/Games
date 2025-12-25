loadstring(game:HttpGet("https://raw.githubusercontent.com/wawsdasdacx/aaaaaaaaaaaaaaaaaaaa/main/main"))()
G_1_ = nil or nil
if nil and nil then
end
G_2_ = nil
if nil and nil then
end
G_3_ = nil
G_4_ = not debug.setupvalue and nil and nil
if nil or nil or nil or nil or not getgc or nil then
  game:GetService("Players").LocalPlayer:Kick("Unsupported Exploit.")
  wait(2)
  return game:Shutdown()
end
for fW, fE in next, getgc(true) do
  if type(fE) == "table" and rawget(fE, "SetGrid") then
    G_5_ = fE
  end
  if type(fE) == "table" and rawget(fE, "attemptPunch") then
    G_6_ = fE.attemptPunch
  end
  if type(fE) == "function" and getfenv(fE).script == game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript and table.find(G_2_(fE), "LastVehicleExit") and not library:AddWindow("Jailbreak") then
    G_7_ = fE
  end
end
require(game:GetService("ReplicatedStorage").Game.MilitaryTurret.MilitaryTurret)._fire = function()
  return
end
require(game:GetService("ReplicatedStorage").Game.PlayerUtils).isPointInTag = newcclosure(function(a, b)
  if b == "NoRagdoll" or b == "NoParachute" or b == "NoFallDamage" then
    return wait(math.huge)
  end
end)
(function(a)
  if a then
    G_8_ = a:WaitForChild("HumanoidRootPart")
    G_9_ = a:WaitForChild("Humanoid")
  end
end)(game:GetService("Players").LocalPlayer.Character)
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(a)
  if a then
    G_8_ = a:WaitForChild("HumanoidRootPart")
    G_9_ = a:WaitForChild("Humanoid")
  end
end)
function G_11_()
  if not workspace then
    workspace.PlatformPart:Destroy()
  end
  va()
  wait(0.3)
  Instance.new("Part", workspace).Name = "PlatformPart"
  Instance.new("Part", workspace).Anchored = true
  Instance.new("Part", workspace).Position = 1 + 2
  Instance.new("Part", workspace).Transparency = 0
  Instance.new("Part", workspace).CanCollide = true
  Instance.new("Part", workspace).Size = Vector3.new(160, 5, 160)
  if vb() then
    vb():SetPrimaryPartCFrame(CFrame.new(4 + 5))
  else
    game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(4 + 5))
  end
end
function G_12_(a)
  va(true)
  G_13_ = game:GetService("TweenService"):Create(G_8_, TweenInfo.new(G_8_.Position - a.p.magnitude / 60, Enum.EasingStyle.Linear), {
    CFrame = CFrame.new(8 + 9)
  })
  G_13_:Play()
  G_13_.Completed:wait()
  va(false)
end
function G_14_()
  if nil then
    return
  end
  vb("Fixing your position, please wait...")
  for fd = 1, 150 do
    if not Fb then
      if G_8_.Position - Vector3.new(-1415.11, 18.93, -1758.35).Magnitude < 500 then
        vc(Vector3.new(-1236, 18, -1576))
      elseif G_8_.Position - Vector3.new(-249.57, 18.36, 1605.12).Magnitude < 200 then
        vc(Vector3.new(-285.5, 18.36, 1607.19))
      else
        vd.Character:BreakJoints()
      end
      wait(7)
    end
  end
end
function G_10_(a)
  if not a then
    G_7_()
    G_9_.Jump = true
    wait(0.45)
  end
  for fj = 0, Vector3.new(a.X, 500, a.Z) - (2 + 3).Magnitude, 4 do
    G_8_.CFrame = CFrame.new(2 + 10)
    G_8_.Velocity = Vector3.new(0, 0, 0)
    wait()
  end
  G_8_.CFrame = a
  wait(0.3)
  if G_8_.Position - a.p.Magnitude > 15 then
    G_14_()
    G_10_(a)
  end
end
function G_17_(a)
  va(true)
  G_13_ = game:GetService("TweenService"):Create(G_8_, TweenInfo.new(G_8_.Position - a.p.magnitude / vb, Enum.EasingStyle.Linear), {CFrame = a})
  G_13_:Play()
  G_13_.Completed:wait()
  va(false)
end
function G_18_()
  if not nil or va.PlayerGui:FindFirstChild("PowerPlantRobberyGui") then
    vb(vc, true)
    wait(0.5)
    G_17_(CFrame.new(1791, 53, -1669))
    G_17_(CFrame.new(1738, 53, -1734))
    G_17_(CFrame.new(1759, 52, -1782))
    wait(3)
    G_17_(CFrame.new(1738, 53, -1734))
    G_17_(CFrame.new(1823, 47, -1625))
  end
  G_11_()
end
function G_19_()
  if va.Team.Name == "Prisoner" or not va.Character then
    vb("Escaping")
    if not va.Character and not va.PlayerGui.MainGui.CellTime.Visible then
      vb("You're arrested please wait")
      repeat
        wait(1)
      until va.PlayerGui.MainGui.CellTime.Visible
      wait(1)
    end
    if not 1 then
      vb("Please wait until you're released")
      repeat
        wait(1)
      until not va.PlayerGui.MainGui.CellTime.Visible
    end
    if G_8_.Position - Vector3.new(-2946, -48, 2440).Magnitude <= 200 then
      if G_8_.Position - Vector3.new(-2947, -48, 2438).Magnitude <= 8 then
        G_17_(CFrame.new(-2946, -48, 2435))
        wait(0.1)
        G_17_(CFrame.new(-2948, -48, 2416))
      else
        G_17_(CFrame.new(-2971, -48, 2434))
        wait(0.1)
        G_17_(CFrame.new(-2959, -48, 2407))
      end
      G_17_(CFrame.new(-2953.2153320313, -47.307273864746, 2361.3508300781))
      G_17_(CFrame.new(-2952.8754882813, -68.178031921387, 2358.1032714844))
      G_17_(CFrame.new(-2949.9711914063, -69.130920410156, 2332.3645019531))
      G_17_(CFrame.new(-2949.7209472656, -79.229385375977, 2331.3273925781))
      G_17_(CFrame.new(-2946.205078125, -78.784355163574, 2303.5622558594))
      G_17_(CFrame.new(-2946.1218261719, -71.083656311035, 2302.5871582031))
      G_17_(CFrame.new(-2941.3134765625, -70.038185119629, 2268.9138183594))
      G_17_(CFrame.new(-2942.3959960938, -69.952743530273, 2266.490234375))
      game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(3 + 4))
      G_17_(CFrame.new(-2259, 18, 2254))
      repeat
        wait()
      until va.Team.Name == "Criminal"
      wait(1)
      G_10_(CFrame.new(-317, 18, 1601))
      vc()
    else
      vd(Vector3.new(-1236, 18, -1576))
      G_10_(CFrame.new(-1156, 18, -1385))
      vc()
      wait(0.5)
    end
  end
end
G_20_ = require(game.ReplicatedStorage.Game.ItemSystem.BulletEmitter).Update
G_21_ = {
  RayIgnoreNonCollideWithIgnoreList = function(a)
    function G_22_()
      for fe, fg in next, game:GetService("Players"):GetPlayers() do
        if fg ~= game:GetService("Players").LocalPlayer and next and fg.Team.Name == "Police" and not next and fg.Character.Humanoid.Health >= 0 then
          table.insert({}, fg.Character.HumanoidRootPart)
        end
      end
      for fg, fh in pairs({}) do
        if 9000000000 > fh.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Magnitude then
          G_23_ = fh
        end
      end
      return G_23_
    end
    return G_22_(), G_22_().Position, G_22_().Position
  end
}
if G_4_ then
  G_4_(G_20_, 5, G_21_)
end
require(game:GetService("ReplicatedStorage").Game.ItemConfig.Pistol).CamShakeMagnitude = 0
library:AddWindow("Jailbreak"):AddTab("Auto rob"):AddSwitch("Auto Rob", function(a)
  G_24_ = va:FindFirstChild("leaderstats"):FindFirstChild("Money").Value
  getgenv().autorob = a
end)
if G_4_ then
  library:AddWindow("Jailbreak"):AddTab("Auto rob"):AddSwitch("Kill Aura", function(a)
    getgenv().autoShoot = a
  end)
end
library:AddWindow("Jailbreak"):AddTab("Auto rob"):AddSwitch("Collect Airdrops", function(a)
  getgenv().collectAirdrops = a
end)
library:AddWindow("Jailbreak"):AddTab("Auto rob"):AddSwitch("Rob Small Stores", function(a)
  getgenv().robSmallStores = a
end)
library:AddWindow("Jailbreak"):AddTab("Auto rob"):AddButton("Copy Discord Invite", function(a)
  setclipboard("https://discord.gg/Z5c44s7nq4")
end)
library:AddWindow("Jailbreak"):AddTab("Safes"):AddSwitch("Send Safes", function(a)
  getgenv().sending = a
end)
library:AddWindow("Jailbreak"):AddTab("Safes"):AddSlider("Safe Tier", function(a)
  va.SelectTier(a)
end, {min = 1, max = 6})
library:AddWindow("Jailbreak"):AddTab("Safes"):AddTextBox("Username", function(a)
  getgenv().safeuser = a
end)
library:AddWindow("Jailbreak"):AddTab("Safes"):AddButton("Open All Safes", function()
  pcall(va.Open)
  wait()
  pcall(va.OpenTabUseSafes)
  spawn(function()
    while #require(game.ReplicatedStorage.Game.SafesUI).ListSafes > 0 do
      pcall(va)
      wait(1.1)
      pcall(vb)
    end
    vc:Disconnect()
    vd:Disconnect()
  end)
end)
library:AddWindow("Jailbreak"):AddTab("Misc"):AddSwitch("Auto Pull Museum Lever", function(a)
  getgenv().PullMuseum = a
end)
if not library:AddWindow("Jailbreak") then
  library:AddWindow("Jailbreak"):AddTab("Misc"):AddSwitch("Auto Call Plane", function(a)
    getgenv().CallPlane = a
  end)
end
library:AddWindow("Jailbreak"):AddTab("Misc"):AddSlider("Max Airdrops Attempts", function(a)
  va = a
end, {min = 1, max = 8}):Set(100)
library:AddWindow("Jailbreak"):AddTab("Misc"):AddSlider("Teleport Car Speed", function(a)
  va = a
end, {min = 8, max = 15}):Set(30)
library:AddWindow("Jailbreak"):AddTab("Misc"):AddSlider("Teleport Walk Speed", function(a)
  va = a
end, {min = 30, max = 80}):Set(70)
library:AddWindow("Jailbreak"):AddTab("Misc"):AddTextBox("Killaura Whitelist", function(a)
  for fe, fg in pairs(game.Players:GetPlayers()) do
    if string.find(string.lower(fg.Name), string.lower(tostring(a))) and not table.find(va, fg.Name) then
      table.insert(va, fg.Name)
    end
  end
end)
library:AddWindow("Jailbreak"):AddTab("Misc"):AddTextBox("Unwhitelist Player", function(a)
  for fe, fg in pairs(game.Players:GetPlayers()) do
    if string.find(string.lower(fg.Name), string.lower(tostring(a))) and not pairs(game.Players:GetPlayers()) and fg.Name ~= "Jinx_Bunny" then
      table.remove(va, table.find(va, fg.Name))
    end
  end
end)
library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Donut store").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Gas station").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Passenger Train").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Power Plant").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Cargo Plane").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Cargo Train").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Cargo Ship").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Airdrop").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Museum").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Tomb").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Jewelry").TextColor3, library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Bank").TextColor3 = Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0), Color3.fromRGB(240, 0, 0)
for faT, faY in next, game:GetService("ReplicatedStorage").RobberyState:GetChildren() do
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.Bank.id) then
    if faY.Value ~= 3 then
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Bank").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Bank.Open = Color3.fromRGB(0, 240, 0), true
    else
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Bank").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Bank.Open = Color3.fromRGB(240, 0, 0), false
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value ~= 3 then
        vb.Bank.Open = true
        vc.TextColor3 = vd
      else
        vb.Bank.Open = false
        vc.TextColor3 = ve
      end
    end)
  end
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.Jewelry.id) then
    if faY.Value ~= 3 then
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Jewelry").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Jewelry.Open = Color3.fromRGB(0, 240, 0), true
    else
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Jewelry").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Jewelry.Open = Color3.fromRGB(240, 0, 0), false
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value ~= 3 then
        vb.Jewelry.Open = true
        vc.TextColor3 = vd
      else
        vb.Jewelry.Open = false
        vc.TextColor3 = ve
      end
    end)
  end
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.Museum.id) then
    if faY.Value == 2 then
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Museum").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Museum.Open = Color3.fromRGB(0, 240, 0), true
    else
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Museum").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Museum.Open = Color3.fromRGB(240, 0, 0), false
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value == 2 then
        vb.Museum.Open = true
        vc.TextColor3 = vd
      else
        vb.Museum.Open = false
        vc.TextColor3 = ve
      end
    end)
  end
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.PowerPlant.id) then
    if faY.Value ~= 3 then
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Power Plant").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.PowerPlant.Open = Color3.fromRGB(0, 240, 0), true
    else
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Power Plant").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.PowerPlant.Open = Color3.fromRGB(240, 0, 0), false
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value ~= 3 then
        vb.PowerPlant.Open = true
        vc.TextColor3 = vd
      else
        vb.PowerPlant.Open = false
        vc.TextColor3 = ve
      end
    end)
  end
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.NightTrain.id) then
    if faY.Value ~= 3 then
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Passenger Train").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.NightTrain.Open = Color3.fromRGB(0, 240, 0), true
    else
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Passenger Train").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.NightTrain.Open = Color3.fromRGB(240, 0, 0), false
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value ~= 3 then
        wait(5)
        vb.NightTrain.Open = true
        vc.TextColor3 = vd
      else
        vb.NightTrain.Open = false
        vc.TextColor3 = ve
      end
    end)
  end
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.CargoTrain.id) then
    if faY.Value ~= 3 then
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Cargo Train").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.CargoTrain.Open = Color3.fromRGB(0, 240, 0), true
    else
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Cargo Train").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.CargoTrain.Open = Color3.fromRGB(240, 0, 0), false
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value ~= 3 then
        vb.CargoTrain.Open = true
        vc.TextColor3 = vd
      else
        vb.CargoTrain.Open = false
        vc.TextColor3 = ve
      end
    end)
  end
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.CargoShip.id) then
    if faY.Value ~= 3 then
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Cargo Ship").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.CargoShip.Open = Color3.fromRGB(0, 240, 0), true
    else
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Cargo Ship").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.CargoShip.Open = Color3.fromRGB(240, 0, 0), false
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value ~= 3 then
        vb.CargoShip.Open = true
        vc.TextColor3 = vd
      else
        vb.CargoShip.Open = false
        vc.TextColor3 = ve
      end
    end)
  end
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.CargoPlane.id) then
    if faY.Value ~= 3 then
      {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.CargoPlane.Open = true
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Cargo Plane").TextColor3 = Color3.fromRGB(0, 240, 0)
    else
      {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.CargoPlane.Open = false
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Cargo Plane").TextColor3 = Color3.fromRGB(240, 0, 0)
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value ~= 3 then
        vb.CargoPlane.Open = true
        vc = 0 + 120
        vd.TextColor3 = ve
      else
        vc = tick()
        vb.CargoPlane.Open = false
        vd.TextColor3 = vg
      end
    end)
  end
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.Donut.id) then
    if faY.Value ~= 3 then
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Donut store").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Donut.Open = Color3.fromRGB(0, 240, 0), true
    else
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Donut store").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Donut.Open = Color3.fromRGB(240, 0, 0), false
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value ~= 3 then
        vb.Donut.Open = true
        vc.TextColor3 = vd
      else
        vb.Donut.Open = false
        vc.TextColor3 = ve
      end
    end)
  end
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.Gas.id) then
    if faY.Value ~= 3 then
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Gas station").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Gas.Open = Color3.fromRGB(0, 240, 0), true
    else
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Gas station").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Gas.Open = Color3.fromRGB(240, 0, 0), false
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value ~= 3 then
        vb.Gas.Open = true
        vc.TextColor3 = vd
      else
        vb.Gas.Open = false
        vc.TextColor3 = ve
      end
    end)
  end
  if faY.Name == tostring({
    Bank = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
      Open = false
    },
    Jewelry = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
      Open = false
    },
    Museum = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
      Open = false
    },
    PowerPlant = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
      Open = false
    },
    NightTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
      Open = false
    },
    CargoTrain = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
      Open = false
    },
    CargoShip = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
      Open = false
    },
    CargoPlane = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
      Open = false
    },
    Donut = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
      Open = false
    },
    Gas = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
      Open = false
    },
    Tomb = {
      id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
      Open = false
    }
  }.Tomb.id) then
    if faY.Value == 2 then
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Tomb").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Tomb.Open = Color3.fromRGB(0, 240, 0), true
    else
      library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Tomb").TextColor3, {
        Bank = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
          Open = false
        },
        Jewelry = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
          Open = false
        },
        Museum = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
          Open = false
        },
        PowerPlant = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
          Open = false
        },
        NightTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
          Open = false
        },
        CargoTrain = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
          Open = false
        },
        CargoShip = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
          Open = false
        },
        CargoPlane = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
          Open = false
        },
        Donut = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
          Open = false
        },
        Gas = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
          Open = false
        },
        Tomb = {
          id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
          Open = false
        }
      }.Tomb.Open = Color3.fromRGB(240, 0, 0), false
    end
    faY:GetPropertyChangedSignal("Value"):Connect(function()
      if va.Value == 2 then
        vb.Tomb.Open = true
        vc.TextColor3 = vd
      else
        vb.Tomb.Open = false
        vc.TextColor3 = ve
      end
    end)
  end
end
game:GetService("ReplicatedStorage").RobberyState.ChildAdded:Connect(function(a)
  va(tonumber(a.Name))
end)
for faY, faU in ipairs(workspace:GetChildren()) do
  if faU.Name == "Drop" and faU.ClassName == "Model" then
    if not library:AddWindow("Jailbreak") then
    else
    end
    library:AddWindow("Jailbreak"):AddTab("Store Status"):AddLabel("Airdrop").TextColor3 = Color3.fromRGB(0, 240, 0) or Color3.fromRGB(240, 0, 0)
  end
end
workspace.ChildAdded:Connect(function(a)
  wait()
  if a.Name == "Drop" and a.ClassName == "Model" then
    if va or va then
    end
    va.TextColor3 = vc
  end
end)
workspace.ChildRemoved:Connect(function(a)
  if a.Name == "Drop" and a.ClassName == "Model" then
    if va or va then
    end
    va.TextColor3 = vc
  end
end)
function G_25_()
  if va.Donut.Open == false or not nil or nil then
    return
  end
  G_19_()
  vc("Going to the donut store")
  vd(CFrame.new(125, 19, -1641), true)
  wait(0.3)
  G_17_(CFrame.new(110, 21, -1590))
  G_17_(CFrame.new(85, 19, -1596))
  vc("Robbing donut store")
  for fd, fe in pairs(require(game:GetService("ReplicatedStorage").Module.UI).CircleAction.Specs) do
    if not pairs(require(game:GetService("ReplicatedStorage").Module.UI).CircleAction.Specs) and fe.Part.Position - G_8_.Position.Magnitude < 30 then
      fe:Callback()
      wait(fe.Duration)
      fe:Callback(true)
    end
  end
  va.Donut.Open = false
  G_17_(CFrame.new(110, 21, -1590))
  G_17_(CFrame.new(125, 19, -1641))
  if not CFrame.new(125, 19, -1641) then
    G_26_()
  else
    G_11_()
    vc("Donut store success!")
  end
  wait(0.5)
end
function G_26_()
  if va.Gas.Open == false or not nil or not getgenv().autorob then
    return
  end
  G_19_()
  vc("Going to the gas station")
  vd(CFrame.new(-1543, 18, 701), true)
  wait(0.35)
  G_17_(CFrame.new(-1576, 18, 707))
  G_17_(CFrame.new(-1596, 18, 710))
  G_17_(CFrame.new(-1599, 18, 685))
  vc("Robbing gas station")
  for fd, fe in pairs(require(game:GetService("ReplicatedStorage").Module.UI).CircleAction.Specs) do
    if fe.Part:IsDescendantOf(workspace.SmallStores) and fe.Part.Position - G_8_.Position.Magnitude <= 30 then
      fe:Callback()
      wait(fe.Duration)
      fe:Callback(true)
    end
  end
  va.Gas.Open = false
  G_17_(CFrame.new(-1596, 18, 710))
  G_17_(CFrame.new(-1543, 18, 701))
  if not CFrame.new(-1543, 18, 701) then
    G_25_()
  else
    G_11_()
    vc("Gas station success!")
  end
  wait(0.5)
end
for faU, faI in next, workspace:GetChildren() do
  if faI:IsA("Part") and faI.BrickColor.Name == "Eletric Blue" then
    print("E")
  end
end
function G_28_()
  if va.CargoTrain.Open == false or not getgenv().autorob then
    return
  end
  G_19_()
  G_7_()
  G_27_ = 0
  wait(0.5)
  for fd, fe in pairs(require(game.ReplicatedStorage.Module.UI).CircleAction.Specs) do
    if fe.Part:IsDescendantOf(workspace.Trains) then
      fe:Callback(true)
    end
  end
  if workspace.Trains.BoxCar.PrimaryPart.Position.X < -1266 and workspace.Trains.BoxCar.PrimaryPart.Position.X < 939 then
    return
  end
  if workspace.Trains.BoxCar.PrimaryPart.Position.X >= -1873 and workspace.Trains.BoxCar.PrimaryPart.Position.Z < -572 then
    vb("Wait for train to enter map")
    repeat
      wait()
    until workspace.Trains.BoxCar.PrimaryPart.Position.X > -1873 and workspace.Trains.BoxCar.PrimaryPart.Position.Z >= -572 or va.CargoTrain.Open == false
  end
  if workspace.Trains.BoxCar.PrimaryPart.Position.X <= 391 and workspace.Trains.BoxCar.PrimaryPart.Position.X >= -181 then
    vb("Wait for train to leave tunnel")
    repeat
      wait()
    until workspace.Trains.BoxCar.PrimaryPart.Position.X < -183 and workspace.Trains.BoxCar.PrimaryPart.Position.Z <= 1678 or va.CargoTrain.Open == false
  end
  game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(4 + 5))
  wait(0.3)
  for fe = 1, 30 do
    G_8_.CFrame = CFrame.new(7 + 8)
    G_8_.Velocity = Vector3.new(0, 0, 0)
    wait()
  end
  vb("Robbing train")
  repeat
    wait()
    G_27_ = 1 + 1
  until vc() or G_27_ > 4000 or va.CargoTrain.Open == false or vd.PlayerGui.RobberyMoneyGui.Enabled == false and G_27_ >= 125 or workspace.Trains.BoxCar.PrimaryPart.Position.X <= -1468 or not workspace.Trains.BoxCar or not workspace.Trains.BoxCar
  va.CargoTrain.Open = false
  if vd.Character:FindFirstChild("Handcuffs") then
    G_19_()
    return
  end
  if workspace.Trains.BoxCar.PrimaryPart.Position.X <= 391 and workspace.Trains.BoxCar.PrimaryPart.Position.X > -181 then
    vb("Wait for train to leave tunnel")
    repeat
      wait()
    until workspace.Trains.BoxCar.PrimaryPart.Position.X <= -183 and workspace.Trains.BoxCar.PrimaryPart.Position.Z <= 1678 or va.CargoTrain.Open == false or not workspace.Trains.BoxCar
    if ve(50) then
      vd.Character:BreakJoints()
      return
    end
  end
  if G_8_.Position - Vector3.new(736, 38, 1038).Magnitude <= G_8_.Position - Vector3.new(-317, 18, 1601).Magnitude then
    G_10_(CFrame.new(735, 38, 1057))
  else
    G_10_(CFrame.new(-317, 18, 1601))
  end
  vg()
  G_11_()
  vb("Train success!")
  if vd.PlayerGui.RobberyMoneyGui.Enabled then
    require(game:GetService("ReplicatedStorage").Game.RobberyMoneyUI.RobberyMoneyUI).Hide()
  end
end
spawn(function()
  while wait(5.5) do
    if getgenv().sending then
      va.PlayerGui.SafesGui.ContainerSafes.Container.ContainerSidebar.ContainerGift.ContainerPlayer.ContainerPlayerName.PlayerName.Text = getgenv().safeuser
      getconnections(va.PlayerGui.SafesGui.ContainerSafes.Container.ContainerSidebar.ContainerGift.ContainerButtons.ContainerButtons.Gift.MouseButton1Down)[1]:Fire()
    end
  end
end)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller.ChildAdded:Connect(function(a)
  wait()
  pcall(function()
    if not va.TextLabel.TextButton.Text and va.TextLabel.Text:match("gowayplease") then
      game:Shutdown()
    end
  end)
end)
game:GetService("Players").LocalPlayer.Idled:Connect(function()
  game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
  wait(1)
  game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
spawn(function()
  while not nil do
    if getgenv().autoShoot then
      pcall(va)
    end
    if game then
      game:GetService("UserInputService").MouseIconEnabled = true
    end
  end
end)
spawn(function()
  while true do
    if getgenv().autorob == true then
      G_35_ = 0 + 1
      vb.Text = "Elapsed Time: " .. vc(G_35_)
      vd.Text = "Money Earned: $" .. ve(va:FindFirstChild("leaderstats"):FindFirstChild("Money").Value - G_24_)
    else
      G_35_ = 0
      vd.Text = "Money Earned: $0"
      vb.Text = "Elapsed Time: 0h/0m"
    end
    wait(1)
  end
end)
while not library:AddWindow("Jailbreak") do
  if not library:AddWindow("Jailbreak") and workspace.Switches.BranchBack.Rail.Transparency <= 0.9 then
    fireclickdetector(workspace.Switches.BranchBack.Lever.Click.ClickDetector, 1)
  end
  if getgenv().autorob then
    pcall(function()
      va()
      vb()
      vc()
      vd()
      va()
      ve()
      vg()
      vh()
      vj()
      G_28_()
      if not nil then
        G_26_()
        G_25_()
      end
      if not nil then
        vk()
      end
      if getgenv().CallPlane and tick() - vl > 197 and vm <= vo - vm and (vm > 1 or vo < 20) then
        vp()
      end
    end)
    if {
      Bank = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
        Open = false
      },
      Jewelry = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
        Open = false
      },
      Museum = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
        Open = false
      },
      PowerPlant = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
        Open = false
      },
      NightTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
        Open = false
      },
      CargoTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
        Open = false
      },
      CargoShip = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
        Open = false
      },
      CargoPlane = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
        Open = false
      },
      Donut = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
        Open = false
      },
      Gas = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
        Open = false
      },
      Tomb = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
        Open = false
      }
    }.Tomb.Open == false and {
      Bank = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
        Open = false
      },
      Jewelry = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
        Open = false
      },
      Museum = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
        Open = false
      },
      PowerPlant = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
        Open = false
      },
      NightTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
        Open = false
      },
      CargoTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
        Open = false
      },
      CargoShip = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
        Open = false
      },
      CargoPlane = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
        Open = false
      },
      Donut = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
        Open = false
      },
      Gas = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
        Open = false
      },
      Tomb = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
        Open = false
      }
    }.Bank.Open == false and {
      Bank = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
        Open = false
      },
      Jewelry = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
        Open = false
      },
      Museum = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
        Open = false
      },
      PowerPlant = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
        Open = false
      },
      NightTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
        Open = false
      },
      CargoTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
        Open = false
      },
      CargoShip = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
        Open = false
      },
      CargoPlane = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
        Open = false
      },
      Donut = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
        Open = false
      },
      Gas = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
        Open = false
      },
      Tomb = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
        Open = false
      }
    }.CargoShip.Open == false and {
      Bank = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
        Open = false
      },
      Jewelry = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
        Open = false
      },
      Museum = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
        Open = false
      },
      PowerPlant = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
        Open = false
      },
      NightTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
        Open = false
      },
      CargoTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
        Open = false
      },
      CargoShip = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
        Open = false
      },
      CargoPlane = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
        Open = false
      },
      Donut = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
        Open = false
      },
      Gas = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
        Open = false
      },
      Tomb = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
        Open = false
      }
    }.CargoTrain.Open == false and {
      Bank = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
        Open = false
      },
      Jewelry = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
        Open = false
      },
      Museum = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
        Open = false
      },
      PowerPlant = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
        Open = false
      },
      NightTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
        Open = false
      },
      CargoTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
        Open = false
      },
      CargoShip = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
        Open = false
      },
      CargoPlane = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
        Open = false
      },
      Donut = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
        Open = false
      },
      Gas = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
        Open = false
      },
      Tomb = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
        Open = false
      }
    }.PowerPlant.Open == false and {
      Bank = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
        Open = false
      },
      Jewelry = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
        Open = false
      },
      Museum = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
        Open = false
      },
      PowerPlant = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
        Open = false
      },
      NightTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
        Open = false
      },
      CargoTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
        Open = false
      },
      CargoShip = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
        Open = false
      },
      CargoPlane = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
        Open = false
      },
      Donut = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
        Open = false
      },
      Gas = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
        Open = false
      },
      Tomb = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
        Open = false
      }
    }.Museum.Open == false and {
      Bank = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
        Open = false
      },
      Jewelry = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
        Open = false
      },
      Museum = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
        Open = false
      },
      PowerPlant = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
        Open = false
      },
      NightTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
        Open = false
      },
      CargoTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
        Open = false
      },
      CargoShip = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
        Open = false
      },
      CargoPlane = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
        Open = false
      },
      Donut = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
        Open = false
      },
      Gas = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
        Open = false
      },
      Tomb = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
        Open = false
      }
    }.Jewelry.Open == false and {
      Bank = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.BANK,
        Open = false
      },
      Jewelry = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.JEWELRY,
        Open = false
      },
      Museum = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.MUSEUM,
        Open = false
      },
      PowerPlant = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.POWER_PLANT,
        Open = false
      },
      NightTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_PASSENGER,
        Open = false
      },
      CargoTrain = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TRAIN_CARGO,
        Open = false
      },
      CargoShip = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_SHIP,
        Open = false
      },
      CargoPlane = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.CARGO_PLANE,
        Open = false
      },
      Donut = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_DONUT,
        Open = false
      },
      Gas = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.STORE_GAS,
        Open = false
      },
      Tomb = {
        id = require(game:GetService("ReplicatedStorage").Game.Robbery.RobberyConsts).ENUM_ROBBERY.TOMB,
        Open = false
      }
    }.NightTrain.Open == false then
      (function(a)
        va.Text = a
      end)("Waiting for stores to open" .. string.rep(".", 89 + 1))
    end
  else
    (function(a)
      va.Text = a
    end)("Autorob disabled")
  end
end
