local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TagUtils = require(ReplicatedStorage:WaitForChild("Tag"):WaitForChild("TagUtils"))

local allowed = {
NoFallDamage = true, 
NoRagdoll = true, 
NoParachute = true
}

TagUtils.isPointInTag = function(_, Tag)
	return allowed[Tag] == true
end
