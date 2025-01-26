return function(tab)
    local selectedIsland = nil
    local selectedDifficulties = {}
    local farmingMethod = nil
    local farmingDistance = -5
    local autoFarmEnabled = false

    local bossIds = {
        ["Island 1"] = {
            Starter = { Id = 101002, Name = "Ancient Gladiator", Location = Vector3.new(38.12, 100.37, -309.53) },
            Medium = { Id = 101003, Name = "Holy Sect Exile", Location = Vector3.new(14.10, 100.37, -309.01) },
            Hard = { Id = 101004, Name = "Sacrificial Piece", Location = Vector3.new(-15.49, 100.37, -310.10) },
            Extreme = { Id = 101005, Name = "Mechanical Minion", Location = Vector3.new(-37.56, 100.37, -309.54) },
            ["Final Boss"] = { Id = 101006, Name = "Blade", Location = Vector3.new(-1.08, 102.04, -282.64) }
        },
        ["Island 2"] = {
            Starter = { Id = 101007, Name = "Jungle Hunter", Location = Vector3.new(-718.06, 55.85, 1272.00) },
            Medium = { Id = 101008, Name = "Dual Edge Specter", Location = Vector3.new(-782.24, 56.09, 1321.91) },
            Hard = { Id = 101009, Name = "Rock Golem Sentinel", Location = Vector3.new(-826.70, 59.67, 1408.19) },
            Extreme = { Id = 101010, Name = "Marooned Cavalier", Location = Vector3.new(-924.23, 56.78, 1385.65) },
            ["Final Boss"] = { Id = 101011, Name = "Woodland Sovereign", Location = Vector3.new(-1041.97, 54.81, 1324.87) },
            ["Secret Challenge"] = { Id = 101012, Name = "Cannibal Shaman", Location = Vector3.new(-891.35, 61.08, 1481.01) }
        },
        ["Island 3"] = {
            Starter = { Id = 101013, Name = "Deep Sea Undead", Location = Vector3.new(1773.87, -132.80, 2860.51) },
            Medium = { Id = 101014, Name = "Guardian Priest", Location = Vector3.new(1380.68, -125.77, 2808.35) },
            Hard = { Id = 101015, Name = "Advanced Mecha MKII", Location = Vector3.new(2011.13, -128.93, 2760.34) },
            Extreme = { Id = 101016, Name = "Abyssal High Priest", Location = Vector3.new(1363.40, -126.52, 2823.81) },
            ["Final Boss"] = { Id = 101017, Name = "Prototype Zero", Location = Vector3.new(2019.57, -64.02, 2814.30) }
        }
    }

    local function teleportToBoss(boss)
        local player = game.Players.LocalPlayer
        local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            print("DEBUG: Teleporting to boss:", boss.Name, "at location:", boss.Location)
            hrp.CFrame = CFrame.new(boss.Location)
            task.wait(1)
        else
            print("ERROR: HumanoidRootPart not found for player.")
        end
    end

    local function checkCooldown(boss)
        local npcFolder = workspace:FindFirstChild("NPCs")
        if npcFolder then
            local npcModel = npcFolder:FindFirstChild(boss.Name)
            if npcModel and npcModel:FindFirstChild("HumanoidRootPart") then
                local billboard = npcModel.HumanoidRootPart:FindFirstChild("BillboardGui")
                if billboard then
                    local frame = billboard:FindFirstChild("Frame")
                    if frame then
                        local cooldownLabel = frame:FindFirstChild("CD")
                        if cooldownLabel and tonumber(cooldownLabel.Text) == 0 then
                            print("DEBUG: Cooldown is 0 for boss:", boss.Name)
                            return true
                        end
                    end
                end
            else
                print("WARNING: Boss model not found. Teleporting to ensure proximity.")
                teleportToBoss(boss)
            end
        else
            print("ERROR: NPCs folder not found in Workspace.")
        end
        return false
    end

    local function startBossFight(boss)
        if boss and checkCooldown(boss) then
            local args = { boss.Id }
            game:GetService("ReplicatedStorage").Remotes.Region.EnterRegion:FireServer(unpack(args))
            print("DEBUG: Fired remote for boss:", boss.Name, "with ID:", boss.Id)
        else
            print("DEBUG: Boss fight not started due to cooldown or missing boss.")
        end
    end

    local function farmBosses()
        print("DEBUG: Auto farm loop started.")
        while autoFarmEnabled do
            if not selectedIsland then
                print("ERROR: No island selected.")
                break
            end

            if type(selectedDifficulties) ~= "table" or #selectedDifficulties == 0 then
                print("ERROR: No difficulties selected.")
                break
            end

            for _, difficulty in ipairs(selectedDifficulties) do
                local boss = bossIds[selectedIsland] and bossIds[selectedIsland][difficulty]
                if boss then
                    print("DEBUG: Starting boss fight for:", boss.Name)
                    startBossFight(boss)

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
                            print("DEBUG: All NPCs defeated for boss:", boss.Name)
                            break
                        end
                    end
                else
                    print("ERROR: No boss found for difficulty:", difficulty)
                end
            end
            task.wait(1)
        end
        print("DEBUG: Auto farm loop stopped.")
    end

    local autoFarmTab = tab:AddSection("Auto Farm Dungeon")

    autoFarmTab:AddDropdown("IslandDropdown", {
        Title = "Select Island",
        Description = "Select the island you want to fight at.",
        Values = { "Island 1", "Island 2", "Island 3" },
        Default = "Island 1",
        Callback = function(value)
            selectedIsland = value
            print("DEBUG: Selected island:", selectedIsland)
        end
    })

    autoFarmTab:AddDropdown("DifficultyDropdown", {
        Title = "Select Difficulty",
        Description = "Select The Difficulty type you want to fight.",
        Values = { "Starter", "Medium", "Hard", "Extreme", "Final Boss", "Secret Challenge" },
        Multi = true,
        Callback = function(values)
            selectedDifficulties = values or {}
            print("DEBUG: Selected difficulties:", table.concat(selectedDifficulties, ", "))
        end
    })

    autoFarmTab:AddDropdown("MethodDropdown", {
        Title = "Select Method",
        Description = "Select one to make that your farming method.",
        Values = { "Beside", "Below" },
        Default = "Beside",
        Callback = function(value)
            farmingMethod = value
            print("DEBUG: Selected farming method:", farmingMethod)
        end
    })

    autoFarmTab:AddSlider("FarmingDistanceSlider", {
        Title = "Farming Distance",
        Min = -20,
        Max = 0,
        Default = -5,
        Callback = function(value)
            farmingDistance = value
            print("DEBUG: Farming distance set to:", farmingDistance)
        end
    })

    autoFarmTab:AddToggle("AutoFarmToggle", {
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
