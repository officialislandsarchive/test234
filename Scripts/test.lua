local folderName = "_REMOTES_ZYNOVA_"
local folderParent = game:GetService("ReplicatedStorage")

local folder = folderParent:FindFirstChild(folderName)
if not folder then
    folder = Instance.new("Folder")
    folder.Name = folderName
    folder.Parent = folderParent
end

local stringValues = {
    {Name = "KillRemote", Value = "jiqEhnmoMV/ZlgessyomwyEX"},
    {Name = "KillRemoteHashName", Value = "UiItXhnkf"},
    {Name = "TOOL_PICKUPHashData", Value = "UkOvamtydvkHSlqjbwGaxeezvfgtmcasShNxTad"},
    {Name = "CropHashData", Value = "tukiqepvhyyBj"},
    {Name = "TreeHashData", Value = "xkpOrfvithbzcvKundjsvoamBnpkqBsXm"},
    {Name = "BlockHitHashData", Value = "xkpOrfvithbzcvKundjsvoamBnpkqBsXm"},
    {Name = "FlowerCollect", Value = "client_request_1"},
    {Name = "PetCollect", Value = "CLIENT_PET_ANIMAL"},
    {Name = "BlockRemote", Value = "CLIENT_BLOCK_HIT_REQUEST"},
    {Name = "SpiritRemote", Value = "gecqaLhbvAbyjo/qDgqEvuQzyryuBnlzh"},
    {Name = "CropPlaceHashData", Value = "foaouddukLJgsWeqarxxCuFoWLvf"},
    {Name = "BlockPlaceHashData", Value = "foaouddukLJgsWeqarxxCuFoWLvf"},
    {Name = "FishFarmFinishRemote", Value = "jtEIwpvoyxfyedcIomzEcuywKczW/vxdJepVeLTscuViRAjHftcqjvpyomnsl"},
    {Name = "AngelRemote", Value = "jtEIwpvoyxfyedcIomzEcuywKczW/rpjmsslmMwtNp"}
}

for _, data in ipairs(stringValues) do
    local existingValue = folder:FindFirstChild(data.Name)
    if not existingValue then
        local stringValue = Instance.new("StringValue")
        stringValue.Name = data.Name
        stringValue.Value = data.Value
        stringValue.Parent = folder
    end
end
wait("3")
local IsPremium = false 
local DidKey = false
local ScriptVersion = "V1"
local FileName = "Zynovahub"
local GameName = "Islands"
local DeveloperVersion = false
local NotificationIcon = "rbxassetid://1234567890"

local PlaceHASHName = "foaouddukLJgsWeqarxxCuFoWLvf"
local PlaceHASH = "UaEGjnxjhvDnxhZlbHrbjiAonkqdgm"
local TreeHash = "kyaxebDphmkcyha"
local TreeHashData = "xkpOrfvithbzcvKundjsvoamBnpkqBsXm"

function SendNotification(Title, Text)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = Title,
		Text = Text,
		Icon = NotificationIcon
	})
end	

SendNotification("Welcome!", "Welcome to "..FileName .. " " .. ScriptVersion.."!")
local PremiumText1 = "Premium is only 10$ Lifetime. Go buy it in discord.gg/m6xTX6zNYK"
if not isfolder(FileName) then
    print("[DEBUG] Root folder does not exist. Creating folder:", FileName)
    makefolder(FileName)
else
    print("[DEBUG] Root folder exists:", FileName)
end

if not isfolder(FileName .. "/" .. GameName) then
    print("[DEBUG] Game-specific folder does not exist. Creating folder:", FileName .. "/" .. GameName)
    makefolder(FileName .. "/" .. GameName)
else
    print("[DEBUG] Game-specific folder exists:", FileName .. "/" .. GameName)
end

function IsFile(Name)
    local filePath = FileName .. "/" .. GameName .. "/" .. Name
    local exists = isfile(filePath)
    print("[DEBUG] Checking if file exists:", filePath, "Result:", exists)
    return exists
end

function IsFolder(Name)
    local folderPath = FileName .. "/" .. GameName .. "/" .. Name
    local exists = isfolder(folderPath)
    print("[DEBUG] Checking if folder exists:", folderPath, "Result:", exists)
    return exists
end

function ReadFile(Name)
    local filePath = FileName .. "/" .. GameName .. "/" .. Name
    if isfile(filePath) then
        local content = readfile(filePath)
        print("[DEBUG] File found. Reading content from:", filePath)
        return content
    else
        print("[DEBUG] File not found. Path:", filePath)
        return nil
    end
end

function CreateFolder(Name)
    local folderPath = FileName .. "/" .. GameName .. "/" .. Name
    if not isfolder(folderPath) then
        print("[DEBUG] Folder does not exist. Creating folder:", folderPath)
        makefolder(folderPath)
    else
        print("[DEBUG] Folder already exists:", folderPath)
    end
end

function CreateFile(Name, Data, CheckIfFile)
    local filePath = FileName .. "/" .. GameName .. "/" .. Name
    if CheckIfFile then
        if not isfile(filePath) then
            print("[DEBUG] File does not exist. Creating file:", filePath)
            writefile(filePath, Data)
        else
            print("[DEBUG] File already exists. Skipping creation:", filePath)
        end
    else
        print("[DEBUG] Creating or overwriting file:", filePath)
        writefile(filePath, Data)
    end
end

task.wait(1)

function GetSchematicaFiles()
	local Path = FileName.."/"..GameName.."/".."Schematica"
	local Files = listfiles(Path)
	if not Files or (#Files == 0) then
		local TemplateFile = game:HttpGet("https://pastebin.com/raw/dRdhF4Bu")
		CreateFile("/Schematica/Template", TemplateFile, false)
		task.wait(1)
		local Files = listfiles(Path)
		return Files;
	else
		return Files;
	end
end

CreateFolder("Schematica")
CreateFolder("ello")

if IsPremium == false then
	IsPremium = true
	DidKey = true
else
	DidKey = false
end

local CloneFolder

if game:GetService("Workspace"):FindFirstChild("Clones/Zy_NOVA_HUB") then
	CloneFolder = game:GetService("Workspace"):FindFirstChild("Clones/Zy_NOVA_HUB")
else
	local F = Instance.new("Model")
	F.Parent = game:GetService("Workspace")
	F.Name = "Clones/Zy_NOVA_HUB"
	CloneFolder = F
end

function DeleteIsland(PASSWORD)
	if PASSWORD == "UI NB)QUN BGTUI(O $ I)ONHZIO$NUI GOH)U$UB GZ)($NZOU IGHN$)(TMI)(O)" then 
		game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("CLIENT_RESET_ISLAND_REQUEST"):InvokeServer()
	end
end

function IsInTable(Table, NameToCheck)
	if NameToCheck and Table then
		if type(Table) == "table" then
			if table.find(Table, NameToCheck) then
				return true
			else
				return false
			end
		else
			if type(Table) == "string" then
				if Table == NameToCheck then
					return true
				else
					return false
				end
			end
		end
	else
		return false
	end
end

function DebugCheck(N,Text)
	if _G.DebugMode == true then
		rconsolename("Debug")
		if N == nil then
			N = 0
		end 
		if N == 0 then
			rconsoleprint("\n"..Text)
		end
	end
end

DebugCheck(0,"im waiting...")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
	vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local NofLibery = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
DebugCheck(0,"Loaded!")
DebugCheck(0,"Anti AFK: Loaded!")
game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
_G.TeleportSpeed = 30

function TweenHello()
	local Notify = Instance.new("ScreenGui")
	local Background = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Image = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local Label = Instance.new("TextLabel")
	local Text = Instance.new("TextLabel")
	local Line = Instance.new("Frame")
	local TweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	Background.Position = UDim2.new(-1, 0, 0.5, 0)
	local tween = TweenService:Create(Background, tweenInfo, {
		Position = UDim2.new(0.05, 0, 0.5, 0)
	})

	local function removeNotification()
		wait(3)
		tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
		local tweenOut = TweenService:Create(Background, tweenInfo, {
			Position = UDim2.new(-1, 0, 0.5, 0)
		})
		tweenOut:Play()
		wait(1)
		Notify:Destroy()
	end

	Notify.Name = "Notify"
	Notify.Parent = game:GetService("CoreGui")
	Notify.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Background.Name = "Background"
	Background.Parent = Notify
	Background.BackgroundColor3 = Color3.fromRGB(6, 5, 35)
	Background.Position = UDim2.new(0.05, 0, 0.5, 0)
	Background.Size = UDim2.new(0, 240, 0, 70)

	UICorner.CornerRadius = UDim.new(0, 15)
	UICorner.Parent = Background

	Image.Name = "Image"
	Image.Parent = Background
	Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Image.BorderSizePixel = 0
	Image.Position = UDim2.new(0.0291666668, 0, 0.142857149, 0)
	Image.Size = UDim2.new(0, 50, 0, 50)
	Image.Image = "rbxassetid://109609255223481"
	Image.ScaleType = Enum.ScaleType.Tile

	UICorner_2.Parent = Image

	Label.Name = "Label"
	Label.Parent = Background
	Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label.BackgroundTransparency = 1.000
	Label.BorderSizePixel = 0
	Label.Position = UDim2.new(0.273145556, 0, 0, 0)
	Label.Size = UDim2.new(0, 167, 0, 35)
	Label.Font = Enum.Font.SourceSansBold
	Label.Text = "Zynova Hub V1"
	Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label.TextSize = 28.000

	Text.Name = "Text"
	Text.Parent = Background
	Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text.BackgroundTransparency = 1.000
	Text.BorderSizePixel = 0
	Text.Position = UDim2.new(0.273145556, 0, 0.50957489, 0)
	Text.Size = UDim2.new(0, 167, 0, 24)
	Text.Font = Enum.Font.SourceSans
	Text.Text = "Welcome!"
	Text.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text.TextSize = 23.000

	Line.Name = "Line"
	Line.Parent = Background
	Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Line.BackgroundTransparency = 0.300
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0.237499997, 0, 0.5, 0)
	Line.Size = UDim2.new(0, 183, 0, 1)

	local TweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	Background.Position = UDim2.new(-1, 0, 0.5, 0)
	local tween = TweenService:Create(Background, tweenInfo, {
		Position = UDim2.new(0.05, 0, 0.5, 0)
	})

	tween:Play()
	local soundId = "rbxassetid://4695797538"
	local sound = Instance.new("Sound")
	sound.Name = "MySound"
	sound.SoundId = soundId
	sound.Volume = 1
	sound.PlaybackSpeed = 1
	sound.Looped = false
	sound.Parent = game.Workspace
	sound:Play()

	local function removeNotification()
		wait(3)
		tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
		local tweenOut = TweenService:Create(Background, tweenInfo, {
			Position = UDim2.new(-1, 0, 0.5, 0)
		})
		tweenOut:Play()
		wait(1)
		Notify:Destroy()
	end
	removeNotification()
end

TweenHello()

local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/InterfaceManager.lua"))()


function Remotes()
	DebugCheck(0,"HASH AUTO UPDATE V1")

	if IsFolder("/Hash System") and IsFile("Game Version") and ReadFile("Game Version") and game.PlaceVersion == tonumber(ReadFile("Game Version")) then
		print("Its not updated!")
		_G.TreeHash = ReadFile("/Hash System/TreeHash")
		_G.TreeHashData = ReadFile("/Hash System/TreeHashData")
		_G.BlockHitHash = ReadFile("/Hash System/BlockHitHash")
		_G.BlockHitHashData = ReadFile("/Hash System/BlockHitHashData")
		_G.BlockPlaceHashData = ReadFile("/Hash System/BlockPlaceHashData")
		_G.BlockPlaceHash = ReadFile("/Hash System/BlockPlaceHash")
	else
		CreateFolder("Hash System")
		print("Getting Hashes!")
		CreateFile("Game Version", tostring(game.PlaceVersion), false)
	end
end
Remotes()

local RemoteData = game:GetService("ReplicatedStorage"):WaitForChild("_REMOTES_ZYNOVA_", 5)
if not RemoteData then
    warn("_REMOTES_ZYNOVA_ not found in ReplicatedStorage after waiting for 5 seconds")
else
    print("_REMOTES_ZYNOVA_ found!")
end
_G.Island_USERID = game.Players.LocalPlayer.UserId
local CropPlaceH2 = _G.CropPlaceHash
local PickupH2 = _G.TOOL_PICKUPHash
local PlaceHASH = _G.BlockPlaceHash
local HitHASH = _G.BlockHitHash
local MAINSCRIPTHANDLER
local LASTTWEEN = nil
local SettingsTable = {
	Twennnoclip = true,
	TweenFly = true,
	TweenFast = true,
	PlayerFly = false,
	AutoUpdate = true
}
local UserSettings = {
	TeleportMethod = "Tween"
}
local FloatRender
local FloatPart
local UseFloat = false
local Float_Part = Instance.new('Part')

Float_Part.Name = "floatName"
Float_Part.Parent = game.Players.LocalPlayer.Character
Float_Part.Transparency = 1
Float_Part.Size = Vector3.new(2,0.2,1.5)
Float_Part.Anchored = true
FloatPart = Float_Part
FloatRender = game:GetService("RunService").RenderStepped:Connect(function()
	if UseFloat == true then
		Float_Part.CanCollide = true
		Float_Part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3.1,0) 
	else
		Float_Part.CanCollide = false
	end
end)

