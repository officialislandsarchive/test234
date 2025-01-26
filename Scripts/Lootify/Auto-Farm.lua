return function(tab)
    local autoFarmSection = tab:AddSection("Auto Farm Dungeon")

    local selectedIsland = nil
    local selectedDifficulties = {}
    local farmingDistance = -10
    local autoFarmEnabled = false
    local farmingCooldowns = {}

    local bossIDs = {
        ["Island 1"] = {
            ["Starter"] = 101002,
            ["Medium"] = 101003,
            ["Hard"] = 101004,
            ["Extreme"] = 101005,
            ["Final Boss"] = 101006,
        },
        ["Island 2"] = {
            ["Starter"] = 101007,
            ["Medium"] = 101008,
            ["Hard"] = 101009,
            ["Extreme"] = 101010,
            ["Final Boss"] = 101011,
            ["Secret Challenge"] = 101012,
        },
        ["Island 3"] = {
            ["Starter"] = 101013,
            ["Medium"] = 101014,
            ["Hard"] = 101015,
            ["Extreme"] = 101016,
            ["Final Boss"] = 101017,
        }
    }

    local methods = {
        ["Beside"] = Vector3.new(0, 0, 10),
        ["Below"] = Vector3.new(0, -10, 0),
    }
    local selectedMethod = "Beside"

    local function message(title, content, duration)
        Fluent:Notify({
            Title = title,
            Content = content,
            Duration = duration or 5,
        })
    end

    local function startBossFight(bossID)
        if farmingCooldowns[bossID] and farmingCooldowns[bossID] > os.time() then
            message("Cooldown Active", "Wait before starting this boss again.", 3)
            return
        end

        farmingCooldowns[bossID] = os.time() + 300
        local args = { bossID }
        game:GetService("ReplicatedStorage").Remotes.Region.EnterRegion:FireServer(unpack(args))
    end

    local function farmNPCs()
        while autoFarmEnabled do
            task.wait()
            local character = game.Players.LocalPlayer.Character
            if not character then continue end

            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then continue end

            for _, npc in ipairs(workspace:GetDescendants()) do
                if npc:IsA("Model") and npc:FindFirstChildOfClass("Humanoid") and not npc:FindFirstChild("PlayerTag") then
                    local humanoid = npc:FindFirstChildOfClass("Humanoid")
                    if humanoid and humanoid.Health > 0 then
                        local npcRoot = npc:FindFirstChild("HumanoidRootPart")
                        if npcRoot then
                            humanoidRootPart.CFrame = npcRoot.CFrame * CFrame.new(0, 0, farmingDistance)
                            task.wait(0.2)
                            mouse1click()
                        end
                    end
                end
            end
        end
    end

    local islandDropdown = autoFarmSection:AddDropdown("SelectIsland", {
        Title = "Select Island",
        List = { "Island 1", "Island 2", "Island 3" },
        Callback = function(value)
            selectedIsland = value
        end
    })

    local difficultyDropdown = autoFarmSection:AddDropdown("SelectDifficulty", {
        Title = "Select Difficulty",
        List = { "Starter", "Medium", "Hard", "Extreme", "Final Boss", "Secret Challenge" },
        MultiSelect = true,
        Callback = function(values)
            selectedDifficulties = values
        end
    })

    local methodDropdown = autoFarmSection:AddDropdown("SelectMethod", {
        Title = "Select Method",
        List = { "Beside", "Below" },
        Callback = function(value)
            selectedMethod = value
        end
    })

    local farmingDistanceSlider = autoFarmSection:AddSlider("FarmingDistance", {
        Title = "Farming Distance",
        Min = -20,
        Max = 0,
        Default = -10,
        Callback = function(value)
            farmingDistance = value
        end
    })

    local autoFarmToggle = autoFarmSection:AddToggle("AutoFarmToggle", {
        Title = "Auto Farm",
        Default = false,
        Callback = function(state)
            autoFarmEnabled = state
            if state then
                task.spawn(function()
                    while autoFarmEnabled do
                        if selectedIsland and #selectedDifficulties > 0 then
                            for _, difficulty in ipairs(selectedDifficulties) do
                                local bossID = bossIDs[selectedIsland] and bossIDs[selectedIsland][difficulty]
                                if bossID then
                                    startBossFight(bossID)
                                end
                                task.wait(1)
                            end
                        end
                        farmNPCs()
                        task.wait(5)
                    end
                end)
            end
        end
    })
