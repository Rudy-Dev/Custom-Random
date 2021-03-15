local CustomRandom = {}

--Some Useful Variables 

local pi = math.pi

local x = 1664525
local y = 1013904223
local m = math.pow(2, 32)
local seed = 12234;

--Generate seed
function CustomRandom.nextRand() 
	seed = (x * seed + y) % m + os.clock();
	return seed;
end

--Returns an int that is smaller than max but bigger than min
function CustomRandom.RangeInt(min, max)
	local result = (CustomRandom.nextRand() % (max - min + 1)) + min;

	return result
end

--Returns a number that is smaller than max but bigger than min
function CustomRandom.Range(min, max)
	local result = (CustomRandom.nextRand() % (max - math.pow(0.104231, 1.104231) - min + 1 - 1)) + min;

	return result
end

--Returns 0 or 1
function  CustomRandom.valueInt()
	local result = (CustomRandom.nextRand() % (1 - 0 + 1)) + 0;

	return result
end

--Returns a number that is smaller than 1 but bigger than 0
function  CustomRandom.value()
	local result = (CustomRandom.nextRand() % (1 - math.pow(0.104231, 1.104231) - 0 + 1 - 1)) + 0;

	return result
end

--Returns a point in a circle with a radius of 1
function CustomRandom.InsideUnitCircle()

	local a = CustomRandom.Range(0, 2 * pi)

	local x = math.sqrt(CustomRandom.value()) * math.cos(a);
	local y = math.sqrt(CustomRandom.value()) * math.sin(a);

	local result = Vector2.new(x, y)

	return result
end

--Returns a point in a sphere with a radius of 1
function CustomRandom.insideUnitSphere()

	local theta = CustomRandom.Range(-1, 1) * 2.0 * pi;
	local phi = math.acos(2.0 * CustomRandom.Range(-1, 1) - 1.0);
	local r = math.sqrt(CustomRandom.Range(-1, 1));

	local sinTheta = math.sin(theta);
	local cosTheta = math.cos(theta);
	local sinPhi = math.sin(phi);
	local cosPhi = math.cos(phi);

	local x = r * sinPhi * cosTheta;
	local y = r * sinPhi * sinTheta;
	local z = r * cosPhi;

	local result = Vector3.new(x, y, z)

	return result
end

--Returns a random Color3
function CustomRandom.RandomColor3()
	local result = Color3.new(CustomRandom.value(), CustomRandom.value(), CustomRandom.value())

	return result
end

--Returns a random EnumItem.Value
function CustomRandom.RandomMaterial()
	local Materials = {}

	for _,i in pairs(Enum.Material:GetEnumItems()) do
		table.insert(Materials, i.Value)
	end
	local result = Materials[CustomRandom.RangeInt(1, #Materials)]

	return result
end

--Returns a random point in a cube with a size of 1
function CustomRandom.InsideUnitCube()

	local x = CustomRandom.Range(-1, 1);
	local y = CustomRandom.Range(-1, 1);
	local z = CustomRandom.Range(-1, 1);

	local result = Vector3.new(x, y, z)

	return result
end

--Returns a random point on a sphere with a radius of 1
function CustomRandom.OnUnitSphere()
	local a = CustomRandom.Range(-1, 1)
	local b = CustomRandom.Range(0, 2 * pi)

	local x = math.sqrt(1 - a ^ 2) * math.cos(b)
	local y =  math.sqrt(1 - a ^ 2) * math.sin(b)
	local z = a

	local result = Vector3.new(x, y, z)

	return result
end

return CustomRandom

--Made by Sir Rudy