function MiniTpBlocks(Model,position)
	if Model then
		for i,v in pairs(Model:GetDescendants()) do
			if v:IsA("Part") or v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end

	local function MiniTpV2(position)
		Model:SetPrimaryPartCFrame(CFrame.new(position))
	end

	local myPart = Model.PrimaryPart
	local targetPosition = position
	local minDistance = 3
	local maxIterations = 3
	DebugCheck(0,"Initial Position: " .. tostring(myPart.Position))
	DebugCheck(0,"Target Position: " .. tostring(targetPosition))
	local prevDistance = (myPart.Position - targetPosition).magnitude
	local noProgressCount = 0
	while (myPart.Position - targetPosition).magnitude > minDistance do
		local offset = targetPosition - myPart.Position
		local distance = offset.Magnitude
		local step
		local waitTime
		step = Vector3.new(3, 3, 3)
		waitTime = 0
		local direction = offset.Unit
		local steps = math.ceil(distance / step.Magnitude)
		local newStep = offset / steps
		local progress = false
		for i = 1, steps do
			local newPos = myPart.Position + newStep * i
			if newPos.X > targetPosition.X and newStep.X > 0 then
				newStep = Vector3.new(0, newStep.Y, newStep.Z)
			elseif newPos.X < targetPosition.X and newStep.X < 0 then 
				newStep = Vector3.new(0, newStep.Y, newStep.Z) 
			end 
			if newPos.Y > targetPosition.Y and newStep.Y > 0 then 
				newStep = Vector3.new(newStep.X, 0, newStep.Z) 
			elseif newPos.Y < targetPosition.Y and newStep.Y < 0 then 
				newStep = Vector3.new(newStep.X, 0, newStep.Z) 
			end 
			if newPos.Z > targetPosition.Z and newStep.Z > 0 then 
				newStep = Vector3.new(newStep.X, newStep.Y, 0) 
			elseif newPos.Z < targetPosition.Z and newStep.Z < 0 then 
				newStep = Vector3.new(newStep.X, newStep.Y, 0) 
			end 
			newPos = myPart.Position + newStep
			MiniTpV2(newPos)
			DebugCheck(0,"Current Position: " .. tostring(myPart.Position))
			DebugCheck(0,"In radius!")
			wait(waitTime)
			local currDistance = (myPart.Position - targetPosition).magnitude
			if currDistance >= prevDistance then
				noProgressCount = noProgressCount + 1
			else
				prevDistance = currDistance
				noProgressCount = 0
				progress = true
			end
			if noProgressCount >= maxIterations then
				DebugCheck(0,"Stuck! Breaking out of loop...")
				break
			end
		end
		if not progress then
			DebugCheck(0,"Stuck! Breaking out of loop...")
			break
		end
	end
end

function MiniTp(position)
	UseFloat = true
	local function MiniTpV2(position)
		local player = game:GetService("Players").LocalPlayer
		local character = player.Character
		if character and character.PrimaryPart then
			character:SetPrimaryPartCFrame(CFrame.new(position))
		end
	end

	local myPart = game.Players.LocalPlayer.Character.HumanoidRootPart
	local targetPosition = position
	local minDistance = 3
	local maxIterations = 3
	DebugCheck(0,"Initial Position: " .. tostring(myPart.Position))
	DebugCheck(0,"Target Position: " .. tostring(targetPosition))
	local prevDistance = (myPart.Position - targetPosition).magnitude
	local noProgressCount = 0
	while (myPart.Position - targetPosition).magnitude > minDistance do
		local offset = targetPosition - myPart.Position
		local distance = offset.Magnitude
		local step
		local waitTime
		if distance <= 50 then
			step = Vector3.new(1, 2, 1)
			waitTime = 0.04
		elseif distance <= 30 then
			step = Vector3.new(1, 2, 1)
			waitTime = 0.005
		else
			step = Vector3.new(2.5, 4.5, 2.5)
			waitTime = 0.20
		end

		local direction = offset.Unit
		local steps = math.ceil(distance / step.Magnitude)
		local newStep = offset / steps
		local progress = false
		for i = 1, steps do
			local newPos = myPart.Position + newStep * i
			if newPos.X > targetPosition.X and newStep.X > 0 then
				newStep = Vector3.new(0, newStep.Y, newStep.Z)
			elseif newPos.X < targetPosition.X and newStep.X < 0 then 
				newStep = Vector3.new(0, newStep.Y, newStep.Z) 
			end 
			if newPos.Y > targetPosition.Y and newStep.Y > 0 then 
				newStep = Vector3.new(newStep.X, 0, newStep.Z) 
			elseif newPos.Y < targetPosition.Y and newStep.Y < 0 then 
				newStep = Vector3.new(newStep.X, 0, newStep.Z) 
			end 
			if newPos.Z > targetPosition.Z and newStep.Z > 0 then 
				newStep = Vector3.new(newStep.X, newStep.Y, 0) 
			elseif newPos.Z < targetPosition.Z and newStep.Z < 0 then 
				newStep = Vector3.new(newStep.X, newStep.Y, 0) 
			end 
			newPos = myPart.Position + newStep
			MiniTpV2(newPos)
			DebugCheck(0,"Current Position: " .. tostring(myPart.Position))
			DebugCheck(0,"In radius!")
			wait(waitTime)
			local currDistance = (myPart.Position - targetPosition).magnitude
			if currDistance >= prevDistance then
				noProgressCount = noProgressCount + 1
			else
				prevDistance = currDistance
				noProgressCount = 0
				progress = true
			end
			if noProgressCount >= maxIterations then
				DebugCheck(0,"Stuck! Breaking out of loop...")
				break
			end
		end
		if not progress then
			DebugCheck(0,"Stuck! Breaking out of loop...")
			break
		end
	end
	if (myPart.Position - targetPosition).magnitude <= minDistance then
		MiniTpV2(targetPosition)
	end
	DebugCheck(0,"Final Position: " .. tostring(myPart.Position))
	DebugCheck(0,"Reached Target Position!")
	UseFloat = false
end

local function erstellePart(position)
	local part = Instance.new("Part")
	part.Position = position
	part.Anchored = true
	part.Size = Vector3.new(1, 1, 1)
	part.BrickColor = BrickColor.new("Bright red")
	part.Parent = game.Workspace
	part.CanCollide = false
	part.Transparency = 0.65
	task.spawn(function()
		task.wait(10)
		part:Destroy()
	end)
end

local function followPathV2(destination)
	local PathfindingService = game:GetService("PathfindingService")
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local player = Players.LocalPlayer
	local character = player.Character
	local humanoid = character:WaitForChild("Humanoid")
	local HumanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local path = PathfindingService:CreatePath()
	local GoodAndFinished = false
	local success, errorMessage = pcall(function()
		path:ComputeAsync(character.PrimaryPart.Position, destination)
	end)

	if success and path.Status == Enum.PathStatus.Success then
		waypoints = path:GetWaypoints()
		blockedConnection = path.Blocked:Connect(function(blockedWaypointIndex)
			if blockedWaypointIndex >= nextWaypointIndex then
				blockedConnection:Disconnect()
				followPath(destination)
			end
		end)

		if not reachedConnection then
			reachedConnection = humanoid.MoveToFinished:Connect(function(reached)
				if reached and nextWaypointIndex < #waypoints then
					nextWaypointIndex = nextWaypointIndex + 1
					humanoid:MoveTo(waypoints[nextWaypointIndex].Position)
				else
					reachedConnection:Disconnect()
					blockedConnection:Disconnect()
				end
			end)
		end
		if GoodAndFinished == true then return nil end
		nextWaypointIndex = 2
		for i = 1,#waypoints do
			erstellePart(waypoints[i].Position + Vector3.new(0,2,0))
		end
		for i = 1,#waypoints do
			HumanoidRootPart.CFrame = CFrame.new(waypoints[i].Position + Vector3.new(0,2,0))
			task.wait(0.2)
		end
		task.wait(2)
		GoodAndFinished = true
		return true
	else
		warn("Path not computed!", errorMessage)
		local tpservice= game:GetService("TeleportService")
		local plr = game.Players.LocalPlayer
		task.wait(1)
		return errorMessage
	end
end

local TeleportV4Wait = false
function TeleportV4(Position)
	local ISARENDER = nil
	if Position ~= nil then
		if _G.TeleportMethod == "Tween" then
			TweenTp(Position)
			task.wait()
			return true
		elseif _G.TeleportMethod == "TweenV2" then	
			if typeof(Position)=="Vector3" then
				if Position.Y then
					local HUM = game.Players.LocalPlayer.Character.HumanoidRootPart
					game.Players.LocalPlayer.Character:MoveTo(Vector3.new(HUM.Position.X, Position.Y, HUM.Position.Z))
				end
			end
			local dist=(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position-Position).Magnitude
			tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(dist/30, Enum.EasingStyle.Linear)
			local ALRE = true
			tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(Position)})
			CROPTWEEN22 = tween
			LASTTWEEN = tween
			tween:Play()
			task.wait()
			return true
		elseif _G.TeleportMethod == "TweenV3" then	
			local PartToMove = game.Players.LocalPlayer.Character.HumanoidRootPart
			local TargetPos = CFrame.new(Position)
			local Dis = (PartToMove.Position - Vector3.new(TargetPos.X, TargetPos.Y, TargetPos.Z)).Magnitude
			local _speed = 15
			local Completed = false
			if Dis < 30 then
				_speed = 15
			end
			if Dis < 10 then
				_speed = 20
			end

			_speed = _speed
			local TimeToRun = TweenInfo.new(Dis/_speed)
			local WhatToChange = {
				CFrame = TargetPos
			}

			function Noclip(V)
				if V == true then
					V = false
				else
					V = true
				end
				for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if child:IsA("BasePart") and child.CanCollide == true then
						child.CanCollide = V
					end
				end
			end
			function DoAfter()
				PartToMove.Anchored = false
				Noclip(false)
				Completed = true
			end
			local tween = game:GetService("TweenService"):Create(PartToMove, TimeToRun, WhatToChange)
			CROPTWEEN22 = tween
			LASTTWEEN = tween
			Noclip(true)
			task.spawn(function()
				repeat 
					task.wait()
					game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(PartToMove.Position.X, TargetPos.Y, PartToMove.Position.Z))

				until Completed == true
			end)
			tween:Play()
			tween.Completed:Connect(DoAfter)
		elseif _G.TeleportMethod == "Instant" then
			UseFloat = true
			game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(Position)
			FloatRender:Disconnect()
			FloatPart:Destroy()
			task.spawn(function()
				task.wait(0.2)
				UseFloat = false
			end)
			return true
		elseif _G.TeleportMethod == "MiniTp" then
			if TeleportV4Wait == false then
				TeleportV4Wait = true
				MiniTp(Position)
				task.wait()
				TeleportV4Wait = false
				FloatRender:Disconnect()
				FloatPart:Destroy()
				task.wait()
				return true
			end
		elseif _G.TeleportMethod == "Pathfinding" then
			local PART = Instance.new("Part")
			PART.CFrame = CFrame.new(Position)
			PART.Anchored = true
			PART.Transparency = 1
			PathFindingSystem(PART)
			return true
		elseif _G.TeleportMethod == "PathfindingV2" then
			followPathV2(Position)
			return true
		elseif _G.TeleportMethod == "Bypass" then
			ISARENDER = game:GetService("RunService").RenderStepped:Connect(function()
				for i = 1,5 do
					wait(0.1)
					task.spawn(function()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Position)
					end)
				end
			end)
		end
	else
		warn("Position is nil!")
	end
	if ISARENDER then
		task.wait(5)
		ISARENDER:Disconnect()
	end
end

	function GetTool(TOOLNAME, BackonChanged, BreakToolname)
			for i,v in pairs(game:GetService("ReplicatedStorage").Tools:GetChildren()) do
				if v.Name == TOOLNAME and v:IsA("Tool") then
					local Clone = v:Clone()
					Clone.Parent = game.Players.LocalPlayer.Backpack


					if BackonChanged == true then

						function Invisble(Tool, V)
							local TOCHAN 
							if V == true then
								TOCHAN = 1
							else
								TOCHAN = 0
							end

							if Tool:FindFirstChild("Handle") then
								if Tool:FindFirstChild("Handle"):IsA("Part") or Tool:FindFirstChild("Handle"):IsA("MeshPart") then
									Tool:FindFirstChild("Handle").Transparency = TOCHAN
									for i,v in pairs(Tool:FindFirstChild("Handle"):GetChildren()) do
										if v then
											if v:IsA("Part") or v:IsA("MeshPart") then
												v.Transparency = TOCHAN
											end
										end
									end
								end
							end

						end 

						local Back = false
						if game.Players.LocalPlayer.Character:FindFirstChild(BreakToolname) then
							Back = true
						end
						game.Players.LocalPlayer.Character.ChildAdded:Connect(function(Added)
							if Added.Name == BreakToolname then
								Back = true
							end
						end)



						game.Players.LocalPlayer.Character.ChildRemoved:Connect(function(Added)
							if Added.Name == BreakToolname then
								if game.Players.LocalPlayer.Backpack:FindFirstChild(BreakToolname) then
									if game.Players.LocalPlayer.Backpack:FindFirstChild(BreakToolname):FindFirstChild("axe") then
										game.Players.LocalPlayer.Backpack:FindFirstChild(BreakToolname):FindFirstChild("axe").Enabled = true
										Invisble(game.Players.LocalPlayer.Backpack:FindFirstChild(BreakToolname), false)
									end
								end
							end
						end)

						Clone.Changed:Connect(function(Changed)
							if Changed == "Parent" then
								if Back == true then
									if game.Players.LocalPlayer.Backpack:FindFirstChild(BreakToolname) then
										if game.Players.LocalPlayer.Backpack:FindFirstChild(BreakToolname) then
											if game.Players.LocalPlayer.Backpack:FindFirstChild(BreakToolname):FindFirstChild("axe") then
												game.Players.LocalPlayer.Backpack:FindFirstChild(BreakToolname):FindFirstChild("axe").Enabled = false
												Invisble(game.Players.LocalPlayer.Backpack:FindFirstChild(BreakToolname), true)
											end
										end
										game.Players.LocalPlayer.Backpack:FindFirstChild(BreakToolname).Parent = game.Players.LocalPlayer.Character 
									end
								end
							end
						end)
					end
				end
			end 
		end

