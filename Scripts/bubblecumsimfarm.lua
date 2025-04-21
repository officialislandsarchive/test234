local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local webhook = "https://discord.com/api/webhooks/1363671032136994876/0mizGXcXltnnr75BHjyadO7NHaMfN3vYn2Ys4zISKIJcC1KRM7-gmwfrDLCOKNpnT_MH"
local discordbotname = "Sigma Bot"
local discordavatarurl = "https://cdn.discordapp.com/attachments/1363670958937735221/1363671272470351882/gr.PNG?ex=6806e157&is=68058fd7&hm=2449d373bd61c184d5fbb92edb6a86f02bfeafcf9878e33356adec27b82b9f28&"
local pingmybesties = { "957081176215023616", "1164386504412500009", "1178520085527269438" }
local scriptnamelol = "aura egg finder | "
local placeId = game.PlaceId
local currentjodid = game.JobId
local isTeleporting = false
local SIGMAMAMAMAAMAMAMAMMAMMAMMAMNAMMAMMAMMAMAMAMMAMMAMMAMAMMAMA = 0
local reallybrowhy = nil
local tpcooldown = 5
local teleporttimeout = 10
local serverdelaythinkbroidkwhattonamethis = 5
local tpretrydelay = 3
local maxteleportspercyclebroitsalr = 5
local sessionStartTime = os.clock()
local eggType = ""

local function updateStatusGui(text)
    if RunService:IsClient() then
        pcall(function()
            local gui = CoreGui:FindFirstChild(scriptnamelol .. "StatusGui")
            if not gui then
                gui = Instance.new("ScreenGui")
                gui.Name = scriptnamelol .. "StatusGui"
                gui.ResetOnSpawn = false
                gui.IgnoreGuiInset = true
                gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                gui.Parent = CoreGui
            end

            local statusLabel = gui:FindFirstChild("statusLabel")
            if not statusLabel then
                statusLabel = Instance.new("TextLabel")
                statusLabel.Name = "statusLabel"
                statusLabel.Size = UDim2.new(0, 300, 0, 20)
                statusLabel.AnchorPoint = Vector2.new(1, 0)
                statusLabel.Position = UDim2.new(1, -10, 0, 10)
                statusLabel.BackgroundTransparency = 1
                statusLabel.BorderSizePixel = 0
                statusLabel.Font = Enum.Font.SourceSans
                statusLabel.TextSize = 14
                statusLabel.TextColor3 = Color3.new(1, 1, 1)
                statusLabel.TextXAlignment = Enum.TextXAlignment.Right
                statusLabel.Parent = gui
            end
            statusLabel.Text = string.format("%s %s", scriptnamelol, text)

            local runtimeLabel = gui:FindFirstChild("runtimeLabel")
            if not runtimeLabel then
                runtimeLabel = Instance.new("TextLabel")
                runtimeLabel.Name = "runtimeLabel"
                runtimeLabel.Size = UDim2.new(0, 300, 0, 20)
                runtimeLabel.AnchorPoint = Vector2.new(1, 0)
                runtimeLabel.Position = UDim2.new(1, -10, 0, 32)
                runtimeLabel.BackgroundTransparency = 1
                runtimeLabel.BorderSizePixel = 0
                runtimeLabel.Font = Enum.Font.SourceSans
                runtimeLabel.TextSize = 13
                runtimeLabel.TextColor3 = Color3.new(1, 1, 1)
                runtimeLabel.TextXAlignment = Enum.TextXAlignment.Right
                runtimeLabel.Parent = gui
            end
            local estTime = os.clock() - sessionStartTime
            local min = math.floor(estTime / 60)
            local sec = math.floor(estTime % 60)
            runtimeLabel.Text = string.format("Runtime: %02d:%02d", min, sec)
        end)
    end
end

local function makeHttpRequest(options)
    local success, responseData = pcall(request, options)
    if success then
        if type(responseData) == "string" then
            return { Success = true, Body = responseData, StatusCode = 200 }
        elseif type(responseData) == "table" then
            if responseData and not responseData.Body and responseData.body then responseData.Body = responseData.body end
            if responseData and not responseData.StatusCode and responseData.statuscode then responseData.StatusCode = responseData.statuscode end
            if responseData and not responseData.Success then
                responseData.Success = (responseData.StatusCode and responseData.StatusCode >= 200 and responseData.StatusCode < 400) or false
            end
            return responseData
        end
        return { Success = true, Body = nil, StatusCode = 204 }
    else
        return { Success = false, Body = tostring(responseData), StatusCode = 0 }
    end
end

