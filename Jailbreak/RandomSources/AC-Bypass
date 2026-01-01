local Players = game:GetService("Players")
local player = Players.LocalPlayer

local OverwriteCnt = 0
local ExitFunc = nil

for _, v in pairs(getgc(true)) do
	if typeof(v) == "function" then
		local name = debug.info(v, "n")
		if name and name:find("CheatCheck") then
			hookfunction(v, function() end)
			OverwriteCnt += 1
		end

		local env = getfenv(v)
		if env and env.script == player.PlayerScripts:FindFirstChild("LocalScript") then
			local constants = getconstants(v)
			if table.find(constants, "LastVehicleExit")
			and table.find(constants, "tick") then
				ExitFunc = v
			end
		end
	end
end