local Window 
local Tabs
if DeveloperVersion == false then
	if DidKey == true then
		Window = Fluent:CreateWindow({
			Title = "Zynova Hub "..ScriptVersion.." [FREE!] ",
			SubTitle = "Made by Albert",
			TabWidth = 160,
			Size = UDim2.fromOffset(580, 460),
			Acrylic = true,
			Theme = "Dark",
			MinimizeKey = Enum.KeyCode.LeftControl
		})
		Tabs = {
			BlockPrinter = Window:AddTab({ Title = "Block Printer", Icon = "printer" }),
			Player = Window:AddTab({ Title = "Player", Icon = "user" }),
			Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
		}
	else
		Window = Fluent:CreateWindow({
			Title = "Zynova Hub "..ScriptVersion.." [Premium!] ",
			SubTitle = "Made by Albert",
			TabWidth = 160,
			Size = UDim2.fromOffset(580, 460),
			Acrylic = true,
			Theme = "Dark",
			MinimizeKey = Enum.KeyCode.LeftControl
		})
		Tabs = {
			BlockPrinter = Window:AddTab({ Title = "Block Printer", Icon = "printer" }),
			Player = Window:AddTab({ Title = "Player", Icon = "user" }),
			Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
		}
	end
else
	Window = Fluent:CreateWindow({
		Title = "Zynova Hub "..ScriptVersion.." [Developer!] ",
		SubTitle = "Made by Albert",
		TabWidth = 160,
		Size = UDim2.fromOffset(580, 460),
		Acrylic = true,
		Theme = "Dark",
		MinimizeKey = Enum.KeyCode.LeftControl
	})
	Tabs = {
		BlockPrinter = Window:AddTab({ Title = "Block Printer", Icon = "printer" }),
		Player = Window:AddTab({ Title = "Player", Icon = "user" }),
		Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
		DeveloperTab = Window:AddTab({ Title = "Dev", Icon = "code" })
	}	
end 

