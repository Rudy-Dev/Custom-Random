local Random = {}

local pi = 3.141

function Random.Range(min, max)
    local result = math.random(min, max)

    return result
end


function Random.InsideUnitCircle()
    local result = Vector2.new;

    local M_PI = pi

    local a = Random.Range(0, 1)

    local theta = 2 * M_PI * a;
    local phi = math.Acos(1 * Random.Range(0, 1));
    local x = math.Sin(phi) * math.Cos(theta);
    local y = math.Sin(phi) * math.Sin(theta);
    local z = math.Cos(phi);

    result.x = x;
    result.y = y;

    return result
end


return Random
