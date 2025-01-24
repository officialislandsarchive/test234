local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local flying = false
local noclip = false

local function notify(title, description)
    mainScript:Notify({
        Title = title,
        Description = description,
        Duration = 5,
    })
end

tabs.Player:AddLabel({ Title = "Player Settings" })

local flySpeed = 50
local flyConnection

tabs.Player:AddSlider({
    Title = "Fly Speed",
    Min = 10,
    Max = 150,
    Default = 50,
    Callback = function(v)
        flySpeed = v
    end,
})

tabs.Player:AddToggle({
    Title = "Fly",
    Default = false,
    Callback = function(state)
        flying = state
        if flying then
            local bv = Instance.new("BodyVelocity")
            bv.Velocity = Vector3.zero
            bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
            bv.Parent = character.HumanoidRootPart

            flyConnection = game:GetService("RunService").Heartbeat:Connect(function()
                local moveDirection = Vector3.zero
                if humanoid.MoveDirection.Magnitude > 0 then
                    moveDirection = humanoid.MoveDirection
                end
                bv.Velocity = moveDirection * flySpeed
            end)
        else
            if flyConnection then
                flyConnection:Disconnect()
            end
            for _, v in pairs(character.HumanoidRootPart:GetChildren()) do
                if v:IsA("BodyVelocity") then
                    v:Destroy()
                end
            end
        end
    end,
})

tabs.Player:AddToggle({
    Title = "Noclip",
    Default = false,
    Callback = function(state)
        noclip = state
        if noclip then
            game:GetService("RunService").Stepped:Connect(function()
                if noclip and character then
                    for _, v in pairs(character:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide then
                            v.CanCollide = false
                        end
                    end
                end
            end)
        else
            for _, v in pairs(character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end,
})

tabs.Player:AddSlider({
    Title = "Walk Speed",
    Min = 16,
    Max = 300,
    Default = 16,
    Callback = function(v)
        humanoid.WalkSpeed = v
    end,
})

tabs.Player:AddSlider({
    Title = "Jump Power",
    Min = 50,
    Max = 300,
    Default = 50,
    Callback = function(v)
        humanoid.JumpPower = v
    end,
})

tabs.Player:AddButton({
    Title = "Less Lag",
    Callback = function()
        local terrainFolder = game.Workspace:FindFirstChild("TerrainFolder")
        if terrainFolder then
            terrainFolder:Destroy()
            notify("Success", "Terrain Folder removed successfully!")
        else
            notify("Error", "Terrain Folder not found.")
        end
    end,
})
