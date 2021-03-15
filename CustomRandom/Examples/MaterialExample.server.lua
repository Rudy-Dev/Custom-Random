--Example of usage of CustomRandom.RandomMaterial()
--Require Module - https://www.roblox.com/library/6254550249/Random
local CustomRandom = require(6254550249)
local IS = game:GetService("UserInputService")

--You can easily generate materials for the part
local part = Instance.new("Part")
part.Parent = workspace
part.Anchored = true

IS.InputBegan:Connect(function(key)
    if key.KeyCode == Enum.KeyCode.Space then

        part.Material = CustomRandom.RandomMaterial()
    end
end)