end
heres the main script

repeat wait() until game:IsLoaded()

local v = "V1"
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()
local mainScript = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/main.lua"))()
local saveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/SaveManager.lua"))()
local interfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/InterfaceManager.lua"))()

local scriptLinks = {
    Main = "https://zynovascripts.xyz/Scripts/Lootify/Main.lua",
    Player = "https://zynovascripts.xyz/Scripts/Lootify/Player.lua",
    Teleports = "https://zynovascripts.xyz/Scripts/Lootify/Teleports.lua",
    AutoFarm = "https://zynovascripts.xyz/Scripts/Lootify/AutoFarm.lua",
    ESP = "https://zynovascripts.xyz/Scripts/Lootify/ESP.lua",
    Inventory = "https://zynovascripts.xyz/Scripts/Lootify/Inventory.lua",
    Pets = "https://zynovascripts.xyz/Scripts/Lootify/Mounts.lua",
    Shops = "https://zynovascripts.xyz/Scripts/Lootify/Shops.lua",
    Misc = "https://zynovascripts.xyz/Scripts/Lootify/Misc.lua",
    Security = "https://zynovascripts.xyz/Scripts/Lootify/Security.lua",
    Settings = "https://zynovascripts.xyz/Scripts/Lootify/Settings.lua",
    Credits = "https://zynovascripts.xyz/Scripts/Lootify/Credits.lua"
}

