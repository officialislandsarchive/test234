return function(tab)
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
