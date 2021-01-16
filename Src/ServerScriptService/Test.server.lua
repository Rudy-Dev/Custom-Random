local Random = require(script.Parent.Random)
local is = game:GetService("UserInputService")

is.InputBegan:Connect(function(key)
    if  key.KeyCode == Enum.KeyCode.T then
        bruh()
    end
    
end)
    

function bruh()
     
    for  i = 0, 2000, 1  do
    

        local a = Instance.new("Part")
    
        a.Anchored = true
        a.Position = Random.insideUnitSphere() * 50
        a.Parent = workspace
        a.Shape = Enum.PartType.Ball
        local b = Random.Range(1, 5)
        a.Size = Vector3.new(b, b, b)
        a.Color = Random.RandomColor3()
        a.Material = Random.RandomMaterial()
    
    end
end

