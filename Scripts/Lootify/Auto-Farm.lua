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
