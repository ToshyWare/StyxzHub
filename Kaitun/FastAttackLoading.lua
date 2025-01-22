local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Net = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net")
local Player = game.Players.LocalPlayer
local Enemies = game.Workspace:WaitForChild("Enemies")
local Characters = game.Workspace:WaitForChild("Characters")
local RunService = game:GetService("RunService")

local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")
local RegisterHit = Net:WaitForChild("RE/RegisterHit")

local FastAttack = {
    Distance = 60,
    Equipped = nil
}

local function IsAlive(character)
    return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
end

local function ProcessEnemies(OthersEnemies, Folder)
    local BasePart = nil
    for _, enemy in Folder:GetChildren() do
        local head = enemy:FindFirstChild("UpperTorso")
        if head and IsAlive(enemy) and Player:DistanceFromCharacter(head.Position) < FastAttack.Distance then
            if enemy ~= Player.Character then
                table.insert(OthersEnemies, { enemy, head })
                BasePart = head
            end
        end

    end
    return BasePart
end



function FastAttack:Attack(BasePart, OthersEnemies)
    RegisterAttack:FireServer(0)
    RegisterHit:FireServer(BasePart, OthersEnemies)
end



function FastAttack:AttackNearest()
    local OthersEnemies = {}
    local Part1 = ProcessEnemies(OthersEnemies, Enemies)
    local Part2 = ProcessEnemies(OthersEnemies, Characters)
    if #OthersEnemies > 0 then
        self:Attack(Part1 or Part2, OthersEnemies)
    end
end



function FastAttack:BladeHits()
    local Equipped = IsAlive(Player.Character) and Player.Character:FindFirstChildOfClass("Tool")
    if Equipped and Equipped.ToolTip ~= "Gun" then
        self:AttackNearest()
    end
end

RunService.Stepped:Connect(function()
    if not IsAlive(Player.Character) then return end
    FastAttack:BladeHits()
end)
