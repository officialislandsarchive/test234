return function(tab)

IYMouse = game.Players.LocalPlayer:GetMouse()
Players = game.Players
iyflyspeed = 1

function NOFLY()
    FLYING = false
    if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
    if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
        Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
    end
    pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

function sFLY(vfly)
    repeat wait() until IYMouse
    if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
    T = Players.LocalPlayer.Character.HumanoidRootPart
    CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    SPEED = 0
    local function FLY()
        FLYING = true
        local BG = Instance.new('BodyGyro')
        local BV = Instance.new('BodyVelocity')
        BG.P = 9e4
        BG.Parent = T
        BV.Parent = T
        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.cframe = T.CFrame
        BV.velocity = Vector3.new(0, 0, 0)
        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
        task.spawn(function()
            repeat wait()
                if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                    Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                end
                if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                    SPEED = iyflyspeed * 10
                elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                    SPEED = 0
                end
                if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0) then
                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + 
                    ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, 
                    (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + 
                    ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, 
                    (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                else
                    BV.velocity = Vector3.new(0, 0, 0)
                end
                BG.cframe = workspace.CurrentCamera.CoordinateFrame
            until not FLYING
            CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            SPEED = 0
            BG:Destroy()
            BV:Destroy()
            if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            end
        end)
    end
    flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = 1
        elseif KEY:lower() == 's' then
            CONTROL.B = -1
        elseif KEY:lower() == 'a' then
            CONTROL.L = -1
        elseif KEY:lower() == 'd' then 
            CONTROL.R = 1
        elseif QEfly and KEY:lower() == 'e' then
            CONTROL.Q = 1
        elseif QEfly and KEY:lower() == 'q' then
            CONTROL.E = -1
        end
        pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
    end)
    flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = 0
        elseif KEY:lower() == 's' then
            CONTROL.B = 0
        elseif KEY:lower() == 'a' then
            CONTROL.L = 0
        elseif KEY:lower() == 'd' then
            CONTROL.R = 0
        elseif KEY:lower() == 'e' then
            CONTROL.Q = 0
        elseif KEY:lower() == 'q' then
            CONTROL.E = 0
        end
    end)
    FLY()
end

local playerCharacter = tab:AddSection("Player Character")

local FlyKeyBind = playerCharacter:AddKeybind("FlyKeyBind", {
    Title = "Fly Key",
    Mode = "Toggle",
    Default = "G",
    Callback = function()
        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyVelocity") then
            PlayerFly:SetValue(false)
        else
            PlayerFly:SetValue(true)
        end
    end,
    ChangedCallback = function(NewKey)
        print("Fly keybind changed to:", NewKey)
    end
})

local PlayerFly = playerCharacter:AddToggle("PlayerFly", {Title = "Fly", Default = false })
PlayerFly:OnChanged(function(Value)
    if Value == true then
        sFLY(true)
    else
        NOFLY()
    end
end)

local FlySpeedSlider = playerCharacter:AddSlider("FlySpeedSlider", {
	Title = "Fly Speed",
    	Description = "",
    	Default = 1,
    	Min = 1,
    	Max = 250,
    	Rounding = 1,
    	Callback = function(Value)
        iyflyspeed = Value
    end
})

local JumpPowerSlider = playerCharacter:AddSlider("JumpPowerSlider", {
	Title = "Jump Power",
	Description = "",
	Default = 50,
	Min = 0,
	Max = 500,
	Rounding = 0,
	Callback = function(Value)
		_G.JumpPower = Value
	end
})

local SpeedSlider = playerCharacter:AddSlider("SpeedSlider", {
	Title = "Walk Speed",
	Description = "",
	Default = 30,
	Min = 0,
	Max = 100,
	Rounding = 0,
	Callback = function(Value)
		_G.WalkSpeed = Value
	end
})
end
