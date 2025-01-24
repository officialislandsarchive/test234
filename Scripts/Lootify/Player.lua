return function(tab)

local playerSection = tab:AddSection("Player Features")

playerSection:AddSlider({
    Title = "Fly Speed",
    Description = "",
    Min = 10,
    Max = 150,
    Default = 50,
    Rounding = 0,
    Callback = function(v)
        getgenv().flySpeed = v
    end,
})

playerSection:AddToggle({
    Title = "Fly",
    Default = false,
    Callback = function(state)
        getgenv().flying = state
        if flying then
            local plr = game.Players.LocalPlayer
            local char = plr.Character or plr.CharacterAdded:Wait()
            local root = char:WaitForChild("HumanoidRootPart")
            local bv = Instance.new("BodyVelocity", root)
            bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
            bv.Velocity = Vector3.zero
            getgenv().flyConn = game:GetService("RunService").Heartbeat:Connect(function()
                bv.Velocity = (plr.Character:WaitForChild("Humanoid").MoveDirection * flySpeed)
            end)
        else
            if getgenv().flyConn then
                getgenv().flyConn:Disconnect()
            end
            for _, v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
                if v:IsA("BodyVelocity") then
                    v:Destroy()
                end
            end
        end
    end,
})

playerSection:AddToggle({
    Title = "NoClip",
    Default = false,
    Callback = function(state)
        getgenv().noclip = state
        if noclip then
            getgenv().noclipConn = game:GetService("RunService").Stepped:Connect(function()
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end)
        else
            if getgenv().noclipConn then
                getgenv().noclipConn:Disconnect()
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end,
})

playerSection:AddSlider({
    Title = "Walk Speed",
    Description = "",
    Min = 16,
    Max = 300,
    Default = 16,
    Rounding = 0,
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end,
})

playerSection:AddSlider({
    Title = "Jump Power",
    Description = "",
    Min = 50,
    Max = 300,
    Default = 50,
    Rounding = 0,
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end,
})
end
