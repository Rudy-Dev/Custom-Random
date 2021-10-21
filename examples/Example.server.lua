local CustomRandom = require(game.ReplicatedStorage.CustomRandom)

for i = 1, 5000, 1 do
	local part = Instance.new("Part")
	part.Anchored = true
	part.Position = CustomRandom.OnUnitSphere() * 50
	part.Parent = workspace
	part.Color = CustomRandom.RandomColor3()
	part.Material = CustomRandom.RandomEnum(Enum.Material :: Enum)
end
