return function(tab)
    -- Initialize variables with safe defaults
    local selectedIsland = nil
    local selectedDifficulties = {} -- Always initialized as a table
    local farmingMethod = nil
    local farmingDistance = -5 -- Default distance
    local autoFarmEnabled = false

    -- Boss ID mapping
    local bossIds = {
        ["Island 1"] = {
            Starter = 101002,
            Medium = 101003,
            Hard = 101004,
            Extreme = 101005,
            ["Final Boss"] = 101006
        },
        ["Island 2"] = {
            Starter = 101007,
            Medium = 101008,
            Hard = 101009,
            Extreme = 101010,
            ["Final Boss"] = 101011,
            ["Secret Challenge"] = 101012
        },
        ["Island 3"] = {
            Starter = 101013,
            Medium = 101014,
            Hard = 101015,
            Extreme = 101016,
            ["Final Boss"] = 101017
        }
    }

    -- Function to safely start a boss fight
    local function startBossFight(bossId)
        print("Attempting to start boss fight with ID:", bossId)
        local cooldown = game:GetService("ReplicatedStorage").Remotes.Region.Cooldown:FindFirstChild(tostring(bossId))
        if cooldown and cooldown.Value == 0 then
            local args = { bossId }
            game:GetService("ReplicatedStorage").Remotes.Region.EnterRegion:FireServer(unpack(args))
            print("Successfully fired remote for boss ID:", bossId)
        else
            print("Boss fight cooldown is not ready for ID:", bossId)
        end
    end

    -- Main farming loop
    local function farmBosses()
        while autoFarmEnabled do
            print("Auto farm is running...")

            -- Validate selections
            if not selectedIsland then
                print("Error: No island selected.")
                break
            end

            if type(selectedDifficulties) ~= "table" or #selectedDifficulties == 0 then
                print("Error: No difficulties selected.")
                break
            end

            for _, difficulty in ipairs(selectedDifficulties) do
                local bossId = bossIds[selectedIsland] and bossIds[selectedIsland][difficulty]
                if bossId then
                    startBossFight(bossId)
                    local npc = nil
                    while true do
                        -- Find a valid NPC to attack
                        npc = nil
                        for _, v in pairs(workspace:GetDescendants()) do
                            if v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                                npc = v
                                break
                            end
                        end

                        if npc then
                            local player = game.Players.LocalPlayer
                            local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                            if hrp then
                                hrp.CFrame = npc.HumanoidRootPart.CFrame * CFrame.new(0, 0, farmingDistance)
                                mouse1click()
                                print("Attacking NPC:", npc.Name, "at distance:", farmingDistance)
                            else
                                print("Error: HumanoidRootPart not found for player.")
                            end
                            task.wait(0.1)
                        else
                            print("All NPCs defeated for boss ID:", bossId)
                            break
                        end
                    end
                else
                    print("Invalid boss ID for difficulty:", difficulty, "on island:", selectedIsland)
                end
            end
            task.wait(0.5)
        end
        print("Auto farm stopped.")
    end

    -- UI Section
    local autoFarmTab = tab:AddSection("Auto Farm Dungeon")

    -- Island Dropdown
    local islandDropdown = autoFarmTab:AddDropdown("IslandDropdown", {
        Title = "Select Island",
        Value = { "Island 1", "Island 2", "Island 3" },
        Callback = function(value)
            selectedIsland = value
            print("Selected island:", selectedIsland)
        end
    })

    -- Difficulty Dropdown
    local difficultyDropdown = autoFarmTab:AddDropdown("DifficultyDropdown", {
        Title = "Select Difficulty",
        Multi = true,
        Value = { "Starter", "Medium", "Hard", "Extreme", "Final Boss", "Secret Challenge" },
        Callback = function(values)
            if values then
                selectedDifficulties = values
                print("Selected difficulties:", table.concat(selectedDifficulties, ", "))
            else
                selectedDifficulties = {}
                print("No difficulties selected.")
            end
        end
    })

    -- Farming Method Dropdown
    local methodDropdown = autoFarmTab:AddDropdown("MethodDropdown", {
        Title = "Select Method",
        Value = { "Beside", "Below" },
        Callback = function(value)
            farmingMethod = value
            print("Selected farming method:", farmingMethod)
        end
    })

    -- Farming Distance Slider
    local farmingDistanceSlider = autoFarmTab:AddSlider("FarmingDistanceSlider", {
        Title = "Farming Distance",
        Min = -20,
        Max = 0,
        Default = -5,
        Rounding = 0,
        Callback = function(value)
            farmingDistance = value
            print("Farming distance set to:", farmingDistance)
        end
    })

    -- Auto Farm Toggle
    local autoFarmToggle = autoFarmTab:AddToggle("AutoFarmToggle", {
        Title = "Auto Farm",
        Default = false,
        Callback = function(value)
            autoFarmEnabled = value
            print("Auto farm toggled:", autoFarmEnabled)
            if autoFarmEnabled then
                task.spawn(farmBosses)
            end
        end
    })
end