local function getExecutorType()
    local executor = "Unknown"
    local success, result = pcall(function()
        if identifyexecutor then return identifyexecutor() end
        if syn and syn.identifyexecutor then return syn.identifyexecutor() end
        if getexecutorname then return getexecutorname() end
    end)
    if success and result and type(result) == "string" then
        local nameOnly = result:match("^[^%s]+")
        executor = nameOnly or result
    end
    return executor
end

local function getHttpRequest()
    return (syn and syn.request) or (http and http.request) or (http_request) or (request) or (fluxus and fluxus.request) or (HttpService and HttpService.RequestAsync)
end

local function sendToDiscord()
    local executorName = getExecutorType() or "Unknown"
    eggType = eggType or "Unknown"
    local pingContent = ""

    for _, id in ipairs(pingmybesties or {}) do
        pingContent = pingContent .. "<@" .. id .. "> "
    end

    local place = placeId or 0
    local fullJobId = currentjodid or "unknown"

    local embedData = {
        username = discordbotname or "Egg Finder Bot",
        avatar_url = discordavatarurl or "",
        content = pingContent,
        embeds = {{
            title = eggType .. " Egg Found",
            color = 0xFF69B4,
            description = string.format(
                "**Status**\n%s Egg detected in this server.\n\n" ..
                "**Important Information**\nPlayer Count: %d/%d\nExecutor: %s\n\n" ..
                "**Misc Info**\nJob ID: `%s`\nPlace ID: `%d`\n\n" ..
                "**Join Command (Copy & Paste)**:\n```lua\n" ..
                "game:GetService('TeleportService'):TeleportToPlaceInstance(%d, \"%s\", game:GetService('Players').LocalPlayer)\n```",
                eggType, #Players:GetPlayers(), Players.MaxPlayers,
                executorName, fullJobId, place, place, fullJobId
            )
        }}
    }

    local payload = HttpService:JSONEncode(embedData)
    local requestFunc = getHttpRequest()

    if not requestFunc then warn("No HTTP request function available.") return end

    local success, response = pcall(function()
        return requestFunc({
            Url = webhook,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = payload
        })
    end)

    if success and response then
        print("webhook sent:", response.StatusCode)
        print("response:", response.Body)
    else
        warn("failed to send webhook:", response)
    end
end

