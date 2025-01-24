return function(tab)

    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local flying = false
    local noclip = false
    local flySpeed = 50
    local flyConnection

    local function Message(Title1, Context1, ButtonText1, DurationTime)
        Fluent:Notify({
            Title = Title1,
            Content = Context1,
            Duration = DurationTime
        })
    end

    local function clearBodyVelocity()
        for _, v in pairs(character.HumanoidRootPart:GetChildren()) do
            if v:IsA("BodyVelocity") then
                v:Destroy()
            end
        end
    end

    local function startFlying()
        local bv = Instance.new("BodyVelocity")
        bv.Velocity = Vector3.zero
        bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
        bv.Parent = character.HumanoidRootPart

        flyConnection = game:GetService("RunService").Heartbeat:Connect(function()
            local moveDirection = humanoid.MoveDirection
            bv.Velocity = moveDirection * flySpeed
        end)
    end

    local function stopFlying()
        if flyConnection then
            flyConnection:Disconnect()
            flyConnection = nil
        end
        clearBodyVelocity()
    end

    local playerSection = tab:AddSection("Player Features")

    playerSection:AddSlider({
        Title = "Fly Speed",
        Min = 10,
        Max = 150,
        Default = 50,
        Callback = function(v)
            flySpeed = v
        end,
    })

    playerSection:AddToggle({
        Title = "Fly",
        Default = false,
        Callback = function(state)
            flying = state
            if flying then
                startFlying()
                Message("Fly Enabled", "You are now flying!", "Got it!", 5)
            else
                stopFlying()
                Message("Fly Disabled", "You are no longer flying.", "Got it!", 5)
            end
        end,
    })

    playerSection:AddToggle({
        Title = "NoClip",
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
                Message("NoClip Enabled", "You can now walk through walls!", "Got it!", 5)
            else
                for _, v in pairs(character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = true
                    end
                end
                Message("NoClip Disabled", "You can no longer walk through walls.", "Got it!", 5)
            end
        end,
    })

    playerSection:AddSlider({
        Title = "Walk Speed",
        Min = 16,
        Max = 300,
        Default = 16,
        Callback = function(v)
            humanoid.WalkSpeed = v
            Message("WalkSpeed Changed", "Your WalkSpeed is now " .. v, "Got it!", 5)
        end,
    })

    playerSection:AddSlider({
        Title = "Jump Power",
        Min = 50,
        Max = 300,
        Default = 50,
        Callback = function(v)
            humanoid.JumpPower = v
            Message("JumpPower Changed", "Your JumpPower is now " .. v, "Got it!", 5)
        end,
    })

    playerSection:AddButton({
        Title = "Less Lag",
        Description = "Removes the TerrainFolder from Workspace to reduce lag.",
        Callback = function()
            local terrainFolder = game.Workspace:FindFirstChild("TerrainFolder")
            if terrainFolder then
                terrainFolder:Destroy()
                Message("Less Lag Applied", "The TerrainFolder was successfully removed.", "Got it!", 5)
            else
                Message("Less Lag", "TerrainFolder not found. Nothing to remove.", "Okay!", 5)
            end
        end,
    })
end
