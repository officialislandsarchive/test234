return function(tab)
    local selectedIsland = nil
    local selectedDifficulties = {}
    local farmingMethod = nil
    local farmingDistance = -5
    local autoFarmEnabled = false

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

    local function startBossFight(bossId)
        print("DEBUG: Attempting to start boss fight with ID:", bossId)
        local cooldown = game:GetService("ReplicatedStorage").Remotes.Region.Cooldown:FindFirstChild(tostring(bossId))
        if cooldown and cooldown.Value == 0 then
            local args = { bossId }
            game:GetService("ReplicatedStorage").Remotes.Region.EnterRegion:FireServer(unpack(args))
            print("DEBUG: Successfully fired remote for boss ID:", bossId)
        else
            print("DEBUG: Boss fight cooldown is not ready for ID:", bossId)
        end
    end

    local function farmBosses()
        print("DEBUG: Auto farm loop started.")
        while autoFarmEnabled do
            if not selectedIsland then
                print("ERROR: No island selected.")
                break
            end

            if type(selectedDifficulties) ~= "table" then
                print("ERROR: selectedDifficulties is not a table. Value:", selectedDifficulties)
                break
            elseif #selectedDifficulties == 0 then
                print("ERROR: No difficulties selected.")
                break
            end

            for _, difficulty in ipairs(selectedDifficulties) do
                local bossId = bossIds[selectedIsland] and bossIds[selectedIsland][difficulty]
                if not bossId then
                    print("ERROR: Invalid boss ID for difficulty:", difficulty, "on island:", selectedIsland)
                else
                    print("DEBUG: Starting boss fight for difficulty:", difficulty, "with boss ID:", bossId)
                    startBossFight(bossId)

                    local npc = nil
                    while true do
                        npc = nil
                        for _, v in pairs(workspace:GetDescendants()) do
                            if v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                                npc = v
                                break
                            end
                        end

                        if npc then
                            print("DEBUG: Attacking NPC:", npc.Name)
                            local player = game.Players.LocalPlayer
                            local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                            if hrp then
                                hrp.CFrame = npc.HumanoidRootPart.CFrame * CFrame.new(0, 0, farmingDistance)
                                mouse1click()
                                task.wait(0.1)
                            else
                                print("ERROR: HumanoidRootPart not found for player.")
                            end
                        else
                            print("DEBUG: All NPCs defeated for boss ID:", bossId)
                            break
                        end
                    end
                end
            end
            task.wait(0.5)
        end
        print("DEBUG: Auto farm loop stopped.")
    end

    local autoFarmTab = tab:AddSection("Auto Farm Dungeon")

    local islandDropdown = autoFarmTab:AddDropdown("IslandDropdown", {
        Title = "Select Island",
        Description = "Select the island you want to fight at.",
        Values = { "Island 1", "Island 2", "Island 3" },
        Default = { "Island 1" },
        Callback = function(value)
            selectedIsland = value
            print("DEBUG: Selected island:", selectedIsland)
        end
    })
    
    local difficultyDropdown = autoFarmTab:AddDropdown("DifficultyDropdown", {
        Title = "Select Difficulty",
        Description = "Select The Difficulty type you want to fight.",
        Values = { "Starter", "Medium", "Hard", "Extreme", "Final Boss", "Secret Challenge" },
        Multi = true,
        Default = {"Starter"},
        Callback = function(values)
            if values then
                selectedDifficulties = values
                print("DEBUG: Selected difficulties:", table.concat(selectedDifficulties, ", "))
            else
                selectedDifficulties = {}
                print("DEBUG: No difficulties selected. Defaulting to empty table.")
            end
        end
    })

    local methodDropdown = autoFarmTab:AddDropdown("MethodDropdown", {
        Title = "Select Method",
        Description = "Select one to make that your farming method.",
        Values = {"Beside", "Below"},
        Default = {"Beside"},
        Callback = function(value)
            farmingMethod = value
            print("DEBUG: Selected farming method:", farmingMethod)
        end
    })

    local farmingDistanceSlider = autoFarmTab:AddSlider("FarmingDistanceSlider", {
        Title = "Farming Distance",
        Min = -20,
        Max = 0,
        Default = -5,
        Rounding = 0,
        Callback = function(value)
            farmingDistance = value
            print("DEBUG: Farming distance set to:", farmingDistance)
        end
    })

    local autoFarmToggle = autoFarmTab:AddToggle("AutoFarmToggle", {
        Title = "Auto Farm",
        Default = false,
        Callback = function(value)
            autoFarmEnabled = value
            print("DEBUG: Auto farm toggled:", autoFarmEnabled)
            if autoFarmEnabled then
                task.spawn(farmBosses)
            end
        end
    })
end
