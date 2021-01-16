local CustomRandom = {}

--Some basic stuff because yes

local pi = math.pi
local StandartRandom = Random.new()

--return value that is smaller than max but bigger than min and its a int

function CustomRandom.RangeInt(min, max)
    local result = StandartRandom:NextInteger(min, max)

    return result
end

--return value that is smaller than max but bigger than min and its a float

function CustomRandom.Range(min, max)
    local result = StandartRandom:NextNumber(min, max)

    return result
end

--return value that is smaller than 1 but bigger than 0 and its an int

function  CustomRandom.valueInt()
    local result = StandartRandom:NextInteger(0, 1)

    return result
end

--return value that is smaller than 1 but bigger than 0 and its a float

function  CustomRandom.value()
    local result = StandartRandom:NextNumber(0, 1)

    return result
end


--return vector2 point in a circle with radius 1

function CustomRandom.InsideUnitCircle()

    local a = CustomRandom.Range(0, 2 * pi)
 
    local x = math.sqrt(CustomRandom.value()) * math.cos(a);
    local y = math.sqrt(CustomRandom.value()) * math.sin(a);

    local result = Vector2.new(x, y)

    return result
end

--return vector3 point in a sphere with radius 1

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

function CustomRandom.RandomColor3()
    local result = Color3.new(CustomRandom.value(), CustomRandom.value(), CustomRandom.value())

    return result
end

function CustomRandom.RandomMaterial()
    local Materials = {}

    for _,enum in pairs(Enum:GetEnums()) do
        if enum == Enum.Material  then
              for _,enumItem in pairs(enum:GetEnumItems()) do
               
               table.insert(Materials, enumItem.Value)
           end
        end 
    end
    local result = Materials[CustomRandom.RangeInt(1, #Materials)]

    return result
end

return CustomRandom