local Options = Fluent.Options
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
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
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
			CONTROL.F = (iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R =  (iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = iyflyspeed*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -iyflyspeed*2
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

function Hash()
	local HttpService = game:GetService("HttpService")
	local Abd = HttpService:GenerateGUID(false)..HttpService:GenerateGUID(false)..HttpService:GenerateGUID(false)
	return Abd
end

local _WAIT = false
function TweenTp(...)
	local _speed=_G.TweenFlySpeed or 30
	local TFS = SettingsTable
	if not game.Players.LocalPlayer.Character then return end
	if _WAIT == false then
		_WAIT = true

		if TFS.TweenFly == true then
			sFLY(true)
		end
		if TFS.Twennnoclip == true then
			for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
		end
		local plr=game.Players.LocalPlayer
		local args={...}
		if typeof(args[1])=="number"and args[2]and args[3]then
			args=Vector3.new(args[1],args[2],args[3])
		elseif typeof(args[1])=="Vector3" then
			args=args[1]    
		elseif typeof(args[1])=="CFrame" then
			args=args[1].Position
		end
		if plr.Character:FindFirstChild("HumanoidRootPart") then
			local dist=(plr.Character:FindFirstChild("HumanoidRootPart").Position-args).Magnitude
			local Tween = game:GetService("TweenService"):Create(
			plr.Character.HumanoidRootPart,
			TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
			{CFrame=CFrame.new(args)}
			)
			CROPTWEEN22 = Tween
			LASTTWEEN = Tween
			Tween:Play()
			Tween.Completed:Connect(function()
				_WAIT = false
				if TFS.PlayerFly == false then
					NOFLY()
				end
				if TFS.Twennnoclip == true then
					for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if child:IsA("BasePart") and child.CanCollide == false and child.Name ~= floatName then
							child.CanCollide = true
						end
					end
				end
				return true
			end)
			return Tween
		end
	end
end

function PathFindingSystem(dest)
	local serv = game:GetService("PathfindingService")
	local human = game.Players.LocalPlayer.Character.Humanoid 
	local body = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character:FindFirstChild("Torso")
	if dest == nil then return end
	if dest:IsA("Part") then else DebugCheck(0,"Fehler kein Part!") end
	local path = serv:CreatePath()
	path:ComputeAsync(body.Position,dest.Position)
	if path.Status == Enum.PathStatus.Success then
		local wayPoints = path:GetWaypoints()
		for i = 1,#wayPoints do
			local point = wayPoints[i]
			human:MoveTo(point.Position)
			local success = human.MoveToFinished:Wait()
			if point.Action == Enum.PathWaypointAction.Jump then
				human.WalkSpeed = 0
				wait(0.2)
				human.WalkSpeed = 16
				human.Jump = true
			end
			if not success then
				human.Jump = true
				human:MoveTo(point.Position)
				if not human.MoveToFinished:Wait() then
					break
				end
			end
		end
	end
end

function GetTreeName(TreeArt)
	_G.ZahlenTree = false
	_G.OakSelected = false
	if TreeArt == "all" then
		return "tree"
	elseif TreeArt == "Oak" then
		_G.OakSelected = true
		return "tree"
	elseif TreeArt == "Birch" then
		return "treeBirch"
	elseif TreeArt == "Maple" then
		return "treeMaple"
	elseif TreeArt == "Pine" then
		return "treePine"
	elseif TreeArt == "Hickory" then
		return "treeHickory"
	elseif TreeArt == "Spirit" then
		_G.ZahlenTree = true
		return "treeSpirit"
	end
end

function IsSynapse()
	if (syn) then
		return true
	else
		return false
	end
end

local SAVEDBlocksPos = {}
function GetBlockUpdate()
	local Island = GetIsland()
	if Island then
		local Blocks = Island:FindFirstChild("Blocks")
		for i,v in pairs(Blocks:GetChildren()) do
			if v:IsA("Part") or v:IsA("MeshPart") then
				table.insert(SAVEDBlocksPos, v)
			end
		end 
	end
end

function GetBlock(Name, Pos)
	if SAVEDBlocksPos == {} or SAVEDBlocksPos == nil then
		GetBlockUpdate()
	end
	local Island = GetIsland()
	local Blocks = Island:FindFirstChild("Blocks")
	if not Blocks then return nil end
	for i,v in ipairs(SAVEDBlocksPos) do
		if v:FindFirstChild("Health") then
			if Name == false then
				if v.Position == Pos then
					return v
				end
			else
				if v.Name == Name then
					if v.Position == Pos then
						return v
					end
				end
			end
		end
	end
end

function GetIsland()
	local FOUND = false
	local islandName
	local _________Inseln = game:GetService("Workspace").Islands:GetChildren()
	for i = 1, #_________Inseln do
		if _________Inseln[i]:FindFirstChild("Owners"):FindFirstChild(_G.Island_USERID) then
			islandName = _________Inseln[i]
			FOUND = true
			return islandName
		end
	end 
	task.wait()
	if not FOUND then
		return game:GetService("Workspace").Islands:FindFirstChildWhichIsA("Model")
	end
end

function GetBlocks(position, size, Part)
	local mainPart
	if Part then
		mainPart = Part
	else
		local position = position or Vector3.new(0,0, 0)
		local halfSize = size or Vector3.new(0,0,0)
		mainPart = Instance.new("Part")
		mainPart.Size = halfSize
		mainPart.CFrame = CFrame.new(position)
		mainPart.Anchored = true
		mainPart.Parent = workspace
		mainPart.Transparency = 0.5
		mainPart.CanCollide = false
		print("Creating a SelectionBox and placing it around the region.")
		local selectionBox = Instance.new("SelectionBox")
		selectionBox.Adornee = mainPart
		selectionBox.LineThickness = 0.1
		selectionBox.Color3 = Color3.new(1, 0, 0)
		selectionBox.Transparency = 0.5
		selectionBox.Parent = mainPart

	end

	local FoundBlocks  = {}
	local blockCount = 0
	for _, part in pairs(workspace:GetPartsInPart(mainPart)) do
		blockCount = blockCount + 1
		DebugCheck(0,"Block", blockCount, "Name:", part.Name, "Position:", part.Position)
		table.insert(FoundBlocks, part)
	end
	return FoundBlocks
end

function Message(Title1, Context1, ButtonText1, DurationTime)
	Fluent:Notify({
		Title = Title1,
		Content = Context1,
		Duration = DurationTime
	})
end

	local BlockPrinterSelection = Tabs.BlockPrinter:AddSection("Block Printer")
	local StartBlock = nil
	local EndBlock = nil
	local BlockPrinterBlocks = BlockPrinterSelection:AddParagraph({
		Title = "- Blocks:",
		Content = "/"
	})
	local BlockPrinterTime = BlockPrinterSelection:AddParagraph({
		Title = "- Time:",
		Content = "/"
	})

	local BlockPrinterDestroyTime
	local DestroyBlocksTimeParagraph
	local selectionBox
	local selectionLasso
	local handles
	local MainPart 
	game:GetService("RunService").RenderStepped:Connect(function()
		if selectionBox then
			selectionBox.Color3 = _G.ResizeToolOutlineColor or Color3.fromRGB(65, 105, 225)
		end
		if handles then
			handles.Color3 = _G.ResizeToolMoveButtonColor or Color3.fromRGB(65, 105, 225)
		end
		if MainPart then
			MainPart.Transparency = _G.ResizeToolFillTransparency
			if _G.ResizeToolFillColor then
				MainPart.Color = _G.ResizeToolFillColor
			end
		end
	end)

	local previousDistance
	function GetBlockCount()
		local positions = {}
		local function checkPositions(start, finish)
			local minX = math.min(start.x, finish.x)
			local maxX = math.max(start.x, finish.x)
			local minY = math.min(start.y, finish.y)
			local maxY = math.max(start.y, finish.y)
			local minZ = math.min(start.z, finish.z)
			local maxZ = math.max(start.z, finish.z)
			return Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ)
		end

		local start_BLOCK = _G.StartBlock or StartBlock
		local start = start_BLOCK.Position
		local finish_Block = _G.EndBlock or EndBlock
		local _finish = finish_Block.Position
		start, finish = checkPositions(start, _finish)
		for x = start.x, finish.x, 3 do
			for y = start.y, finish.y, 3 do
				for z = start.z, finish.z, 3 do
					positions[#positions + 1] = Vector3.new(x, y, z)
				end
			end
		end

		local BlockPlaceCount = 0
		for i,v in ipairs(positions) do
			BlockPlaceCount = BlockPlaceCount + 1
		end

		BlockPrinterBlocks:SetDesc(BlockPlaceCount)
		if BlockPrinterDestroyTime then
			BlockPrinterDestroyTime:SetDesc(BlockPlaceCount.." Secs")
		end	

		if _G.FastBlockPrinter == true then
			local TIME = BlockPlaceCount/30
			BlockPrinterTime:SetDesc(TIME.." sec")
		else
			local TIME = BlockPlaceCount/10
			BlockPrinterTime:SetDesc(TIME.." sec")
		end
		return BlockPlaceCount
	end

	function addBoxes(part)
		local position = part.Position
		local size = part.Size
		local oldPartR = game.Workspace:FindFirstChild("Part_R")
		if oldPartR then
			oldPartR:Destroy()
		end

		local part2 = Instance.new("Part")
		part2.Name = "Part_R"
		part2.Parent = game.Workspace
		part2.Size = Vector3.new(3, 3, 3)
		part2.Anchored = true
		part2.Transparency = 1
		part2.CanCollide = false
		part2.Position = Vector3.new(position.x + size.x/2 - part2.Size.x/2, position.y + size.y/2 - part2.Size.y/2, position.z + size.z/2 - part2.Size.z/2)
		part2.Color = Color3.new(1, 0, 0)
		part2.CastShadow = false
		part2.Material = Enum.Material.Neon

		local oldPartL = game.Workspace:FindFirstChild("Part_L")
		if oldPartL then
			oldPartL:Destroy()
		end

		local part3 = Instance.new("Part")
		part3.Name = "Part_L"
		part3.Parent = game.Workspace
		part3.Size = Vector3.new(3, 3, 3)
		part3.Anchored = true
		part3.Transparency = 1
		part3.CanCollide = false
		part3.Position = Vector3.new(position.x - size.x/2 + part3.Size.x/2, position.y - size.y/2 + part3.Size.y/2, position.z - size.z/2 + part3.Size.z/2)
		part3.Color = Color3.new(0, 0.6, 1)
		part3.CastShadow = false
		part3.Material = Enum.Material.Neon
		_G.StartBlock = game:GetService("Workspace")["Part_L"]
		_G.EndBlock = game:GetService("Workspace")["Part_R"]
		GetBlockCount()
	end

	function onHandlesDown(normal)
		DebugCheck(0,"handlesDown")
		previousDistance = 0
	end

	function onHandlesDrag(normal, distance)
		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Character then
				for i,Part in pairs(v.Character:GetDescendants()) do
					if Part:IsA("MeshPart") or Part:IsA("Part") then
						if Part:FindFirstChild("OLD_CanTouch") then
							Part.CanTouch = false
						else
							local OLDSTATE = Instance.new("BoolValue", Part)
							OLDSTATE.Name = "OLD_CanTouch"
							OLDSTATE.Value = Part.CanTouch
							Part.CanTouch = false
						end
					end
				end
			end
		end

		local OldSIZE = nil
		local OldPOS = nil
		if handles.Adornee then
			local delta = distance - previousDistance
			if math.abs(delta) >= 3 then
				local sizeDelta = math.floor(delta / 3 + 0.5) * 3
				OldSIZE = handles.Adornee.Size
				OldPOS = handles.Adornee.Position
				if handles.Adornee:Resize(normal, sizeDelta) then
					print("Trying to resize")
					print("normal", normal)
					print("sizeDelta", sizeDelta)					
					addBoxes(handles.Adornee)
					if handles.Adornee.Size.X < 3 or handles.Adornee.Size.Y < 3 or handles.Adornee.Size.Z < 3 then
						print("Smaller than 0")
						handles.Adornee.Size = OldSIZE
						handles.Adornee.Position = OldPOS
					end
					previousDistance = distance
				else
					print(tostring(handles.Adornee.Size))
					print("Resize did not work!")
					print("normal", normal)
					print("sizeDelta", sizeDelta)					
				end
			end
		end
		task.wait(1)
		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Character then
				for i,Part in pairs(v.Character:GetDescendants()) do
					if Part:IsA("MeshPart") or Part:IsA("Part") then
						if Part:FindFirstChild("OLD_CanTouch") then
							local OLDSTATE = Part:FindFirstChild("OLD_CanTouch") 
							Part.CanTouch = OLDSTATE.Value
						end
					end
				end
			end
		end
	end

	function onButton1Down(mouse)
		if _G.ResizeTool == true and _G.ChangePartOfResizeTool == true then
			_G.ChangePartOfResizeTool = false
			DebugCheck(0,"3DButtonDown")
			if mouse.Target == nil or mouse.Target.Locked then
				print("No Target or Locked!")
				selectionBox.Adornee = nil
				handles.Adornee = nil
			else
				local OLD = mouse.Target
				if OLD:FindFirstChild("Health") and OLD.Size.X == 3 then
					local NP 
					if game:GetService("Workspace"):FindFirstChild("NewPart") then
						NP = game:GetService("Workspace"):FindFirstChild("NewPart") 
					else
						NP = Instance.new("Part",workspace)
					end
					NP.Name = "NewPart"
					NP.Transparency = 1
					NP.Anchored = true
					NP.Size = OLD.Size
					NP.Position = OLD.Position
					NP.CanCollide = false
					NP.CastShadow = false
					NP.Material = Enum.Material.Neon
					selectionBox.Adornee = NP
					handles.Adornee = NP
					handles.Faces = NP.ResizeableFaces
					MainPart = NP
				else
					print(tostring(OLD.Size))
				end 
			end
		end
	end

	function onEquippedLocal(mouse)
		mouse.Button1Down:connect(function() onButton1Down(mouse) end)
		local character = game.Players.LocalPlayer.Character
		local player = game.Players:GetPlayerFromCharacter(character)
		selectionBox = Instance.new("SelectionBox")
		selectionBox.Color = BrickColor.Blue()
		selectionBox.Adornee = nil
		selectionBox.Parent = game:GetService("CoreGui")
		handles = Instance.new("Handles")
		handles.Color3 = _G.ResizeToolMoveButtonColor or Color3.fromRGB(65, 105, 225)
		handles.Adornee = nil
		handles.MouseDrag:connect(onHandlesDrag)
		handles.MouseButton1Down:connect(onHandlesDown)
		handles.Parent = game:GetService("CoreGui")
	end

	function onUnequippedLocal()
		if selectionBox then
			selectionBox:Remove()
		end
		if handles then
			handles:Remove()
		end
	end

	local UseResizeTool = BlockPrinterSelection:AddToggle("UseResizeTool", {Title = "Use Resize Tool", Default = false })
	UseResizeTool:OnChanged(function()
		local Value = Options.UseResizeTool.Value
		if Value == true then
			_G.ResizeTool = true 
			onEquippedLocal(game.Players.LocalPlayer:GetMouse())
			_G.ChangePartOfResizeTool = true
		else
			onUnequippedLocal(game.Players.LocalPlayer:GetMouse())
			if 	game:GetService("Workspace"):FindFirstChild("NewPart") then
				game:GetService("Workspace").NewPart:Destroy()
			end
			if 	game:GetService("Workspace"):FindFirstChild("Part_R") then
				game:GetService("Workspace").Part_R:Destroy()
			end
			if 	game:GetService("Workspace"):FindFirstChild("Part_L") then
				game:GetService("Workspace").Part_L:Destroy()
			end
			_G.ResizeTool = false 
			_G.ChangePartOfResizeTool = true
		end
	end)

	BlockPrinterSelection:AddButton({
		Title = "Change Position",
		Description = "",
		Callback = function()
			_G.ChangePartOfResizeTool = true
		end
	})

	function DebugCheck(N,Text)
		if _G.DebugMode == true then
			rconsolename("Debug")
			if N == nil then
				N = 0
			end 
			if N == 0 then
				rconsoleprint("\n"..Text)
			end
		end
	end

	function DebugCheck(N,Text)
		if _G.DebugMode == true then
			rconsolename("Debug")
			if N == nil then
				N = 0
			end 
			if N == 0 then
				rconsoleprint("\n"..Text)
			end
		end
	end

	function MoveToolGenPrimarypart(model)
		if model and model:IsA("Model") then
			if model:FindFirstChild("PrimaryPart") == nil then			
				local cf = model:GetBoundingBox()
				local prim = Instance.new("Part", model)
				prim.Anchored = true
				prim.Name = "PrimaryPart"
				prim.Transparency = 0.5
				prim.CFrame = cf
				prim.CanCollide = false
				model.PrimaryPart = prim
				for i, v in next, model:GetDescendants() do
					if v.Parent == game.Players.LocalPlayer.Character or v.Parent.Name == game.Players.LocalPlayer.Name then
					else
						if (not v:IsA("BasePart")) and v ~= game.Players.LocalPlayer.Character and v.Parent ~= game.Players.LocalPlayer.Character then end
						local w = Instance.new("WeldConstraint", prim)
						w.Part0 = prim
						w.Part1 = v
					end
				end
				model.PrimaryPart = prim
			else
			end
		end
	end

	function findCenter(Table)
		local parts = Table:GetChildren()
		local numVisibleParts = 0
		local totalPosition = Vector3.new(0, 0, 0)
		local MittigsterBlock = nil
		for _, part in ipairs(parts) do
			if part:IsA("Part") or part:IsA("MeshPart") then
				print(part.Name)
				totalPosition = totalPosition + part.Position
				MittigsterBlock = part
				numVisibleParts = numVisibleParts + 1
			else
				print(part.Name.." is a "..part.ClassName)
			end
		end
		if numVisibleParts > 0 then
			local centerPos = totalPosition / numVisibleParts
			return MittigsterBlock
		else
			return nil 
		end
	end

	function LoadRotateTool()
		local runService = game:GetService("RunService")
		local tweenService = game:GetService("TweenService")
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local playerGui = player.PlayerGui 
		local mouse = player:GetMouse()
		local ancestor = Instance.new("Folder", game:GetService("CoreGui"))
		local rotateHandles = Instance.new("Folder", game:GetService("CoreGui"))

		local X_AXIS = Instance.new("ArcHandles")
		X_AXIS.Color3 = Color3.new(250,0,0)
		X_AXIS.Transparency = 0
		X_AXIS.Visible = true
		X_AXIS.Parent = rotateHandles

		local Y_AXIS = Instance.new("ArcHandles")
		Y_AXIS.Color3 = Color3.new(0, 255, 0)
		Y_AXIS.Transparency = 0
		Y_AXIS.Visible = true
		Y_AXIS.Parent = rotateHandles

		local Z_AXIS = Instance.new("ArcHandles")
		Z_AXIS.Color3 = Color3.new(0, 0, 255)
		Z_AXIS.Transparency = 0
		Z_AXIS.Visible = true
		Z_AXIS.Parent = rotateHandles

		local hoverBox = Instance.new("SelectionBox")
		hoverBox.Color3 = Color3.fromRGB(25, 153, 255)
		hoverBox.LineThickness = 0.04
		hoverBox.SurfaceColor3 = Color3.fromRGB(25, 153, 255)
		hoverBox.Parent = game:GetService("StarterGui")

		local selectedBox = Instance.new("SelectionBox")
		selectedBox.Color3 = Color3.fromRGB(25, 153, 255)
		selectedBox.LineThickness = 0.02
		selectedBox.SurfaceColor3 = Color3.fromRGB(25, 153, 255)
		selectedBox.Parent = game:GetService("StarterGui")

		local selectionBoxes = hoverBox and selectedBox
		local lastCFrame = CFrame.identity
		local originalCollisions = nil
		local originalTransparency = nil

		if not _G.currentlySelected then
			_G.currentlySelected = nil
		end

		function animateHoverBox()
			local hoverTween = tweenService:Create(
				hoverBox,
				TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true, 0),
				{Color3 = Color3.fromRGB(25, 153, 255)})

			hoverTween:Play()
			return hoverTween
		end

		function rotateSnap(distance, step)
			return math.floor(distance / step) * step
		end

		local RotateCOoldown = false
		function onRotate(axis, angle)
			local step = (90 / 180) * math.pi
			local newAngle = CFrame.fromAxisAngle(Vector3.FromAxis(axis), rotateSnap(angle, step))
			local gewuenschteDrehung = CFrame.Angles(math.rad(90), 0, 0)
			if RotateCOoldown == false then
				RotateCOoldown = true
				CloneFolder:SetPrimaryPartCFrame(CloneFolder:GetPrimaryPartCFrame() * newAngle)
				task.wait(0.3)
				RotateCOoldown = false
			end
		end

		function onSelect()
			local target = mouse.Target
			if target and target:IsA("Model") or target:IsA("BasePart") and target.Locked == false and target.ClassName ~= "Terrain" then
				originalCollisions = target.CanCollide
				originalTransparency = target.Transparency
				for i, handle in next, rotateHandles:GetChildren() do
					if handle:IsA("ArcHandles") then
						handle.Adornee = target
					end
				end
				_G.currentlySelected = target
				selectedBox.Adornee = target
			elseif not target then
				for i, handle in next, rotateHandles:GetChildren() do
					if handle:IsA("ArcHandles") then
						handle.Adornee = nil
					end
				end
				_G.currentlySelected = nil
				selectedBox.Adornee = nil
			end
		end

		function onEquipped()
			selectionBoxes.Name = "RotateSelectionBoxes"
			selectionBoxes.Parent = playerGui
			rotateHandles.Parent = playerGui
			if _G.currentlySelected then
				originalCollisions = _G.currentlySelected.CanCollide
				originalTransparency = _G.currentlySelected.Transparency
				for i, handle in next, rotateHandles:GetChildren() do
					if handle:IsA("ArcHandles") then
						handle.Adornee = _G.currentlySelected
					end
				end
				selectedBox.Adornee = _G.currentlySelected
			end
		end

		function onEquipped2()
			function findCenter(Table)
				local parts = Table:GetChildren()
				local numVisibleParts = 0
				local totalPosition = Vector3.new(0, 0, 0)
				local MittigsterBlock = nil
				for _, part in ipairs(parts) do
					if part:IsA("Part") or part:IsA("MeshPart") then
						print(part.Name)
						totalPosition = totalPosition + part.Position
						MittigsterBlock = part
						numVisibleParts = numVisibleParts + 1
					else
						print(part.Name.." is a "..part.ClassName)
					end
				end
				if numVisibleParts > 0 then
					local centerPos = totalPosition / numVisibleParts
					return MittigsterBlock
				else
					return nil 
				end
			end

			local MiddlePart = findCenter(CloneFolder)
			if not MiddlePart then return nil end;
			selectionBoxes.Name = "RotateSelectionBoxes"
			selectionBoxes.Parent = playerGui
			rotateHandles.Parent = playerGui
			_G.currentlySelected = MiddlePart
			if _G.currentlySelected then
				originalCollisions = _G.currentlySelected.CanCollide
				originalTransparency = _G.currentlySelected.Transparency
				for i, handle in next, rotateHandles:GetChildren() do
					if handle:IsA("ArcHandles") then
						handle.Adornee = _G.currentlySelected
					end
				end
				selectedBox.Adornee = _G.currentlySelected
			end
		end

		function onUnequipped()
			if _G.currentlySelected then
				_G.currentlySelected.CanCollide = originalCollisions
				_G.currentlySelected.Transparency = originalTransparency
			end
			rotateHandles.Parent = ancestor
			selectionBoxes.Parent = ancestor
		end

		function onHover()
			local target = mouse.Target
			if ancestor.Parent == character and target and target.Locked == false then
				hoverBox.Adornee = target
			else
				hoverBox.Adornee = nil
			end
		end

		function onHold()
			lastCFrame = _G.currentlySelected.CFrame
			_G.currentlySelected.Transparency = _G.currentlySelected.Transparency + 0.3
			_G.currentlySelected.CanCollide = false
		end

		function onRelease()
			if _G.currentlySelected then
				local object = _G.currentlySelected
				object.Size = _G.currentlySelected.Size
				object.Position = _G.currentlySelected.Position
				object.Orientation = _G.currentlySelected.Orientation
				_G.currentlySelected.Transparency = originalTransparency
				_G.currentlySelected.CanCollide = originalCollisions
			end
		end

		for i, handle in next, rotateHandles:GetChildren() do
			if handle:IsA("ArcHandles") then
				handle.MouseDrag:connect(onRotate)
				handle.MouseButton1Down:connect(onHold)
				handle.MouseButton1Up:connect(onRelease)
			end
		end

		animateHoverBox()
		mouse.Move:connect(onHover)
		game:GetService("Players").LocalPlayer:GetMouse().Button1Down:Connect(function()
			if _G.UseRotateTool == true then
				onSelect()
			end	
		end)

		_G.UseRotateTool = false
		Toggle = BP3Tab:CreateToggle({
			Name = "Use Rotation Tool [BETA!]",
			CurrentValue = false,
			Flag = "Use Rotation Tool", 
			Callback = function(Value)
				if Value == true then
					onEquipped2()
				else
					pcall(onUnequipped)
				end
			end,
		})
	end

	function LoadMovingTool()
		local moveHandle = Instance.new("Handles")
		moveHandle.Parent = game:GetService("CoreGui")
		moveHandle.Color3 = Color3.fromRGB(218, 133, 65)
		moveHandle.Style = Enum.HandlesStyle.Movement
		local selectedBox = Instance.new("SelectionBox")
		selectedBox.Color3 = Color3.fromRGB(25, 153, 255)
		selectedBox.LineThickness = 0.02
		selectedBox.SurfaceColor3 = Color3.fromRGB(25, 153, 255)
		selectedBox.Parent = game:GetService("CoreGui")
		local hoverBox = Instance.new("SelectionBox")
		hoverBox.Color3 = Color3.fromRGB(25, 153, 255)
		hoverBox.LineThickness = 0.04
		hoverBox.SurfaceColor3 = Color3.fromRGB(25, 153, 255)
		hoverBox.Parent = game:GetService("CoreGui")
		local player = game.Players.LocalPlayer
		local mouse = player:GetMouse()
		local selected = nil
		local orignalTransparency = nil
		local lastCframe = CFrame.identity
		function activated()
			print("activated")
			function findCenter(Table)
				local parts = Table:GetChildren()
				local numVisibleParts = 0
				local totalPosition = Vector3.new(0, 0, 0)
				local MittigsterBlock = nil
				for _, part in ipairs(parts) do
					if part:IsA("Part") or part:IsA("MeshPart") then
						print(part.Name)
						totalPosition = totalPosition + part.Position
						MittigsterBlock = part
						numVisibleParts = numVisibleParts + 1
					else
						print(part.Name.." is a "..part.ClassName)
					end
				end
				if numVisibleParts > 0 then
					local centerPos = totalPosition / numVisibleParts
					return MittigsterBlock
				else
					return nil 
				end
			end

			local MiddlePart = findCenter(CloneFolder)
			if not MiddlePart then return nil end;
			if CloneFolder and CloneFolder.PrimaryPart then
			else
				CloneFolder.PrimaryPart = MiddlePart
			end	

			local target = CloneFolder:FindFirstChild("PrimaryPart") or CloneFolder.PrimaryPart
			if target and target.Locked == false then
				print("Jup")
				selected = target
				orignalTransparency = selected.Transparency
				moveHandle.Parent = game.Players.LocalPlayer.PlayerGui
				moveHandle.Adornee = selected
				hoverBox.Parent = selected
				hoverBox.Adornee = selected
				selectedBox.Parent = selected
				selectedBox.Adornee = selected
			else
				selected = nil
				orignalTransparency = nil
				hoverBox.Parent = game:GetService("CoreGui")
				hoverBox.Adornee = selected
				moveHandle.Parent = game:GetService("CoreGui")
				moveHandle.Adornee = selected
				selectedBox.Parent = game:GetService("CoreGui")
				selectedBox.Adornee = selected
			end
		end

		function hoverSelection()
			local target = mouse.Target
			if target and target.Locked == false then
				hoverBox.Parent = target
				hoverBox.Adornee = target
			else
				hoverBox.Parent = game:GetService("CoreGui")
				hoverBox.Adornee = target
			end
		end
		function moveSnap(distance, step)
			return math.round(distance / step) * step
		end

		function onMove(face, distance)
			local step = moveSnap(distance, selected.ResizeIncrement)
			local move = Vector3.FromNormalId(face) * step
			local stepSize = 3
			local roundedDistance = math.floor(distance / stepSize + 0.5) * stepSize
			local resizedStep = moveSnap(roundedDistance, selected.ResizeIncrement)
			local resizedMove = Vector3.FromNormalId(face) * resizedStep
			print("move:",move)
			print("roundedDistance:",roundedDistance)
			print("resizedStep:",resizedStep)
			print("resizedMove:",resizedMove)
			CloneFolder:SetPrimaryPartCFrame(lastCframe * CFrame.new(resizedMove))
		end

		function onHold()
			lastCframe = selected.CFrame
			selected.Transparency = selected.Transparency + 0.3
			selected.CanCollide = false
		end

		function onRelease()	
			selected.Transparency = orignalTransparency
		end

		function unequipped()
			moveHandle.Parent = game:GetService("CoreGui")
			moveHandle.Adornee = nil
			hoverBox.Parent = game:GetService("CoreGui")
			hoverBox.Adornee = nil
			selectedBox.Parent = game:GetService("CoreGui")
			selectedBox.Adornee = nil
		end

		moveHandle.MouseDrag:connect(onMove)
		moveHandle.MouseButton1Down:connect(onHold)
		moveHandle.MouseButton1Up:connect(onRelease)

		local UseMovingTool = BlockPrinterSelection:AddToggle("UseMovingTool", {Title = "Use Moving Tool", Default = false })
		UseMovingTool:OnChanged(function()
			local Value = Options.UseMovingTool.Value
			if Value == true then
				activated()
			else
				pcall(unequipped)
			end
		end)
	end

	LoadMovingTool()
	local BlockPrinterSpeed = BlockPrinterSelection:AddSlider("BlockPrinterSpeed", {
		Title = "Block Printer Speed",
		Description = "",
		Default = 5,
		Min = 1,
		Max = 20,
		Rounding = 0,
		Callback = function(Value)
			print("Slider was changed:", Value)
		end
	})

	BlockPrinterSpeed:OnChanged(function(Value)
		_G.PlayerBlockPrinterSpeed = Value
	end)

	function ADDUPPDATEEEEEEE()
		local positions = {}
		local function checkPositions(start, finish)
			local minX = math.min(start.x, finish.x)
			local maxX = math.max(start.x, finish.x)
			local minY = math.min(start.y, finish.y)
			local maxY = math.max(start.y, finish.y)
			local minZ = math.min(start.z, finish.z)
			local maxZ = math.max(start.z, finish.z)
			return Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ)
		end
		local start = _G.StartBlock.Position
		local finish = _G.EndBlock.Position
		start, finish = checkPositions(start, finish)
		for x = start.x, finish.x, 3 do
			for y = start.y, finish.y, 3 do
				for z = start.z, finish.z, 3 do
					positions[#positions + 1] = Vector3.new(x, y, z)
				end
			end
		end
	end

	function ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD(positions,XX)
		local ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDANTILAG = false
		local MAXPLACEDIS = XX or 50
		for i,v in ipairs(positions) do
			if v ~= nil then
			end
		end
		local FFFFPOS = {}
		for i,v in pairs(positions) do
			if v then
				FFFFPOS[i] = v
			end
		end

		game:GetService("RunService").RenderStepped:connect(function()
			if ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDANTILAG == false then
				ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDANTILAG = true
				for i,v in ipairs(FFFFPOS) do
					if v then
						local ToLace
						local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
						if Tool then
							ToLace = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
						end
						local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
						if Tool then
							if Tool:FindFirstChild("seeds") then
								function removeSeeds(itemName)
									local index = string.find(itemName, "Seeds")
									if index ~= nil then
										return string.sub(itemName, 1, index - 1)
									else
										return itemName
									end
								end
								ToLace = removeSeeds(ToLace)
								_G.CropModus = true
							else
								_G.CropModus = false
							end
						end
						local PlaceHASHName = RemoteData:FindFirstChild("BlockPlaceHashData").Value
						local PlaceHASH = _G.BlockPlaceHash
						if (v - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < MAXPLACEDIS  then
							local args = {
								["upperBlock"] = false,
								["cframe"] = CFrame.new(v),
								["blockType"] = ToLace,
								[PlaceHASHName] = PlaceHASH
							}
							game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer(args)
							FFFFPOS[i] = nil
						end
					end
				end
				task.wait()
				ADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDANTILAG = false
			end 
		end)
	end

	function PlaceBlocksNew()
		local BlockCount = 1
		local StartPosition = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		local function PlaceBlock(position, ToLace, PlaceHASHName, PlaceHASH)
			local args = {
				[PlaceHASHName] = PlaceHASH,
				["cframe"] = CFrame.new(position),
				["blockType"] = ToLace,
				["upperBlock"] = false
			}
			if _G.BlockPrinterTP == true then
				TeleportV4(position + Vector3.new(0,10,0))
			end
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer(args)
		end

		if not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then Message("WARNING!","Please Hold the Block you want to Place!", "Okay!", 3) return nil end 
		if _G.StartBlock == nil and _G.EndBlock == nil then Message("WARNING!","StartBlock and Endblock are not Set!", "Okay!", 3) return nil end
		if _G.StartBlock == nil then Message("WARNING!","StartBlock is not Set!", "Okay!", 3) return nil end
		if _G.EndBlock == nil then Message("WARNING!","EndBlock is not Set!", "Okay!", 3) return nil end

		local ToLace
		local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
		if Tool then
			if Tool:FindFirstChild("seeds") then
				function removeSeeds(itemName)
					local index = string.find(itemName, "Seeds")
					if index ~= nil then
						return string.sub(itemName, 1, index - 1)
					else
						return itemName
					end
				end
				ToLace = removeSeeds(Tool.Name)
				_G.CropModus = true
				DebugCheck(0,"Crop Mode: true")
			else
				ToLace = Tool.Name
				_G.CropModus = false
			end
		end
		for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
		if _G.BlockPrinterTP == true then
			sFLY(true)
		end
		local positions = {}
		local function checkPositions(start, finish)
			local minX = math.min(start.x, finish.x)
			local maxX = math.max(start.x, finish.x)
			local minY = math.min(start.y, finish.y)
			local maxY = math.max(start.y, finish.y)
			local minZ = math.min(start.z, finish.z)
			local maxZ = math.max(start.z, finish.z)
			return Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ)
		end
		local start = _G.StartBlock.Position
		local finish = _G.EndBlock.Position
		start, finish = checkPositions(start, finish)
		for x = start.x, finish.x, 3 do
			for y = start.y, finish.y, 3 do
				for z = start.z, finish.z, 3 do
					positions[#positions + 1] = Vector3.new(x, y, z)
				end
			end
		end
		local BlockPlaceCount = 0
		for i,v in ipairs(positions) do
			BlockPlaceCount = BlockPlaceCount + 1
		end
		task.spawn(function()
			if positions[1] then
				TeleportV4(positions[1] + Vector3.new(0,15,0))
				PlaceBlock(positions[1], ToLace, PlaceHASHName, PlaceHASH)
			end
		end)
		DebugCheck(0,"To Place: "..BlockPlaceCount)
		if _G.BlockPrinterTP == true then
			game.Players.LocalPlayer.Character:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,10,0))
		end
		task.wait(2)
		for i = 1,_G.PlayerBlockPrinterSpeed do
			for i,v in pairs(positions) do
				task.wait()
				task.spawn(function()
					if v then
						local dis = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v).Magnitude
						if dis > 30 then
							if _G.BlockPrinterTP == true then
								TeleportV4(v + Vector3.new(0,10,0))
								repeat wait(0.1) TeleportV4(v + Vector3.new(0,10,0)) until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v).Magnitude < 30
								if v then
									PlaceBlock(v, ToLace, PlaceHASHName, PlaceHASH)
									positions[i] = nil
								end
							else
								if v then
									PlaceBlock(v, ToLace, PlaceHASHName, PlaceHASH)
									positions[i] = nil
								end
							end
						else
							if v then
								PlaceBlock(v, ToLace, PlaceHASHName, PlaceHASH)
								positions[i] = nil
							end
						end
					end
				end)
			end
		end
		print("positions debug: ",type(positions))
		if type(positions) == "table" then
			for i,v in pairs(positions) do
				warn(i,v)
			end
		else
			print("OTHER TYPE OF POSITIONS!",type(positions))
		end
		repeat wait() print("There are still position!", positions) until positions == nil or #positions == 0
		DebugCheck(0,"DONE!!!!!")
		NOFLY()
		Message("Finished!","Block Printer Finished! (Teleporting back to Start Position...)", "Nice!", 3)
		task.wait(0.1)
		TeleportV4(StartPosition)
	end

	local function DestroyBlocksNew()
		local BlockCount = 1
		local saved = {}
		local function DestroyBlock(Block)
			DebugCheck(0,"DestroyBlock_FUJNC")
			if Block then
				local H1 = RemoteData:FindFirstChild("TreeHashData").Value
				local H2 = _G.TreeHash

				local ohTable1 = {
					[H1] = H2,
					["part"] = Block,
					["block"] = Block,
					["norm"] = v,
					["pos"] = 0
				}
				TeleportV4(Block.Position + Vector3.new(0,10,0))
				game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer(ohTable1)
				task.wait(1)
				if Block then
					table.insert(saved,Block)
				end
			end
		end

		if _G.StartBlock == nil and _G.EndBlock == nil then Message("WARNING!","StartBlock and Endblock are not Set!", "Okay!", 3) return nil end
		if _G.StartBlock == nil then Message("WARNING!","StartBlock is not Set!", "Okay!", 3) return nil end
		if _G.EndBlock == nil then Message("WARNING!","EndBlock is not Set!", "Okay!", 3) return nil end

		local ToLace
		for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
		if _G.BlockPrinterTP == true then
			sFLY(true)
		end
		task.wait(0.1)
		local positions = {}
		task.wait(1)
		local function findNearestPart(A)
			local closestPart = nil
			local closestDistance = math.huge
			local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			local Table = A
			for i, part in ipairs(Table) do
				local distance = (part.Position - playerPosition).magnitude
				if distance < closestDistance then
					closestPart = part
					closestDistance = distance
				end
			end
			DebugCheck(0,"findNearestPart")
			return closestPart
		end
		if 	game:GetService("Workspace"):FindFirstChild("NewPart") then
			local PART = game:GetService("Workspace"):FindFirstChild("NewPart")
			local BLOCKS = GetBlocks(PART.Position, PART.Size, PART)
			for i = 1,_G.PlayerBlockPrinterSpeed do
				for i,SB in pairs(BLOCKS) do
					task.wait()
					task.spawn(function()
						if SB and SB.Parent and SB.Parent.Name == "Blocks" then
							DebugCheck(0,"SB:",SB.Name)
							local dis = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SB.Position).Magnitude
							if dis > 30 then
								DebugCheck(0,"IDS")
								if _G.BlockPrinterTP == true then
									TeleportV4(SB.Position + Vector3.new(0,10,0))
									repeat wait(0.1) TeleportV4(SB.Position + Vector3.new(0,10,0)) until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SB.Position).Magnitude < 30
									if v then
										DebugCheck(0,"VTRUE")
										DestroyBlock(SB)
										saved[i] = nil
									end
								else
									if v then
										DebugCheck(0,"VFALSE")
										DestroyBlock(SB)
										saved[i] = nil
									end
								end
							else
								DebugCheck(0,"NODIS")
								if SB then
									DebugCheck(0,"VELSEFALSE")
									DestroyBlock(SB)
									saved[i] = nil
								end
							end
						end
					end)
				end
			end
		end
		for i = 1,100 do
			if saved == {} then
			else
				local positions = {}
				local function checkPositions(start, finish)
					local minX = math.min(start.x, finish.x)
					local maxX = math.max(start.x, finish.x)
					local minY = math.min(start.y, finish.y)
					local maxY = math.max(start.y, finish.y)
					local minZ = math.min(start.z, finish.z)
					local maxZ = math.max(start.z, finish.z)
					return Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ)
				end
				local start = _G.StartBlock.Position
				local finish = _G.EndBlock.Position
				start, finish = checkPositions(start, finish)
				for x = start.x, finish.x, 3 do
					for y = start.y, finish.y, 3 do
						for z = start.z, finish.z, 3 do
							positions[#positions + 1] = Vector3.new(x, y, z)
						end
					end
				end
				if 	game:GetService("Workspace"):FindFirstChild("NewPart") then
					local PART = game:GetService("Workspace"):FindFirstChild("NewPart")
					local BLOCKS = GetBlocks(PART.Position, PART.Size, PART)
					for i,SB in pairs(BLOCKS) do
						task.spawn(function()
							if SB and SB.Parent and SB.Parent.Name == "Blocks" then
								local H1 = RemoteData:FindFirstChild("TreeHashData").Value
								local H2 = _G.TreeHash
								local ohTable1 = {
									[H1] = H2,
									["part"] = SB,
									["block"] = SB,
									["norm"] = v,
									["pos"] = 0
								}
								local RemotesToSend = _G.RemotesToSendToDestroy or 3
								for i = 1,1 do
									game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer(ohTable1)
								end
								task.wait()
							end
						end)
					end
				end
				for i = 1,_G.PlayerBlockPrinterSpeed do
					for i,SB in pairs(saved) do
						task.wait()
						task.spawn(function()
							if SB and SB.Parent and SB.Parent.Name == "Blocks" then
								DebugCheck(0,"SB:",SB.Name)
								local dis = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SB.Position).Magnitude
								if dis > 10 then
									DebugCheck(0,"IDS")
									if _G.BlockPrinterTP == true then
										TeleportV4(SB.Position + Vector3.new(0,10,0))
										repeat wait(0.1) TeleportV4(SB.Position + Vector3.new(0,10,0)) until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SB.Position).Magnitude < 10
										if v then
											DebugCheck(0,"VTRUE")
											DestroyBlock(SB)
											saved[i] = nil
										end
									else
										if v then
											DebugCheck(0,"VFALSE")
											DestroyBlock(SB)
											saved[i] = nil
										end
									end
								else
									DebugCheck(0,"NODIS")
									if SB then
										DebugCheck(0,"VELSEFALSE")
										DestroyBlock(SB)
										saved[i] = nil
									end
								end
							end
						end)
					end
				end
			end
			local positions = {}
			local function checkPositions(start, finish)
				local minX = math.min(start.x, finish.x)
				local maxX = math.max(start.x, finish.x)
				local minY = math.min(start.y, finish.y)
				local maxY = math.max(start.y, finish.y)
				local minZ = math.min(start.z, finish.z)
				local maxZ = math.max(start.z, finish.z)
				return Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ)
			end
			local start = _G.StartBlock.Position
			local finish = _G.EndBlock.Position
			start, finish = checkPositions(start, finish)
			for x = start.x, finish.x, 3 do
				for y = start.y, finish.y, 3 do
					for z = start.z, finish.z, 3 do
						positions[#positions + 1] = Vector3.new(x, y, z)
					end
				end
			end
			if 	game:GetService("Workspace"):FindFirstChild("NewPart") then
				local PART = game:GetService("Workspace"):FindFirstChild("NewPart")
				local BLOCKS = GetBlocks(PART.Position, PART.Size, PART)
				for i,SB in pairs(BLOCKS) do
					task.spawn(function()
						if SB and SB.Parent and SB.Parent.Name == "Blocks" then
							local H1 = RemoteData:FindFirstChild("TreeHashData").Value
							local H2 = _G.TreeHash
							local ohTable1 = {
								[H1] = H2,
								["part"] = SB,
								["block"] = SB,
								["norm"] = v,
								["pos"] = 0
							}
							local RemotesToSend = _G.RemotesToSendToDestroy or 3
							for i = 1,1 do
								game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer(ohTable1)
							end
							task.wait()
						end
					end)
				end
			end
		end
		DebugCheck(0,"FERTIG!!!!!")
		NOFLY()
	end

BlockPrinterSelection:AddButton({
    Title = "Print Blocks",
    Description = "",
    Callback = function()
        PlaceBlocksNew()
    end
})

_G.GetBlockMethod = "Place Block"
local InputService = game:GetService("UserInputService")

InputService.InputBegan:Connect(function(inputObject)
    if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
        if _G.GetBlockMethod == "Place Block" then
            local Island = GetIsland()
            local Blocks = Island:FindFirstChild("Blocks")
            if Blocks then
                if _G.GetStartBlock then
                    local toolName = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                    Blocks.ChildAdded:Connect(function(v)
                        if _G.GetStartBlock and v.Name == toolName then
                            StartBlockParagraph:Set({Title = "StartBlock: ", Content = ":GreenCube: | " .. v.Name})
                            _G.StartBlock = v
                            StartBlock = v
                            _G.GetStartBlock = false
                            if _G.StartBlock and _G.EndBlock then
                                coroutine.wrap(GetBlockCount)()
                            end
                        end
                    end)
                elseif _G.GetEndBlock then
                    local toolName = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                    Blocks.ChildAdded:Connect(function(v)
                        if _G.GetEndBlock and v.Name == toolName then
                            EndBlockParagraph:Set({Title = "EndBlock: ", Content = ":GreenCube: | " .. v.Name})
                            _G.EndBlock = v
                            EndBlock = v
                            _G.GetEndBlock = false
                            if _G.StartBlock and _G.EndBlock then
                                coroutine.wrap(GetBlockCount)()
                            end
                        end
                    end)
                end
            end
        end
    end
end)

	function COPYPASTEGUI()
		local BlockDestroySelection = Tabs.BlockPrinter:AddSection("Block Destroyer")
		BlockPrinterDestroyTime = BlockPrinterSelection:AddParagraph({
			Title = "- Time:",
			Content = "/"
		})
        
BlockDestroySelection:AddButton({
    Title = "Fast Destroy (Greg's Hammer)",
    Description = "",
    Callback = function()
        local positions = {}
        local function getBounds(start, finish)
            local minX, maxX = math.min(start.x, finish.x), math.max(start.x, finish.x)
            local minY, maxY = math.min(start.y, finish.y), math.max(start.y, finish.y)
            local minZ, maxZ = math.min(start.z, finish.z), math.max(start.z, finish.z)
            return Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ)
        end

        local start, finish = getBounds(_G.StartBlock.Position, _G.EndBlock.Position)

        for x = start.x, finish.x, 3 do
            for y = start.y, finish.y, 3 do
                for z = start.z, finish.z, 3 do
                    positions[#positions + 1] = Vector3.new(x, y, z)
                end
            end
        end

        local function destroyBlock(block)
            local treeHashData = RemoteData:FindFirstChild("TreeHashData").Value
            local blockHash = _G.TreeHash
            local hitRequest = {
                [treeHashData] = blockHash,
                ["part"] = block,
                ["block"] = block,
                ["norm"] = Vector3.new(),
                ["pos"] = 0
            }
            for _ = 1, _G.RemotesToSendToDestroy or 3 do
                game:GetService("ReplicatedStorage")
                    .rbxts_include.node_modules["@rbxts"].net.out._NetManaged
                    .CLIENT_BLOCK_HIT_REQUEST:InvokeServer(hitRequest)
            end
        end

        if game:GetService("Workspace"):FindFirstChild("NewPart") then
            local part = game:GetService("Workspace"):FindFirstChild("NewPart")
            local blocks = GetBlocks(part.Position, part.Size, part)
            local threads = 100

            for i = 1, #blocks, threads do
                task.spawn(function()
                    for j = i, math.min(i + threads - 1, #blocks) do
                        local block = blocks[j]
                        if block and block.Parent and block.Parent.Name == "Blocks" then
                            destroyBlock(block)
                        end
                    end
                end)
                task.wait()
            end
        end
    end
})

		BlockDestroySelection:AddButton({
			Title = "Destroy Blocks [BETA!]",
			Description = "",
			Callback = function()
				DestroyBlocksNew()
			end
		})

		local LASTSAVEDSDATA
		local CopyPasteSelection = Tabs.BlockPrinter:AddSection("Copy / paste!")

		CopyPasteSelection:AddButton({
			Title = "Clone Blocks",
			Description = "",
			Callback = function()
				for i,v in ipairs(CloneFolder:GetChildren()) do
					v:Destroy()
					DebugCheck(0,v.Name.." Got Deleted!")
				end
				local positions = {}
				local function checkPositions(start, finish)
					local minX = math.min(start.x, finish.x)
					local maxX = math.max(start.x, finish.x)
					local minY = math.min(start.y, finish.y)
					local maxY = math.max(start.y, finish.y)
					local minZ = math.min(start.z, finish.z)
					local maxZ = math.max(start.z, finish.z)
					return Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ)
				end
				local start = _G.StartBlock.Position
				local finish = _G.EndBlock.Position
				start, finish = checkPositions(start, finish)
				for x = start.x, finish.x, 3 do
					for y = start.y, finish.y, 3 do
						for z = start.z, finish.z, 3 do
							positions[#positions + 1] = Vector3.new(x, y, z)
						end
					end
				end
				if 	game:GetService("Workspace"):FindFirstChild("NewPart") then
					local PART = game:GetService("Workspace"):FindFirstChild("NewPart")
					local BLOCKS = GetBlocks(PART.Position, PART.Size, PART)
					for i,SB in pairs(BLOCKS) do
						if SB.Parent.Name == "Blocks" then
							local NEWSB = SB:Clone()
							NEWSB.Parent = CloneFolder
							NEWSB.Position = SB.Position + Vector3.new(0,3,0)
							NEWSB.Transparency = 0.5
						end
					end
				end
			end
		})

		CopyPasteSelection:AddButton({
			Title = "Paste Blocks",
			Description = "",
			Callback = function()
				a = pcall(function()
					unequipped()
				end)
				local WAIT_XE = 0
				local CCPL = 0
				local positions = {}
				for i,v in pairs(CloneFolder:GetChildren()) do
					if v then
						positions[i] = v
						DebugCheck(0,"Added:",v.Name)
					end
				end
				local PLOW = false
				for i,pos in pairs(positions) do
					task.spawn(function()
						local Block = positions[i]
						local pos = Block.CFrame
						if Block.Name == "soil" then
							Block.Name = "grass"
							PLOW = true
						end
						local distance = (Block.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
						print("distance:",distance)
						if distance > 30 then
							TeleportV4(Block.Position)
							repeat wait() until (Block.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 30
							local args = {
								[1] = {
									["upperBlock"] = false,
									["cframe"] = pos,
									["blockType"] = Block.Name,
									[CropPlaceH1] = CropPlaceH2
								}
							}
							game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer(unpack(args))	
						else
							local args = {
								[1] = {
									["upperBlock"] = false,
									["cframe"] = pos,
									["blockType"] = Block.Name,
									[CropPlaceH1] = CropPlaceH2
								}
							}
							game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer(unpack(args))
						end
					end)
				end
				task.wait(5)
				for i,v in pairs(CloneFolder:GetChildren()) do
					if v then
						v:Destroy()
					end
				end
			end
		})

		local FileName = ""
		local Files = GetSchematicaFiles()
		local inputString = Files[1]
		if inputString then
			local parts = {}
			for part in inputString:gmatch("[^\\]+") do
				table.insert(parts, part)
			end
			local outputString = parts[#parts]
			FileName = outputString
		end

		local Dropdown_Files = CopyPasteSelection:AddDropdown("Dropdown_Files", {
			Title = "Files",
			Values = Files,
			Multi = false,
			Default = 1,
		})

		Dropdown_Files:OnChanged(function(Value)
			if type(Value) == "string" then
				local inputString = Value
				local parts = {}
				for part in inputString:gmatch("[^\\]+") do
					table.insert(parts, part)
				end
				local outputString = parts[#parts]
				FileName = outputString
			end
		end)

		task.spawn(function()
			while wait(5) do
				Dropdown_Files:SetValues(GetSchematicaFiles())
			end
		end)

		local FileNameInput = CopyPasteSelection:AddInput("FileName", {
			Title = "File Name",
			Default = "Template",
			Placeholder = "Template.tmp",
			Numeric = false,
			Finished = false,
			Callback = function(Value)
				FileName = Value
			end
		})

		CopyPasteSelection:AddButton({
			Title = "Save Blocks to File!",
			Description = "",
			Callback = function()
				for i,v in ipairs(CloneFolder:GetChildren()) do
					v:Destroy()
					DebugCheck(0,v.Name.." Got Deleted!")
				end

				local positions = {}
				local function checkPositions(start, finish)
					local minX = math.min(start.x, finish.x)
					local maxX = math.max(start.x, finish.x)
					local minY = math.min(start.y, finish.y)
					local maxY = math.max(start.y, finish.y)
					local minZ = math.min(start.z, finish.z)
					local maxZ = math.max(start.z, finish.z)
					return Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ)
				end

				local start = _G.StartBlock.Position
				local finish = _G.EndBlock.Position
				start, finish = checkPositions(start, finish)
				for x = start.x, finish.x, 3 do
					for y = start.y, finish.y, 3 do
						for z = start.z, finish.z, 3 do
							positions[#positions + 1] = Vector3.new(x, y, z)
						end
					end
				end

				local function isVisible(part)
					return part.Transparency == 0 and part.CanCollide == true and part.Size.X > 0 and part.Size.Y > 0 and part.Size.Z > 0
				end

				function findCenter(Table)
					local parts = Table
					local numVisibleParts = 0
					local totalPosition = Vector3.new(0, 0, 0)
					local MittigsterBlock = nil
					for _, part in ipairs(parts) do
						if part:IsA("Part") or part:IsA("MeshPart") then
							print(part.Name)
							totalPosition = totalPosition + part.Position
							MittigsterBlock = part
							numVisibleParts = numVisibleParts + 1
						else
							print(part.Name.." is a "..part.ClassName)
						end
					end
					if numVisibleParts > 0 then
						local centerPos = totalPosition / numVisibleParts
						return centerPos
					else
						return nil 
					end
				end

				local SaveData = {}
				if 	game:GetService("Workspace"):FindFirstChild("NewPart") then
					local PART = game:GetService("Workspace"):FindFirstChild("NewPart")
					local BLOCKS = GetBlocks(PART.Position, PART.Size, PART)
					for i,v in pairs(BLOCKS) do
						if v.Parent.Name == "Blocks" then
							table.insert(SaveData, v)
						end
					end
				end

				local MittePosition = findCenter(SaveData)
				print("The part is ", tostring(MittePosition))
				local data = {
					Size = {tostring(game:GetService("Workspace"):FindFirstChild("NewPart").Size)},
					Blocks = {

					}
				}

				local function save(name, cframe)
					if not data.Blocks[name] then
						data.Blocks[name] = {}
					end
					table.insert(data.Blocks[name], {C = {cframe.components(cframe)}})
				end
				if 	game:GetService("Workspace"):FindFirstChild("NewPart") then
					local PART = game:GetService("Workspace"):FindFirstChild("NewPart")
					local BLOCKS = GetBlocks(PART.Position, PART.Size, PART)
					for i,v in pairs(BLOCKS) do
						if v.Parent.Name == "Blocks" then
							save(v.Name, v.CFrame)
						end
					end
				end
				DebugCheck(0,"PRINTING SOON!!!")
				task.wait()
				local json = game:GetService("HttpService")
				local dataString = json:JSONEncode(data)
				LASTSAVEDSDATA = dataString
				task.wait()
				if LASTSAVEDSDATA ~= nil then
					function GetMore()
						local stringsTable = {"Zynova on top!",
							"Best Script Ever!",
						}
						local randomIndex = math.random(#stringsTable)
						local randomString = stringsTable[randomIndex]
						return randomString or "null"
					end
					local WERBUNG = [[-- Generated From Zynova (discord.gg/m6xTX6zNYK) Version: 1.0]].."\n".."--"..GetMore().." \n"
					CreateFile("/Schematica/"..FileName, WERBUNG.."\n"..LASTSAVEDSDATA, false)
					task.wait(0.5)
					Message("👍!", "Your File got successfully Saved! (Zynovahub/Islands/Schematica)", "Nice!", 3)
				else
					DebugCheck(0,"LASTSAVEDSDATA ist nil")
				end
				DebugCheck(0,"done.")
			end
		})

		CopyPasteSelection:AddButton({
			Title = "Load File to Game!",
			Description = "",
			Callback = function()
				print("FileName:",FileName)
				local ALLBLOCKS = game:GetService("ReplicatedStorage").Blocks
				if IsFile("/Schematica/"..FileName) ~= nil then
					FILEDATA = ReadFile("/Schematica/"..FileName, LASTSAVEDSDATA)
					if FILEDATA then
						local text = FILEDATA
						local newText = text:gsub("%-%-.-\n", "\n")
						DebugCheck(0,newText)
						if newText then
							DebugCheck(0,"REMOVED!!!")
							FILEDATA = newText
						end
						DebugCheck(0,FILEDATA)
						task.wait()
						json = game:GetService("HttpService")
						jsonString = FILEDATA
						A = json:JSONDecode(jsonString)
						if A.Blocks then
							for name, blocks in pairs(A.Blocks) do
								if ALLBLOCKS:FindFirstChild(name) then
									DebugCheck(0,name)
									if name == "dirt" then
										name = "soil"
									end
									for _, block in ipairs(blocks) do
										clone = ALLBLOCKS:FindFirstChild(name):FindFirstChild("Root"):Clone()
										if clone then
											clone.Transparency = 0.5
											clone.Name = name
											clone.Parent = CloneFolder
											clone.CFrame = CFrame.new(unpack(block.C))
											DebugCheck(0,"CE")
										else
											DebugCheck(0,"NO ROOT MONKEY!!")
										end
									end
								end
							end
						else
							print("Project Z file detected!")
							for name, blocks in pairs(A) do
								for _, block in ipairs(blocks) do
									local x, y, z = block[1], block[2], block[3]
									local position = Vector3.new(x, y, z)
									print("Block Name:", name)
									print("Block Position:", position)
									if ALLBLOCKS:FindFirstChild(name) then
										DebugCheck(0,name)
										if name == "dirt" then
											name = "soil"
										end
										clone = ALLBLOCKS:FindFirstChild(name):FindFirstChild("Root"):Clone()
										if clone then
											clone.Transparency = 0.5
											clone.Name = name
											clone.Parent = CloneFolder
											clone.CFrame = CFrame.new(position)
										end
									end
								end
							end
						end
						task.wait(0.3)
						activated()
						task.wait(0.2)
						Message("👍!", "Your File got Loaded successfully!", "Nice!", 3)
					end
				else
					DebugCheck(0,"LASTSAVEDSDATA ist nil")
				end
			end
		})

		local LastTarget = nil
		local NewTarget = false
		local BringParagraph
		local function onClick()
			if NewTarget then
				local mouse = game.Players.LocalPlayer:GetMouse()
				local Hit = mouse.Target 
				LastTarget = Hit 
				print("New Target",Hit)
				if Hit then
					BringParagraph:SetDesc("Target Found! "..Hit.Name)
					task.wait(1)
					BringParagraph:SetDesc("false")
				else
					BringParagraph:SetDesc("Error! Please try again!")
					task.wait(1)
					BringParagraph:SetDesc("false")
				end
				NewTarget = false
			end 
		end

		game:GetService("UserInputService").InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				onClick() 
			end
		end)

		local TeleportBuildSelection = Tabs.BlockPrinter:AddSection("Teleport")
		BringParagraph = TeleportBuildSelection:AddParagraph({
			Title = "- Waiting for Click:",
			Content = "false"
		})

		TeleportBuildSelection:AddButton({
			Title = "Teleport to Player!",
			Description = "",
			Callback = function()
				pcall(unequipped)
				local function roundToMultipleOfThree(value)
					local roundedValue = math.floor(value / 3 + 0.5) * 3
					return roundedValue
				end

				local player = game.Players.LocalPlayer 
				local Position = player.Character.HumanoidRootPart.Position
				local roundedNumber_x = roundToMultipleOfThree(Position.X)
				local roundedNumber_y = roundToMultipleOfThree(Position.Y)
				local roundedNumber_z = roundToMultipleOfThree(Position.Z)
				local Final = Vector3.new(roundedNumber_x, roundedNumber_y, roundedNumber_z)
				if not Final then Message("Error", "NBF", "?", 1) return nil end
				local TargetBlockPos = Final
				if CloneFolder.PrimaryPart then
					CloneFolder:SetPrimaryPartCFrame(CFrame.new(TargetBlockPos))
				else
					MoveToolGenPrimarypart(CloneFolder)
					task.wait()
					CloneFolder:SetPrimaryPartCFrame(CFrame.new(TargetBlockPos))
				end
				task.wait()
				activated()
			end
		})

		function GetUnder3x3Block()
			local function IsApproximatelySize(part, targetSize, tolerance)
				local partSize = part.Size
				local sizeDifference = math.abs(partSize.X - targetSize.X) + math.abs(partSize.Y - targetSize.Y) + math.abs(partSize.Z - targetSize.Z)
				return sizeDifference <= tolerance
			end

			local function FindPartBelow(part)
				local raycastOrigin = part.Position
				local raycastDirection = Vector3.new(0, -3, 0)
				local raycastParams = RaycastParams.new()
				raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
				raycastParams.FilterDescendantsInstances = {part.Parent}
				raycastParams.IgnoreWater = true

				local hitResult = game.Workspace:Raycast(raycastOrigin, raycastDirection, raycastParams)
				if hitResult then
					local hitPart = hitResult.Instance
					if hitPart:IsA("BasePart") then
						if IsApproximatelySize(hitPart, Vector3.new(3, 3, 3), 0.1) then
							return hitPart
						else
							if IsApproximatelySize(hitPart.Parent, Vector3.new(3, 3, 3), 0.1) then
								return hitPart.Parent
							else
								return FindPartBelow(hitPart)
							end
						end
					end
				end
			end

			local player = game.Players.LocalPlayer
			local character = player.Character
			if character then
				local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
				local pos = FindPartBelow(humanoidRootPart)
				return pos
			else
				print("Character not found.")
			end
		end

		TeleportBuildSelection:AddButton({
			Title = "Teleport to Nearest Block!",
			Description = "",
			Callback = function()
				unequipped()
				local C = CloneFolder:FindFirstChild("PrimaryPart") or CloneFolder.PrimaryPart
				local TargetBlock = GetUnder3x3Block()
				if not TargetBlock then Message("Error", "NBF", "?", 1) return nil end
				print("TargetBlock:",TargetBlock)
				local TargetBlockPos = TargetBlock.Position + Vector3.new(0,3,0)
				if CloneFolder.PrimaryPart then
					CloneFolder:SetPrimaryPartCFrame(CFrame.new(TargetBlockPos))
				else
					function findCenter(Table)
						local parts = Table:GetChildren()
						local numVisibleParts = 0
						local totalPosition = Vector3.new(0, 0, 0)
						local MittigsterBlock = nil
						for _, part in ipairs(parts) do
							if part:IsA("Part") or part:IsA("MeshPart") then
								print(part.Name)
								totalPosition = totalPosition + part.Position
								MittigsterBlock = part
								numVisibleParts = numVisibleParts + 1
							else
								print(part.Name.." is a "..part.ClassName)
							end
						end
						if numVisibleParts > 0 then
							local centerPos = totalPosition / numVisibleParts
							return MittigsterBlock
						else
							return nil 
						end
					end
					CloneFolder.PrimaryPart = findCenter(CloneFolder)
					task.wait()
					CloneFolder:SetPrimaryPartCFrame(CFrame.new(TargetBlockPos))
				end
				task.wait()
				activated()
			end
		})

		TeleportBuildSelection:AddButton({
			Title = "Teleport to Mouse!",
			Description = "",
			Callback = function()
				unequipped()
				LastTarget = nil
				NewTarget = false
				BringParagraph:SetDesc("true")
				function findCenter(Table)
					local parts = Table:GetChildren()
					local numVisibleParts = 0
					local totalPosition = Vector3.new(0, 0, 0)
					local MittigsterBlock = nil
					for _, part in ipairs(parts) do
						if part:IsA("Part") or part:IsA("MeshPart") then
							print(part.Name)
							totalPosition = totalPosition + part.Position
							MittigsterBlock = part
							numVisibleParts = numVisibleParts + 1
						else
							print(part.Name.." is a "..part.ClassName)
						end
					end
					if numVisibleParts > 0 then
						local centerPos = totalPosition / numVisibleParts
						return MittigsterBlock
					else
						return nil 
					end
				end

				local C = CloneFolder:FindFirstChild("PrimaryPart") or CloneFolder.PrimaryPart
				if CloneFolder.PrimaryPart then
					if LastTarget then
						if LastTarget.Name == "Top" then
							CloneFolder:SetPrimaryPartCFrame(CFrame.new(LastTarget.Parent.Position) * CFrame.fromMatrix(Vector3.new(), CloneFolder.PrimaryPart.CFrame.RightVector, CloneFolder.PrimaryPart.CFrame.UpVector))
						else
							CloneFolder:SetPrimaryPartCFrame(CFrame.new(LastTarget.Position) * CFrame.fromMatrix(Vector3.new(), CloneFolder.PrimaryPart.CFrame.RightVector, CloneFolder.PrimaryPart.CFrame.UpVector))
						end
					else
						NewTarget = true
						repeat wait() until LastTarget
						if LastTarget.Name == "Top" then
							CloneFolder:SetPrimaryPartCFrame(CFrame.new(LastTarget.Parent.Position) * CFrame.fromMatrix(Vector3.new(), CloneFolder.PrimaryPart.CFrame.RightVector, CloneFolder.PrimaryPart.CFrame.UpVector))
						else
							CloneFolder:SetPrimaryPartCFrame(CFrame.new(LastTarget.Position) * CFrame.fromMatrix(Vector3.new(), CloneFolder.PrimaryPart.CFrame.RightVector, CloneFolder.PrimaryPart.CFrame.UpVector))
						end
					end
				else
					DebugCheck(0, "NO PrimaryPart")
					MoveToolGenPrimarypart(CloneFolder)
					task.wait()
					if LastTarget then
						CloneFolder:SetPrimaryPartCFrame(CFrame.new(LastTarget.Position) * CFrame.fromMatrix(Vector3.new(), CloneFolder.PrimaryPart.CFrame.RightVector, CloneFolder.PrimaryPart.CFrame.UpVector))
					else
						NewTarget = true
						repeat wait() until LastTarget
						CloneFolder:SetPrimaryPartCFrame(CFrame.new(LastTarget.Position) * CFrame.fromMatrix(Vector3.new(), CloneFolder.PrimaryPart.CFrame.RightVector, CloneFolder.PrimaryPart.CFrame.UpVector))
					end
				end
				task.wait()
				activated()
			end
		})

		CopyPasteSelection:AddButton({
			Title = "unLoad file to game",
			Description = "",
			Callback = function()
				pcall(unequipped)
				task.wait()
				if CloneFolder then
					for i,v in pairs(CloneFolder:GetChildren()) do
						v:Destroy()
					end
				end
			end
		})

		_G.BuildCollision = true
		local BuildCollision = CopyPasteSelection:AddToggle("BuildCollision", {Title = "Build Collision", Default = true })
		BuildCollision:OnChanged(function(Value)
			_G.BuildCollision = Value
		end)

		task.spawn(function()
			while wait() do
				for i,v in pairs(CloneFolder:GetChildren()) do
					if v:IsA("Part") or v:IsA("MeshPart") then
						v.CanCollide = _G.BuildCollision
					end
				end	
			end
		end)
	end

	COPYPASTEGUI()

	local OtherStuffSelection = Tabs.BlockPrinter:AddSection("Other Stuff")
	OtherStuffSelection:AddButton({
		Title = "Rotate 90 X",
		Description = "",
		Callback = function()
			function findCenter(Table)
				local parts = Table:GetChildren()
				local numVisibleParts = 0
				local totalPosition = Vector3.new(0, 0, 0)
				local MittigsterBlock = nil
				for _, part in ipairs(parts) do
					if part:IsA("Part") or part:IsA("MeshPart") then
						print(part.Name)
						totalPosition = totalPosition + part.Position
						MittigsterBlock = part
						numVisibleParts = numVisibleParts + 1
					else
						print(part.Name.." is a "..part.ClassName)
					end
				end
				if numVisibleParts > 0 then
					local centerPos = totalPosition / numVisibleParts
					return MittigsterBlock
				else
					return nil 
				end
			end
			if CloneFolder.PrimaryPart == nil then
				if CloneFolder:FindFirstChild("PrimaryPart") then
					CloneFolder:FindFirstChild("PrimaryPart"):Destroy()
				end
				local C = findCenter(CloneFolder)
				CloneFolder.PrimaryPart = C
				task.wait(0.5)
			end
			local gewuenschteDrehung = CFrame.Angles(math.rad(90), 0, 0)
			CloneFolder:SetPrimaryPartCFrame(CloneFolder:GetPrimaryPartCFrame() * gewuenschteDrehung)
		end
	})

	OtherStuffSelection:AddButton({
			Title = "Get Gregs Hammer",
			Description = "",
			Callback = function()
				if game.Players.LocalPlayer.Character:FindFirstChild("gregsHammer") == nil and game.Players.LocalPlayer.Backpack:FindFirstChild("gregsHammer") == nil then
					if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
						if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("axe") then
							GetTool("gregsHammer", true, game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Name)
						else
							Message("😳", "You can Only Bypass Axes and Pickaxes :)", "hehe", "Woah")
						end
					else
						Message("🤪", "equip the tool you want to bypass first!", "Ok :)))", "Woah")
					end
				else
					Message("😎", "You got the gregsHammer Already!", "xD", "Woah")
				end
			end
		})

	OtherStuffSelection:AddButton({
		Title = "Rotate 90 Y",
		Description = "",
		Callback = function()
			function findCenter(Table)
				local parts = Table:GetChildren()
				local numVisibleParts = 0
				local totalPosition = Vector3.new(0, 0, 0)
				local MittigsterBlock = nil
				for _, part in ipairs(parts) do
					if part:IsA("Part") or part:IsA("MeshPart") then
						print(part.Name)
						totalPosition = totalPosition + part.Position
						MittigsterBlock = part
						numVisibleParts = numVisibleParts + 1
					else
						print(part.Name.." is a "..part.ClassName)
					end
				end
				if numVisibleParts > 0 then
					local centerPos = totalPosition / numVisibleParts
					return MittigsterBlock
				else
					return nil 
				end
			end
			if CloneFolder.PrimaryPart == nil then
				if CloneFolder:FindFirstChild("PrimaryPart") then
					CloneFolder:FindFirstChild("PrimaryPart"):Destroy()
				end
				local C = findCenter(CloneFolder)
				CloneFolder.PrimaryPart = C
				task.wait(0.5)
			end
			local gewuenschteDrehung = CFrame.Angles(0, math.rad(90), 0)
			CloneFolder:SetPrimaryPartCFrame(CloneFolder:GetPrimaryPartCFrame() * gewuenschteDrehung)
		end
	})

	OtherStuffSelection:AddButton({
		Title = "Rotate 90 Z",
		Description = "",
		Callback = function()
			function findCenter(Table)
				local parts = Table:GetChildren()
				local numVisibleParts = 0
				local totalPosition = Vector3.new(0, 0, 0)
				local MittigsterBlock = nil
				for _, part in ipairs(parts) do
					if part:IsA("Part") or part:IsA("MeshPart") then
						print(part.Name)
						totalPosition = totalPosition + part.Position
						MittigsterBlock = part
						numVisibleParts = numVisibleParts + 1
					else
						print(part.Name.." is a "..part.ClassName)
					end
				end
				if numVisibleParts > 0 then
					local centerPos = totalPosition / numVisibleParts
					return MittigsterBlock
				else
					return nil 
				end
			end
			if CloneFolder.PrimaryPart == nil then
				if CloneFolder:FindFirstChild("PrimaryPart") then
					CloneFolder:FindFirstChild("PrimaryPart"):Destroy()
				end
				local C = findCenter(CloneFolder)
				CloneFolder.PrimaryPart = C
				task.wait(0.5)
			end
			local gewuenschteDrehung = CFrame.Angles(0, 0, math.rad(90))
			CloneFolder:SetPrimaryPartCFrame(CloneFolder:GetPrimaryPartCFrame() * gewuenschteDrehung)
		end
	})

	local PlayerSelection = Tabs.Player:AddSection("Player")

	local PlayerFly = PlayerSelection:AddToggle("PlayerFly", {Title = "Fly", Default = false })
	PlayerFly:OnChanged(function(Value)
		if Value == true then
			sFLY(true)
		else
			NOFLY()
		end
	end)

	local FlySpeedSlider = PlayerSelection:AddSlider("FlySpeedSlider", {
		Title = "Fly Speed",
		Description = "",
		Default = 0.5,
		Min = 0,
		Max = 10,
		Rounding = 1,
		Callback = function(Value)
			iyflyspeed = Value
		end
	})

	local JumpPowerSlider = PlayerSelection:AddSlider("JumpPowerSlider", {
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

	local SpeedSlider = PlayerSelection:AddSlider("SpeedSlider", {
		Title = "Walk Speed",
		Description = "",
		Default = 30,
		Min = 0,
		Max = 40,
		Rounding = 0,
		Callback = function(Value)
			_G.WalkSpeed = Value
		end
	})

	local ScriptSettingsSelection = Tabs.Settings:AddSection("Script Settings")

	local TeleportMethod = ScriptSettingsSelection:AddDropdown("TeleportMethod", {
		Title = "Teleport Method",
		Values = {"Tween","TweenV3", "MiniTp", "Instant", "Pathfinding", "PathfindingV2"},
		Multi = false,
		Default = 1,
	})

	TeleportMethod:OnChanged(function(Value)
		_G.TeleportMethod = Value
	end)

	ScriptSettingsSelection:AddButton({
		Title = "Stop Tween",
		Description = "",
		Callback = function()
			if LASTTWEEN == nil then
			else
				LASTTWEEN:Cancel()
			end
		end
	})

	ScriptSettingsSelection:AddButton({
		Title = "Stop Script",
		Description = "",
		Callback = function()
			if MAINSCRIPTHANDLER ~= nil then
				MAINSCRIPTHANDLER:Disconnect()
			end
		end
	})

	local FlyKeyBind = ScriptSettingsSelection:AddKeybind("FlyKeyBind", {
		Title = "Fly Key",
		Mode = "Toggle",
		Default = "G",
		Callback = function(Value)
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyVelocity") then
				PlayerFly:SetValue(false)
			else
				PlayerFly:SetValue(true)
			end
		end,
		ChangedCallback = function(New)
			print("Keybind changed!", New)
		end
	})

	local ColorSettingsSelection = Tabs.Settings:AddSection("Color Settings")

	local ResizeToolOutlineColor = ColorSettingsSelection:AddColorpicker("ResizeToolOutlineColor", {
		Title = "ResizeToolOutlineColor",
		Default = Color3.fromRGB(225, 0, 0)
	})

	ResizeToolOutlineColor:OnChanged(function(Value)
		_G.ResizeToolOutlineColor = Value
	end)

	local ResizeToolMoveButtons = ColorSettingsSelection:AddColorpicker("ResizeToolMoveButtons", {
		Title = "ResizeToolMoveButtons",
		Default = Color3.fromRGB(254, 254, 254)
	})

	ResizeToolMoveButtons:OnChanged(function(Value)
		_G.ResizeToolMoveButtonColor = Value
	end)

	local ResizeToolFillColor = ColorSettingsSelection:AddColorpicker("ResizeToolFillColor", {
		Title = "Resize Tool FillColor",
		Description = "",
		Transparency = 0,
		Default = Color3.fromRGB(96, 205, 255),
	})

	ResizeToolFillColor:OnChanged(function()
		_G.ResizeToolFillColor = ResizeToolFillColor.Value
		_G.ResizeToolFillTransparency = ResizeToolFillColor.Transparency
	end)

	_G.TweenFlySpeed = 25
	_G.SichleCropDelay = 13
	_G.SichleCropRange = 30
	_G.WalkSpeed = 30
	_G.JumpPower = 50
	_G.TeleportMethod = "Tween"
	_G.FastBlockPrinter = true
	_G.Place3 = false
	_G.PlayerBlockPrinterSpeed = 5
	_G.BlockPrinterTP = true
	_G.Island_USERID = game.Players.LocalPlayer.UserId
	_G.CheckPrintedBlocks = true
	_G.ResizeToolOutlineColor = Color3.fromRGB(225, 0, 0)
	_G.ResizeToolMoveButtonColor = Color3.fromRGB(254, 254, 254)
	_G.ResizeToolFillTransparency = 1
	_G.ResizeToolFillColor = Color3.fromRGB(225, 225, 225)

	local MainCooldown = false
	local CB = false
	local FM = false
	local ReplaceCooldown = false
	game:GetService("RunService").RenderStepped:Connect(function()
		local Character = game.Players.LocalPlayer.Character 
		if Character then
			local Humanoid = Character:FindFirstChild("Humanoid")
			if Humanoid then
				Humanoid.WalkSpeed = _G.WalkSpeed or 30
				Humanoid.JumpPower = _G.JumpPower or 50
			end
		end
	end)

	SaveManager:SetLibrary(Fluent)
	InterfaceManager:SetLibrary(Fluent)
	SaveManager:IgnoreThemeSettings()
	SaveManager:SetIgnoreIndexes({})
	InterfaceManager:SetFolder("Zynovahub/Islands")
	SaveManager:SetFolder("Zynovahub/Islands")
	InterfaceManager:BuildInterfaceSection(Tabs.Settings)
	SaveManager:BuildConfigSection(Tabs.Settings)
	Window:SelectTab(1)
	Fluent:Notify({
		Title = "Fluent",
		Content = "The script has been loaded.",
		Duration = 8
	})
	SaveManager:LoadAutoloadConfig()