local function getAvailableServers()
    updateStatusGui("fetching servers")
    local url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100", placeId)
    local attempts = 0
    local maxAttempts = 3
    while attempts < maxAttempts do
        attempts = attempts + 1
        local options = { Url = url, Method = "GET" }
        local response = makeHttpRequest(options)
        if response and response.Success and response.Body then
            local success, decoded = pcall(HttpService.JSONDecode, HttpService, response.Body)
            if success and decoded and decoded.data then
                local servers = {}
                for _, server in ipairs(decoded.data) do
                    if server.id and type(server.id) == "string" and server.playing < server.maxPlayers and server.id ~= currentjodid then
                        table.insert(servers, server.id)
                    end
                end
                updateStatusGui(string.format("found %d servers preparing teleport", #servers))
                return servers
            else
                updateStatusGui(string.format("server list decode error (attempt %d)", attempts))
            end
        else
            updateStatusGui(string.format("server fetch error: %s (attempt %d)", response and response.StatusCode or "HTTP Fail", attempts))
        end
        if attempts < maxAttempts then task.wait(serverdelaythinkbroidkwhattonamethis) end
    end
    updateStatusGui("failed to fetch servers after retries :/")
    return nil
end

local function shuffleTable(tbl)
    local rng = Random.new()
    for i = #tbl, 2, -1 do
        local j = rng:NextInteger(1, i)
        tbl[i], tbl[j] = tbl[j], tbl[i]
    end
end

local function teleportToRandomServer()
    if isTeleporting then return false end

    if os.clock() - SIGMAMAMAMAAMAMAMAMMAMMAMMAMNAMMAMMAMMAMAMAMMAMMAMMAMAMMAMA < tpcooldown then
        updateStatusGui(string.format("teleport cooldown %.1fs left", tpcooldown - (os.clock() - SIGMAMAMAMAAMAMAMAMMAMMAMMAMNAMMAMMAMMAMAMAMMAMMAMMAMAMMAMA)))
        task.wait(tpcooldown - (os.clock() - SIGMAMAMAMAAMAMAMAMMAMMAMMAMNAMMAMMAMMAMAMAMMAMMAMMAMAMMAMA))
    end

    isTeleporting = true
    reallybrowhy = nil

    local servers = getAvailableServers()
    if not servers or #servers == 0 then
        updateStatusGui("no available servers found waiting for a server to be available broooo")
        isTeleporting = false
        return false
    end

    shuffleTable(servers)
    local numServersToTry = math.min(#servers, maxteleportspercyclebroitsalr)
    local teleportInitiated = false

    for attempt = 1, numServersToTry do
        local serverId = servers[attempt]
        reallybrowhy = nil
        updateStatusGui(string.format("teleporting (attempt %d/%d)", attempt, numServersToTry))

        local failedConnection
        failedConnection = TeleportService.TeleportInitFailed:Connect(function(player, result, message)
            if player == LocalPlayer then
                reallybrowhy = result
                if failedConnection then pcall(failedConnection.Disconnect, failedConnection) failedConnection = nil end
            end
        end)

        SIGMAMAMAMAAMAMAMAMMAMMAMMAMNAMMAMMAMMAMAMAMMAMMAMMAMAMMAMA = os.clock()
        local success, err = pcall(TeleportService.TeleportToPlaceInstance, TeleportService, placeId, serverId, LocalPlayer)

        if not success then
            reallybrowhy = "PcallError: " .. tostring(err):sub(1, 30)
            if failedConnection then pcall(failedConnection.Disconnect, failedConnection) end
            updateStatusGui(string.format("teleport error %s", reallybrowhy))
            task.wait(tpretrydelay)
        else
            local waitStart = os.clock()
            while os.clock() - waitStart < teleporttimeout and reallybrowhy == nil do
                task.wait(0.1)
            end

            if failedConnection then pcall(failedConnection.Disconnect, failedConnection) end

            if reallybrowhy == nil then
                updateStatusGui("teleport initiated Waiting for transfer🙏")
                teleportInitiated = true
                return true
            else
                updateStatusGui(string.format("teleport failed %s (Retrying %d/%d)", tostring(reallybrowhy), attempt, numServersToTry))
                task.wait(tpretrydelay)
            end
        end
    end

    if not teleportInitiated then
        updateStatusGui(string.format("teleport cycle failed after %d attempts", numServersToTry))
        isTeleporting = false
    end
    return teleportInitiated
end

local function waitForWorkspaceLoad()
    updateStatusGui("waiting for workspace to load")

    if not game:IsLoaded() then
        game.Loaded:Wait()
    end

    local startTime = os.clock()
    while os.clock() - startTime < 10 do
        if workspace and Players and Players.LocalPlayer and Players.LocalPlayer.Character and workspace:FindFirstChildOfClass("Terrain") then
            task.wait(0.5)
            return
        end
        task.wait(0.2)
    end

    updateStatusGui("workspace load timeout :(")
end

local function mainLoop()
    updateStatusGui("script started")
    while true do
        if not isTeleporting then isTeleporting = false end

        waitForWorkspaceLoad()

        local foundEgg = nil
        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj:IsA("Model") and (obj.Name == "Aura Egg" or obj.Name == "Bunny Egg") then
                foundEgg = obj
                break
            end
        end

        if foundEgg then
            eggType = (foundEgg.Name == "Aura Egg") and "Aura" or "Bunny"
            updateStatusGui("YOOOOOOOOOOOOO EGG FOUND: " .. foundEgg.Name)
            pcall(sendToDiscord)
            task.wait(2)
            updateStatusGui("teleporting after finding " .. foundEgg.Name)
            teleportToRandomServer()
            return
        else
            updateStatusGui("no egg found (Aura/Bunny), finding new server")
            local teleportStarted = teleportToRandomServer()

            if not teleportStarted then
                updateStatusGui("teleport cycle failed gang wait 10s")
                task.wait(10)
            else
                task.wait(3.5)
                if isTeleporting then
                    updateStatusGui("teleport check retrying cycle")
                    isTeleporting = false
                end
            end
        end
        task.wait(1)
    end
end

local function sendToMyWebLog(eggType)
    local payload = {
        userId = game.Players.LocalPlayer.UserId,
        username = game.Players.LocalPlayer.Name,
        runtime = math.floor(os.clock() - sessionStartTime),
        jobId = game.JobId,
        placeId = game.PlaceId,
        executor = getExecutorType(),
        eggType = eggType,
        timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
    }

    local success, response = pcall(function()
        return game:GetService("HttpService"):RequestAsync({
            Url = "https://zynovascripts.xyz/track.php",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = HttpService:JSONEncode(payload)
        })
    end)

    if success and response.Success then
        print("Log sent to web successfully!")
    else
        warn("Failed to send log to web:", response)
    end
end

local success, err = pcall(mainLoop)
if not success then
    updateStatusGui(string.format("bad error broooooo %s", tostring(err):sub(1, 50)))
end
updateStatusGui("starting up")
