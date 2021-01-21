--Example of usage of CustomRandom.insideUnitSphere()
--Require Module - https://www.roblox.com/library/6254550249/Random
local CustomRandom = require(6254550249)
local RS =game:GetService("RunService")
--You can easily spawn stuff near a point

local part = Instance.new("Part")
part.Parent = workspace
part.Anchored = true

for  i = 0, 1000, 1  do
    

    local a = Instance.new("Part")

    a.Anchored = true
    a.Position = CustomRandom.insideUnitSphere() * 50
    a.Parent = workspace
    a.Shape = Enum.PartType.Ball
    local b = CustomRandom.Range(1, 5)
    a.Size = Vector3.new(b, b, b)
    a.Color = CustomRandom.RandomColor3()
    a.Material = CustomRandom.RandomMaterial()

end

