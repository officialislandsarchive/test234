return function(tab)

function Message(Title1, Context1, ButtonText1, DurationTime)
	Fluent:Notify({
		Title = Title1,
		Content = Context1,
		Duration = DurationTime
	})
end

local playerSection = tab:AddSection("Player Features")

local flySpeedSlider = playerSection:AddSlider({
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

local flyToggle = playerSection:AddToggle("FlyToggle", { Title = "Fly", Default = false })
flyToggle:OnChanged(function()
    local state = flyToggle.Value
    getgenv().flying = state
    if flying then
        local plr = game.Players.LocalPlayer
        local char = plr.Character or plr.CharacterAdded:Wait()
        local root = char:WaitForChild("HumanoidRootPart")

        local bv = root:FindFirstChild("FlyBodyVelocity")
        if not bv then
            bv = Instance.new("BodyVelocity", root)
            bv.Name = "FlyBodyVelocity"
            bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
            bv.Velocity = Vector3.zero
        end

	if getgenv().flyConn then
            getgenv().flyConn:Disconnect()
        end

        getgenv().flyConn = game:GetService("RunService").Heartbeat:Connect(function()
            bv.Velocity = (plr.Character:WaitForChild("Humanoid").MoveDirection * flySpeed)
        end)
        Message("Fly Enabled", "You are now flying!", "Got it!", 5)
    else
        if getgenv().flyConn then
            getgenv().flyConn:Disconnect()
            getgenv().flyConn = nil
        end
        for _, v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
            if v:IsA("BodyVelocity") and v.Name == "FlyBodyVelocity" then
                v:Destroy()
            end
        end
        Message("Fly Disabled", "You are no longer flying.", "Got it!", 5)
    end
end)

local noClipToggle = playerSection:AddToggle("NoClipToggle", { Title = "NoClip", Default = false })
noClipToggle:OnChanged(function()
    local state = noClipToggle.Value
    getgenv().noclip = state
    if noclip then
        if getgenv().noclipConn then
            getgenv().noclipConn:Disconnect()
        end

        getgenv().noclipConn = game:GetService("RunService").Stepped:Connect(function()
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end)
        Message("NoClip Enabled", "You can now walk through walls!", "Got it!", 5)
    else
        if getgenv().noclipConn then
            getgenv().noclipConn:Disconnect()
            getgenv().noclipConn = nil
        end
        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = true
            end
        end
        Message("NoClip Disabled", "You can no longer walk through walls.", "Got it!", 5)
    end
end)

local walkSpeedSlider = playerSection:AddSlider({
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

local jumpPowerSlider = playerSection:AddSlider({
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

local lessLagButton = playerSection:AddButton({
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