local window = mainScript:CreateWindow({
    Title = "Zynova Hub" ..v,
    SubTitle = "Made by Albert",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local tabs = {
    Main = window:AddTab({ Title = "Main", Icon = "home" }),
    Player = window:AddTab({ Title = "Player", Icon = "user" }),
    Teleports = window:AddTab({ Title = "Teleports", Icon = "map" }),
    AutoFarm = window:AddTab({ Title = "Auto Farm", Icon = "carrot" }),
    Inventory = window:AddTab({ Title = "Backpack", Icon = "package" }),
    Pets = window:AddTab({ Title = "Mounts", Icon = "brush" }),
    Shops = window:AddTab({ Title = "Shops", Icon = "scroll" }),
    Misc = window:AddTab({ Title = "Miscellaneous", Icon = "wrench" }),
    Security = window:AddTab({ Title = "Bypassed Stuff", Icon = "bomb" }),
    Settings = window:AddTab({ Title = "Settings", Icon = "settings" }),
    Credits = window:AddTab({ Title = "Credits", Icon = "info" })
}

local function loadTabScripts()
    local threads = {}
    for k, v in pairs(tabs) do
        local link = scriptLinks[k]
        if link and link ~= "" then
            table.insert(threads, coroutine.create(function()
                local success, err = pcall(function()
                    loadstring(game:HttpGet(link))()(v)
                end)
                if not success then
                    print("Error: Failed to load "..k.." script. Reason: "..err)
                end
            end))
        end
    end
    for _, thread in ipairs(threads) do
        coroutine.resume(thread)
    end
end

loadTabScripts()
saveManager:SetLibrary(mainScript)
interfaceManager:SetLibrary(mainScript)
saveManager:SetFolder("ZynovahubFREE/Lootify")
interfaceManager:SetFolder("ZynovahubFREE/Lootify")
interfaceManager:BuildInterfaceSection(tabs.Settings)
saveManager:BuildConfigSection(tabs.Settings)
window:SelectTab(1)
saveManager:LoadAutoloadConfig()

and heres the Player section for an example of code

return function(tab)

_G.WalkSpeed = 30
_G.JumpPower = 50

function Message(Title1, Context1, ButtonText1, DurationTime)
	Fluent:Notify({
            Title = Title1,
            Content = Context1,
            Duration = DurationTime
	})
end
	
IYMouse = game.Players.LocalPlayer:GetMouse()
Players = game.Players
iyflyspeed = 5

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

game:GetService("RunService").RenderStepped:Connect(function()
    local Character = game.Players.LocalPlayer.Character
    if Character then
        local Humanoid = Character:FindFirstChild("Humanoid")
        if Humanoid then
            Humanoid.WalkSpeed = _G.WalkSpeed or 30
            Humanoid.UseJumpPower = true
            Humanoid.JumpPower = _G.JumpPower or 50
        end
    end
end)

local playerCharacter = tab:AddSection("Player Character")

local PlayerFly = playerCharacter:AddToggle("PlayerFly", {Title = "Fly", Default = false })
PlayerFly:OnChanged(function(Value)
    if Value == true then
        sFLY(true)
    else
        NOFLY()
    end
end)

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
	
local FlySpeedSlider = playerCharacter:AddSlider("FlySpeedSlider", {
	Title = "Fly Speed",
    	Description = "",
    	Default = 5,
    	Min = 1,
    	Max = 250,
    	Rounding = 0,
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

local CopyLocationButton = playerCharacter:AddButton({
    Title = "Copy Location",
    Description = "Copies your current coordinates to the clipboard",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local chr = plr.Character or plr.CharacterAdded:Wait()
        local hrp = chr:FindFirstChild("HumanoidRootPart")

        if hrp then
            local position = hrp.Position
            local coords = string.format("Vector3.new(%.2f, %.2f, %.2f)", position.X, position.Y, position.Z)
            setclipboard(coords)
            Message("Location Copied", "Coordinates: " .. coords, "OK", 5)
        else
            Message("Error", "HumanoidRootPart not found!", "OK", 5)
        end
    end
})

local lessLagButton = playerCharacter:AddButton({
	Title = "Less Lag",
        Description = "Removes the TerrainFolder from Workspace to reduce lag.",
        Callback = function()
            local terrainFolder = game.Workspace:FindFirstChild("TerrainFolder")
            if terrainFolder then
                terrainFolder:Destroy()
            else
            end
        end,
    })
end


can you make me the code for auto farm? so make a section and put it as Auto Farm Dungeon

and add the following in that section

Select Island (dropdown)
-Island 1
-Island 2
-Island3
Select Difficulty (dropdown)
-Starter
-Medium
-Hard
-Extreme
-Final Boss
-Secret Challenge
Select Method (dropdown)
-Beside
-Below
Farming Distant (slider)
-max:0
-min:-20
Auto Farm (toggle)

so for the Select Island and the Select Difficulty go hand in hand so the island is the island with the Difficultys on each island besides the secret challange that one is only on the 2nd world
but so when i pick a island that means thats that type of DIfficulty so the diffucltiys for each island is diffrent bosses u fight so for island you fire this to start a boss fight

local args = {
    [1] =
}

game:GetService("ReplicatedStorage").Remotes.Region.EnterRegion:FireServer(unpack(args))

so what you need to do is just put the right id there for the right boss they pick in the dropdown and make the dropdown multipick  but heres the ids for each boss for each island

Island 1:
    [101002] = "Ancient Gladiator", - Starter
    [101003] = "Holy Sect Exile", - Medium
    [101004] = "Sacrificial Piece", - Hard
    [101005] = "Mechanical Minion",  - Extreme
    [101006] = "Blade", - Final Boss
Island 2:
    [101007] = "Jungle Hunter", - Starter
    [101008] = "Dual Edge Specter", - Medium
    [101009] = "Rock Golem Sentinel", - Hard
    [101010] = "Marooned Cavalier", - Extreme
    [101011] = "Woodland Sovereign", - Final Boss
    [101012] = "Cannibal Shaman", - Secret Challenge
Island 3:
    [101013] = "Deep Sea Undead", - Starter
    [101014] = "Guardian Priest", - Medium
    [101015] = "AdvancedMecha", - Hard
    [101016] = "Abyssal High Priest", - Extreme
    [101017] = "Prototype Zero" - Final Boss

and when your in the boss raid you will find npc humanoids make sure you dont go to the players but now for the slider thats how far away you will be swinging at the npc from and make sure to check the npcs health and untill it hits 0 and is dead it stays on 1 npc at a time 
and u just need to click the screen to hit the mobs but make sure it doesnt effect the players moveing like just make sure it swings the sword by clicking but like by not clicking if you get what i mean idk and the auto farm toggle you just if you turn that on start the auto farm and if its off auto stop it
and also make sure to check the cooldown on the boss only fire the remote to go to the boss raid if the timer for that boss is at 0
so only fire the remote when it should dont loop it to lag me
