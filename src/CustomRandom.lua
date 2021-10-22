local CustomRandom = {}

local Rand = Random.new()

--Returns a point in a circle with a radius of 1
function CustomRandom.InsideUnitCircle(): Vector2
	local x = Rand:NextNumber(0, 2 * math.pi)

	return Vector2.new(math.sqrt(Rand:NextNumber()) * math.cos(x), math.sqrt(Rand:NextNumber()) * math.sin(x))
end

--Returns a point in a sphere with a radius of 1
function CustomRandom.insideUnitSphere(): Vector3
	local x = Rand:NextNumber(-1, 1) * 2.0 * math.pi
	local y = math.acos(2.0 * Rand:NextNumber(-1, 1) - 1.0)
	local z = math.sqrt(Rand:NextNumber(-1, 1))

	return Vector3.new(z * math.sin(y) * math.cos(x), z * math.sin(y) * math.sin(x), z * math.cos(y))
end

--Returns a random Color3
function CustomRandom.RandomColor3(): Color3
	return Color3.new(Rand:NextNumber(), Rand:NextNumber(), Rand:NextNumber())
end

--Returns a random Enum item, WARNING: doesn't work with types at all, you may want to cast the type of return
function CustomRandom.RandomEnum(enumType: Enum): EnumItem
	local enum = enumType:GetEnumItems()
	return enum[Rand:NextInteger(1, #enum)]
end

--Returns a random point in a cube with a size of 1
function CustomRandom.InsideUnitCube(): Vector3
	return Vector3.new(Rand:NextNumber(), Rand:NextNumber(), Rand:NextNumber())
end

--Returns a random point on a sphere with a radius of 1
function CustomRandom.OnUnitSphere(): Vector3
	local x = Rand:NextNumber(-1, 1)
	local y = Rand:NextNumber(0, 2 * math.pi)

	return Vector3.new(math.sqrt(1 - x ^ 2) * math.cos(y), math.sqrt(1 - x ^ 2) * math.sin(y), x)
end

return CustomRandom
