return function(tab)
    local selectedIsland = nil
    local selectedDifficulties = {}
    local farmingMethod = nil
    local farmingDistance = 0
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
        local cooldown = game:GetService("ReplicatedStorage").Remotes.Region.Cooldown[bossId]
        if cooldown and cooldown.Value == 0 then
            local args = { bossId }
            game:GetService("ReplicatedStorage").Remotes.Region.EnterRegion:FireServer(unpack(args))
        end
    end

    local function farmBosses()
        while autoFarmEnabled do
            if selectedIsland and #selectedDifficulties > 0 then
                for _, difficulty in ipairs(selectedDifficulties) do
                    local bossId = bossIds[selectedIsland][difficulty]
                    if bossId then
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
                                local player = game.Players.LocalPlayer
                                local hrp = player.Character:FindFirstChild("HumanoidRootPart")
                                if hrp then
                                    hrp.CFrame = npc.HumanoidRootPart.CFrame * CFrame.new(0, 0, farmingDistance)
                                    mouse1click()
                                end
                                task.wait(0.1)
                            else
                                break
                            end
                        end
                    end
                end
            end
            task.wait(0.5)
        end
    end

    local autoFarmTab = tab:AddSection("Auto Farm Dungeon")

    local islandDropdown = autoFarmTab:AddDropdown("IslandDropdown", {
        Title = "Select Island",
        List = { "Island 1", "Island 2", "Island 3" },
        Callback = function(value)
            selectedIsland = value
        end
    })

    local difficultyDropdown = autoFarmTab:AddDropdown("DifficultyDropdown", {
        Title = "Select Difficulty",
        Multi = true,
        List = { "Starter", "Medium", "Hard", "Extreme", "Final Boss", "Secret Challenge" },
        Callback = function(values)
            selectedDifficulties = values
        end
    })

    local methodDropdown = autoFarmTab:AddDropdown("MethodDropdown", {
        Title = "Select Method",
        List = { "Beside", "Below" },
        Callback = function(value)
            farmingMethod = value
        end
    })

    local farmingDistanceSlider = autoFarmTab:AddSlider("FarmingDistanceSlider", {
        Title = "Farming Distance",
        Min = -20,
        Max = 0,
        Default = 0,
        Rounding = 0,
        Callback = function(value)
            farmingDistance = value
        end
    })

    local autoFarmToggle = autoFarmTab:AddToggle("AutoFarmToggle", {
        Title = "Auto Farm",
        Default = false,
        Callback = function(value)
            autoFarmEnabled = value
            if autoFarmEnabled then
                task.spawn(farmBosses)
            end
        end
    })
end
