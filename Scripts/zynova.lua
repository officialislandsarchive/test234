repeat wait() until game:IsLoaded()
local IsPremium = true 
local DidKey = false
local ScriptVersion = "V1"
local FileName = "Zynovahub"
local GameName = "Islands"
local DeveloperVersion = true
local NotificationIcon = "rbxassetid://1234567890"

function SendNotification(Title, Text)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = Title,
		Text = Text,
		Icon = NotificationIcon
	})
end	

SendNotification("Welcome!", "Welcome to "..FileName .. " " .. ScriptVersion.."!")
local PremiumText1 = "Premium is only 10$ Lifetime. Go buy it in discord.gg/m6xTX6zNYK"
if isfolder(FileName) then
else
	makefolder(FileName)
end
if isfolder(FileName.."/"..GameName) then
else
	makefolder(FileName.."/"..GameName)
end
function IsFile(Name)
	return isfile(FileName.."/"..GameName.."/"..Name)
end	
function IsFolder(Name)
	return isfolder(FileName.."/"..GameName.."/"..Name)
end	
function ReadFile(Name) 
	if isfile(FileName.."/"..GameName.."/"..Name) == true then
		return readfile(FileName.."/"..GameName.."/"..Name)
	else
		return readfile(FileName.."/"..GameName..Name)
	end
	return readfile(FileName.."/"..GameName.."/"..Name)
end
function CreateFolder(Name)
	makefolder(FileName.."/"..GameName.."/"..Name)
end	
function CreateFile(Name, Data, CheckIfFile)
	if CheckIfFile == true then
		if isfile(FileName.."/"..GameName.."/"..Name) then

		else
			writefile(FileName.."/"..GameName.."/"..Name, Data)
		end
	else
		writefile(FileName.."/"..GameName.."/"..Name, Data)
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

	function UpdateRemote(RemoteName, Value)
		if game:FindFirstChild("_REMOTES_ZYNOVA_") == nil then
			local REMOTES = Instance.new("Folder")
			REMOTES.Name = "_REMOTES_ZYNOVA_"
			REMOTES.Parent = game
			UpdateRemote(RemoteName, Value)
		else
			if game:FindFirstChild("_REMOTES_ZYNOVA_"):FindFirstChild(RemoteName) == nil then
				local _NEWREMOTE = Instance.new("StringValue")
				_NEWREMOTE.Name = RemoteName
				_NEWREMOTE.Value = Value
				_NEWREMOTE.Parent = game:FindFirstChild("_REMOTES_ZYNOVA_")
			else
				DebugCheck(0,"Remote Update: "..RemoteName)
				game:FindFirstChild("_REMOTES_ZYNOVA_"):FindFirstChild(RemoteName).Value = Value
			end
		end
	end

	if IsFolder("/Hash System") and IsFile("Game Version") and ReadFile("Game Version") and game.PlaceVersion == tonumber(ReadFile("Game Version")) then
		print("Its not updated!")
		UpdateRemote("KillRemote", ReadFile("/Hash System/KillRemote"))
		UpdateRemote("KillRemoteHashName", ReadFile("/Hash System/KillRemoteHashName"))
		_G.KillRemoteHash = ReadFile("/Hash System/KillRemoteHash")
		UpdateRemote("FishFarmFinishRemote", ReadFile("/Hash System/FishFarmFinishRemote"))
		UpdateRemote("AngelRemote", ReadFile("/Hash System/AngelRemote"))
		UpdateRemote("TOOL_PICKUPHashData", ReadFile("/Hash System/TOOL_PICKUPHashData"))
		_G.TOOL_PICKUPHash = ReadFile("/Hash System/TOOL_PICKUPHash")
		UpdateRemote("CropHashData", ReadFile("/Hash System/CropHashData"))
		_G.CropHash = ReadFile("/Hash System/CropHash")
		UpdateRemote("TreeHashData", ReadFile("/Hash System/TreeHashData"))
		_G.TreeHash = ReadFile("/Hash System/TreeHash")
		UpdateRemote("BlockHitHashData", ReadFile("/Hash System/BlockHitHashData"))
		_G.BlockHitHash = ReadFile("/Hash System/BlockHitHash")
		UpdateRemote("FlowerCollect", "client_request_1")
		UpdateRemote("PetCollect", "CLIENT_PET_ANIMAL")
		UpdateRemote("BlockRemote", "CLIENT_BLOCK_HIT_REQUEST")
		UpdateRemote("SpiritRemote", "nflutpppqsFS/ZroaqkcspgrTkvpnkrdWcc")
		UpdateRemote("CropPlaceHashData", ReadFile("/Hash System/CropPlaceHashData"))
		_G.CropPlaceHash = ReadFile("/Hash System/CropPlaceHash")
		_G.CropPlaceH1 = ReadFile("/Hash System/BlockPlaceHashData") 
		UpdateRemote("BlockPlaceHashData", ReadFile("/Hash System/BlockPlaceHashData"))
		_G.BlockPlaceHash = ReadFile("/Hash System/BlockPlaceHash")
	else
		CreateFolder("Hash System")
		print("Getting Hashes!")
		CreateFile("Game Version", tostring(game.PlaceVersion), false)
		function Update()
			local MOBRIGHT = ""
			local MOBLEFT = ""
			local mobRemoteName = ""
			function UpdateMob()
				local Tool
				for i,v in pairs(game:GetService("ReplicatedStorage").Tools:GetChildren()) do 
					if v.Name == "swordWood" then
						local Clone = v:Clone()
						Clone.Parent = game.Players.LocalPlayer.Character
						task.wait(0.2)
						Clone.Parent = game.Players.LocalPlayer.Backpack
						task.wait(0.2)
						Clone.Parent = game.Players.LocalPlayer.Character
						task.wait(0.2)
						Tool = Clone
					end
				end
				local function getrem(p9)
					rem = ""
					for i,v in pairs(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@rbxts"].net.out["_NetManaged"]:GetChildren()) do
						if v.Name:match(p9) then
							rem = v
						end
					end
					return rem.Name
				end
				local remleft = ""
				mobrem = ""
				for i,v in pairs(getgc(true)) do
					if type(v) == "function" and getinfo(v).name == "attemptHit" then
						for i2,v2 in pairs(getprotos(v)) do
							for i3,v3 in pairs(getprotos(v2)) do
								mobrem = getrem("/"..getconstants(v3)[1])
								remleft = getconstants(v3)[4]
							end
						end
					end
				end
				for i,v in pairs(getgc(true)) do
					if type(v) == "function" and getinfo(v).name == "attemptHit" then
						MOBRIGHT = getupvalues(v)[5]
						task.wait()
					end
				end
				print("mobrem:",mobrem)
				mobramsides = string.split(mobrem, "/")
				MOBLEFT = remleft
				if mobramsides and mobramsides[1] and mobramsides[2] then
					mobRemoteName = mobramsides[1].."/"..mobramsides[2]
					if MOBRIGHT then
						_G.KillRemoteHash = MOBRIGHT
					else
						_G.KillRemoteHash = nil
					end 
				else
					_G.KillRemoteHash = nil
					local RunService = game:GetService("RunService")
					local CoreGui = game:GetService("CoreGui")
				end
				if Tool then
					DebugCheck(0,"Sword ist da")

					Tool.Parent = game.Players.LocalPlayer.Backpack
					Tool:Destroy()
				else
					DebugCheck(0,"NO SWORD!")
				end
			end
			UpdateMob()
			local Remote1
			local Remote15
			local Remote2
			function UpdateFish()
				local Tool
				for i,v in pairs(game:GetService("ReplicatedStorage").Tools:GetChildren()) do 
					if v.Name == "fishingRod" then
						local Clone = v:Clone()
						Clone.Parent = game.Players.LocalPlayer.Character
						task.wait(0.5)
						Clone.Parent = game.Players.LocalPlayer.Backpack
						task.wait(0.5)
						Clone.Parent = game.Players.LocalPlayer.Character
						task.wait(0.5)
						Tool = Clone
					end
				end

				local function getrem(p9)
					rem = ""
					for i,v in pairs(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@rbxts"].net.out["_NetManaged"]:GetChildren()) do
						if v.Name:match(p9) then
							rem = v
						end
					end
					return rem.Name
				end

				local WerfRemote
				local dump1
				local dump2
				if Tool then
					local ToolScript = Tool:FindFirstChild("fishing-rod")
					if Tool and ToolScript then
						for i,v222 in pairs(getgc(true)) do
							if type(v222) == "function" and  getfenv(v222).script == ToolScript then
								for i,v in pairs(getconstants(v222)) do
									if i == 9 then
										if getrem(v) then
											DebugCheck(0,v)
											if v == 1.5 or v == "1.5" then
											else
												Remote1 = v
												Remote15 = string.split(Remote1, "/")[1]
												DebugCheck(0,"Remote15:",Remote15)

											end
										end
									end
									if i == 3 then
										if type(v) == "string" then
											if getrem(v) then

												Remote2 = v
												dump2 = Remote2
											end
										end
									end
								end

							end
						end

						local FinishRemote
						local function getrem(p9)
							rem = ""
							for i,v in pairs(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@rbxts"].net.out["_NetManaged"]:GetChildren()) do
								if v.Name:match(p9) then
									rem = v
								end
							end
							return rem.Name
						end
						for i,v222 in pairs(getgc(true)) do
							if type(v222) == "function" and getinfo(v222).name == "handleGameOver" and getfenv(v222).script == game:GetService("Players").LocalPlayer.PlayerScripts.TS.flame.controllers.fishing["fishing-controller"] then
								for i,v in pairs(getconstants(v222)) do
									if type(v) == "string" then
										if getrem(v) then
											if i == 2 then
												DebugCheck(0,"FINISH: ",v)
												dump1 = v
												DebugCheck(0,Remote15)
												WerfRemote = Remote2.."/"..Remote15
												DebugCheck(0,"FNISH2:",WerfRemote)
											end
										end
									end
								end
							end
						end
					end
				end

				local Finishremote = dump2.."/"..dump1
				DebugCheck(0,"FinishRemote:",Finishremote)
				if WerfRemote then
					DebugCheck(0,"WerfRemote:",WerfRemote)
				end
				UpdateRemote("FishFarmFinishRemote", Finishremote)
				SendNotification("[SECURITY]", "Check 1/42 Done!")
				UpdateRemote("AngelRemote", WerfRemote)
				SendNotification("[SECURITY]", "Check 2/42 Done!")
				CreateFile("/Hash System/FishFarmFinishRemote", Finishremote, false)
				SendNotification("[SECURITY]", "Check 3/42 Done!")
				CreateFile("/Hash System/AngelRemote", WerfRemote, false)
				SendNotification("[SECURITY]", "Check 4/42 Done!")
				Tool.Parent = game.Players.LocalPlayer.Backpack
				Tool:Destroy()
			end

			task.spawn(function()
				UpdateFish()
				task.wait()
			end)

			function Updateinv(v)
				if v:FindFirstChild("sword") then
					if _G.KillRemoteHash == nil or _G.KillRemoteHash == "" or _G.KillRemoteHash == " " then
						UpdateMob()
						task.wait()
						UpdateRemote("KillRemote", mobRemoteName)
						SendNotification("[SECURITY]", "Check 5/42 Done!")
						UpdateRemote("KillRemoteHashName", MOBLEFT)
						SendNotification("[SECURITY]", "Check 6/42 Done!")
						_G.KillRemoteHash = MOBRIGHT
						SendNotification("[SECURITY]", "Check 7/42 Done!")
					end
				end
			end

			game.Players.LocalPlayer.Backpack.ChildAdded:Connect(function(v)
				Updateinv(v)
			end)

			game.Players.LocalPlayer.Backpack.ChildRemoved:Connect(function(v)
				Updateinv(v)
			end)

			print("mobRemoteName:",mobRemoteName)
			UpdateRemote("KillRemote", mobRemoteName)
			SendNotification("[SECURITY]", "Check 8/42 Done!")
			UpdateRemote("KillRemoteHashName", MOBLEFT)
			SendNotification("[SECURITY]", "Check 9/42 Done!")
			_G.KillRemoteHash = MOBRIGHT
			print("Debug 1")
			task.wait()
			CreateFile("/Hash System/KillRemote", mobRemoteName, false)
			SendNotification("[SECURITY]", "Check 10/42 Done!")
			CreateFile("/Hash System/KillRemoteHashName", MOBLEFT, false)
			SendNotification("[SECURITY]", "Check 11/42 Done!")
			CreateFile("/Hash System/KillRemoteHash", MOBRIGHT or _G.KillRemoteHash, false)
			SendNotification("[SECURITY]", "Check 12/42 Done!")
			print("Debug 2")
			local ToolLEFT
			local TOOLRIGHT 
			function UpdatePickUpTool()
				for i,v in pairs(getgc(true)) do
					if type(v) == "function" and getinfo(v).name == "pickupTool" then
						ToolLEFT = getconstants(v)[23]
						TOOLRIGHT = getconstants(v)[25]..getconstants(v)[26]
					end
				end
			end
			task.spawn(function()
				UpdatePickUpTool()
			end)
			print("Debug 3")
			UpdateRemote("TOOL_PICKUPHashData", ToolLEFT)
			SendNotification("[SECURITY]", "Check 13/42 Done!")
			_G.TOOL_PICKUPHash = TOOLRIGHT
			SendNotification("[SECURITY]", "Check 14/42 Done!")
			CreateFile("/Hash System/TOOL_PICKUPHashData", ToolLEFT, false)
			SendNotification("[SECURITY]", "Check 15/42 Done!")
			CreateFile("/Hash System/TOOL_PICKUPHash", TOOLRIGHT, false)
			SendNotification("[SECURITY]", "Check 16/42 Done!")
			print("Debug 4")
			local CROPleft
			local CROPright
			function CropUpdate()
				remleft = ""
				remright = ""
				for i,v in pairs(getgc(true)) do
					if type(v) == "function" and getinfo(v).name == "breakCrop" and getfenv(v).script == game.Players.LocalPlayer.PlayerScripts.TS.block.crop["crop-service"] then
						for i2,v2 in pairs(getprotos(v)) do
							for i,v in pairs(getconstants(v)) do
								if i == 22 then
									remleft = v 
								end 
								if i == 26 then
									remright = v 
								end
								if i == 27 then
									remright = remright..v
								end
							end
						end
					end
				end    
				if remleft and remright then
					CROPleft = remleft
					CROPright = remright
				else
					game.Players.LocalPlayer:Kick("Error: NCD1")
				end
			end
			task.spawn(function()
				CropUpdate()
			end)
			print("Debug 5")
			local HITleft
			local HITright
			function HitUpdate()
				remright2 = ""
				remleft = ""
				remright = ""
				for i,v in pairs(getgc(true)) do
					if type(v) == "function" and getinfo(v).name == "onBlockHit" then
						for i2,v2 in pairs(getprotos(v)) do
							if table.find(getconstants(v2), "Get") then
								for i3,v3 in pairs(getconstants(v2)) do
									remleft = getconstants(v2)[8]
									remright2 = getconstants(v2)[11]
									remright = getconstants(v2)[10]
								end
							end
						end
					end
				end
				HITleft = remleft
				HITright = remright..remright2
			end
			task.spawn(function()
				HitUpdate()
			end)

			task.wait(0.2)
			print("Debug 6")
			UpdateRemote("CropHashData", CROPleft)
			SendNotification("[SECURITY]", "Check 17/42 Done!")
			_G.CropHash = CROPright
			SendNotification("[SECURITY]", "Check 18/42 Done!")
			UpdateRemote("TreeHashData", HITleft)
			SendNotification("[SECURITY]", "Check 19/42 Done!")
			_G.TreeHash = HITright
			SendNotification("[SECURITY]", "Check 20/42 Done!")
			UpdateRemote("BlockHitHashData", HITleft)
			SendNotification("[SECURITY]", "Check 21/42 Done!")
			_G.BlockHitHash = HITright
			SendNotification("[SECURITY]", "Check 22/42 Done!")
			CreateFile("/Hash System/CropHashData", CROPleft, false)
			SendNotification("[SECURITY]", "Check 23/42 Done!")
			CreateFile("/Hash System/CropHash", CROPright, false)
			SendNotification("[SECURITY]", "Check 24/42 Done!")
			print("Debug 7")
			CreateFile("/Hash System/TreeHashData", HITleft, false)
			SendNotification("[SECURITY]", "Check 25/42 Done!")
			CreateFile("/Hash System/TreeHash", HITright, false)
			SendNotification("[SECURITY]", "Check 26/42 Done!")
			CreateFile("/Hash System/BlockHitHashData", HITleft, false)
			SendNotification("[SECURITY]", "Check 27/42 Done!")
			CreateFile("/Hash System/BlockHitHash", HITright, false)
			SendNotification("[SECURITY]", "Check 28/42 Done!")
			print("Debug 8")
			local BlockRight1
			local BlockRight
			local BlockLeft
			function UpdatePlaceBlocks()
				for i,v in pairs(getgc(true)) do
					if type(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.PlayerScripts.TS.flame.controllers.block["block-controller"] then
						for dddi,dddv in pairs(getconstants(v)) do
							if tonumber(dddi) == 23 then
								BlockLeft = dddv
							end
							if tonumber(dddi) == 25 then
								BlockLeft1 = dddv
							end
							if tonumber(dddi) == 26 then
								BlockRight = BlockLeft1..dddv
							end
						end
					end
				end
			end
			UpdatePlaceBlocks()
			print("Debug 9")
			function GetNet()
				local A1
				local A2
				for i,v in pairs(getgc(true)) do
					if type(v) == "function" and getinfo(v).name == "constructor" and getfenv(v).script == game:GetService("Workspace").ANTICATBYASHO.net.net then
						for i2,v2 in pairs(getprotos(v)) do
							A1 = getconstants(v2)[16]
							A2 = getconstants(v2)[13]
							for i,v in pairs(getconstants(v2)) do
								DebugCheck(0,i,v, " | type:", type(v)) 
							end
						end
					end
				end
				DebugCheck(0,A1)
				DebugCheck(0,A2)
			end
			print("Debug 10")
			UpdateRemote("FlowerCollect", "client_request_1")
			SendNotification("[SECURITY]", "Check 29/42 Done!")
			UpdateRemote("PetCollect", "CLIENT_PET_ANIMAL")
			SendNotification("[SECURITY]", "Check 30/42 Done!")
			UpdateRemote("BlockRemote", "CLIENT_BLOCK_HIT_REQUEST")
			SendNotification("[SECURITY]", "Check 31/42 Done!")
			SendNotification("[SECURITY]", "Check 32/42 Done!")
			UpdateRemote("SpiritRemote", "gecqaLhbvAbyjo/qDgqEvuQzyryuBnlzh")
			SendNotification("[SECURITY]", "Check 33/42 Done!")
			print("BlockLeft:",BlockLeft)
			UpdateRemote("CropPlaceHashData", BlockLeft)
			SendNotification("[SECURITY]", "Check 34/42 Done!")
			_G.CropPlaceHash = BlockRight
			SendNotification("[SECURITY]", "Check 35/42 Done!")
			_G.CropPlaceH1 = BlockLeft
			SendNotification("[SECURITY]", "Check 36/42 Done!")
			UpdateRemote("BlockPlaceHashData", BlockLeft)
			SendNotification("[SECURITY]", "Check 37/42 Done!")
			_G.BlockPlaceHash = BlockRight
			SendNotification("[SECURITY]", "Check 38/42 Done!")
			print("Debug 11")
			CreateFile("/Hash System/CropPlaceHashData", BlockLeft, false)
			SendNotification("[SECURITY]", "Check 39/42 Done!")
			CreateFile("/Hash System/CropPlaceHash", BlockRight, false)
			SendNotification("[SECURITY]", "Check 40/42 Done!")
			CreateFile("/Hash System/BlockPlaceHashData", BlockLeft, false)
			SendNotification("[SECURITY]", "Check 41/42 Done!")
			CreateFile("/Hash System/BlockPlaceHash", BlockRight, false)
			SendNotification("[SECURITY]", "Check 42/42 Done!")
		end
		Update()
	end
end

SendNotification("[SECURITY]", "Scanning Game...")
Remotes()
function FixInv()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Character
		task.wait()
		v.Parent = game.Players.LocalPlayer.Backpack
		task.wait()
	end
end

local RemoteData = game:WaitForChild("_REMOTES_ZYNOVA_")
_G.Island_USERID = game.Players.LocalPlayer.UserId
local CANUSEAUTOCLICKER = true
local MotHitH1 = RemoteData:FindFirstChild("KillRemoteHashName").Value
local MotHitH2 = _G.KillRemoteHash 
local CropPlaceH1 = RemoteData:FindFirstChild("CropPlaceHashData").Value
local CropPlaceH2 = _G.CropPlaceHash
local PickupH1 = RemoteData:FindFirstChild("TOOL_PICKUPHashData").Value
local PickupH2 = _G.TOOL_PICKUPHash
local PlaceHASHName = RemoteData:FindFirstChild("BlockPlaceHashData").Value
local PlaceHASH = _G.BlockPlaceHash
local HitHASHName = RemoteData:FindFirstChild("BlockHitHashData").Value
local HitHASH = _G.BlockHitHash
local MAINSCRIPTHANDLER
local LASTTWEEN = nil
local SichleAuraCooldown = false 
local SichleFarmCooldown = false
local CROPTWEEN22
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
local MaxCropDis = 30
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

local currentDate = os.date("*t")
local month = currentDate.month
local day = currentDate.day
local holidayMessage = ""
if month == 12 and day == 25 then
	holidayMessage = "🎄"
elseif month == 10 and day == 31 then
	holidayMessage = "🎃"
elseif month == 12 and day == 31 then
	holidayMessage = "🎆"
else
	holidayMessage = ""
end

local Window 
local Tabs

if DeveloperVersion == false then
	if DidKey == true then
		Window = Fluent:CreateWindow({
			Title = "Zynova Hub "..ScriptVersion.." [FREE!] "..holidayMessage,
			SubTitle = "Made by Albert",
			TabWidth = 160,
			Size = UDim2.fromOffset(580, 460),
			Acrylic = true,
			Theme = "Dark",
			MinimizeKey = Enum.KeyCode.LeftControl
		})
		Tabs = {
			Main = Window:AddTab({ Title = "Main", Icon = "sword" }),
			Teleports = Window:AddTab({ Title = "Teleports", Icon = "bus" }),
			Player = Window:AddTab({ Title = "Player", Icon = "user" }),
			VendingSniper = Window:AddTab({ Title = "Vending Sniper", Icon = "file-search" }),
			BypassFun = Window:AddTab({ Title = "Bypass.Fun", Icon = "server" }),
			Other = Window:AddTab({ Title = "Other", Icon = "sidebar" }),
			Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
			Premium = Window:AddTab({ Title = "Premium", Icon = "star" })
		}
	else
		Window = Fluent:CreateWindow({
			Title = "Zynova Hub "..ScriptVersion.." [Premium!] "..holidayMessage,
			SubTitle = "Made by Albert",
			TabWidth = 160,
			Size = UDim2.fromOffset(580, 460),
			Acrylic = true,
			Theme = "Dark",
			MinimizeKey = Enum.KeyCode.LeftControl
		})
		Tabs = {
			Main = Window:AddTab({ Title = "Main", Icon = "sword" }),
			Teleports = Window:AddTab({ Title = "Teleports", Icon = "bus" }),
			BlockPrinter = Window:AddTab({ Title = "Block Printer", Icon = "printer" }),
			Player = Window:AddTab({ Title = "Player", Icon = "user" }),
			VendingSniper = Window:AddTab({ Title = "Vending Sniper", Icon = "file-search" }),
			BypassFun = Window:AddTab({ Title = "Bypass.Fun", Icon = "server" }),
			Other = Window:AddTab({ Title = "Other", Icon = "sidebar" }),
			Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
		}
	end
else
	Window = Fluent:CreateWindow({
		Title = "Zynova Hub "..ScriptVersion.." [Developer!] "..holidayMessage,
		SubTitle = "Made by Albert",
		TabWidth = 160,
		Size = UDim2.fromOffset(580, 460),
		Acrylic = true,
		Theme = "Dark",
		MinimizeKey = Enum.KeyCode.LeftControl
	})
	Tabs = {
		Main = Window:AddTab({ Title = "Main", Icon = "sword" }),
		Teleports = Window:AddTab({ Title = "Teleports", Icon = "bus" }),
		BlockPrinter = Window:AddTab({ Title = "Block Printer", Icon = "printer" }),
		Player = Window:AddTab({ Title = "Player", Icon = "user" }),
		VendingSniper = Window:AddTab({ Title = "Vending Sniper", Icon = "file-search" }),
		BypassFun = Window:AddTab({ Title = "Bypass.Fun", Icon = "server" }),
		Other = Window:AddTab({ Title = "Other", Icon = "sidebar" }),
		Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
		DeveloperTab = Window:AddTab({ Title = "Dev", Icon = "code" })
	}	
end 

local Options = Fluent.Options
if DidKey == true then 
	local H = Tabs.Premium:AddParagraph({
		Title = "Why Premium?",
		Content = "with Premium you Get Faster&Beta Updates!"
	})
	local H = Tabs.Premium:AddParagraph({
		Title = "How to buy?",
		Content = "Join discord.gg/m6xTX6zNYK and open a ticket."
	})
	local H = Tabs.Premium:AddParagraph({
		Title = "Really Why Premium?",
		Content = "with Premium you can get block printing!"
	})
	local H = Tabs.Premium:AddParagraph({
		Title = "What Payment Methods?",
		Content = "You can buy the Script with:\n1.Paypal\n2.Robux"
	})
	local H = Tabs.Premium:AddParagraph({
		Title = "How much does it cost?",
		Content = "1.Paypal: 2$\n2.Robux:800R$"
	})
	local H = Tabs.Premium:AddParagraph({
		Title = "Why do you wait?",
		Content = "Go buy Premium!"
	})
	Tabs.Premium:AddButton({
		Title = "Copy Server Invite",
		Description = "",
		Callback = function()
			setclipboard("discord.gg/m6xTX6zNYK")
		end
	})
end

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

function ChestAura()
	for i,Chest in pairs(GetIsland():FindFirstChild("Blocks"):GetChildren()) do
		if Chest:FindFirstChild("Contents") then
			for i,Tool in pairs(Chest:FindFirstChild("Contents"):GetChildren()) do
				local args = {
					[1] = {
						["chest"] = Chest,
						["player_tracking_category"] = "join_from_web",
						["amount"] = Tool:FindFirstChild("Amount").Value,
						["tool"] = Tool,
						["action"] = "withdraw"
					}
				}
				game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("CLIENT_CHEST_TRANSACTION"):InvokeServer(unpack(args))
			end
		end
	end
	task.wait()
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

function OwnISland()
	local islandName = GetIsland()
	local args = {
		[1] = {
			["island"] = islandName
		}
	}
	if islandName and islandName ~= nil then
		game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_VISIT_ISLAND_REQUEST:InvokeServer(unpack(args))
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

GetBlockUpdate()

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

function GetMobName(Mob)
	if Mob == "Slime" then
		return "slime"
	end
end

function Message(Title1, Context1, ButtonText1, DurationTime)
	Fluent:Notify({
		Title = Title1,
		Content = Context1,
		Duration = DurationTime
	})
end

local RemoteMobCooldown = false
game:GetService("RunService").RenderStepped:Connect(function()
	if _G.MobRemoteSpamming == true then
		local MOB = _G.MobRemoteSpammingSelectedMob
		local args = {
			[1] = Hash(),
			[2] = {
				[1] = {
					["direction"] = Vector3.new(0,-90,0),
					["shootType"] = 0,
					["acaanSbvNqmvUwqyaPbPdbs"] = "\7\240\159\164\163\240\159\164\161\7\n\7\n\7\niDtnsvjyuiGm",
					["spellBook"] = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"),
					["charge"] = 1,
					["time"] = game.Workspace.DistributedGameTime
				}
			}
		}
		if RemoteMobCooldown == false then
			RemoteMobCooldown = true
			game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("kthdgIcgPfwv/tyTrpdkeydznlntEvsjocmEixLw"):FireServer(unpack(args))
			task.wait()
			RemoteMobCooldown = false
		end
	end
end)

function DoubleFarmMob(V)
	DebugCheck(0,"DoubleFarmMob")
	local SelectedMob
	local ISAMOB = false
	for i,v in pairs(_G.SelectedMobs) do
		task.wait()
		if game:GetService("Workspace").WildernessIsland.Entities:FindFirstChild(v) then
			if ISAMOB == false then 
				ISAMOB = true
				SelectedMob = game:GetService("Workspace").WildernessIsland.Entities:FindFirstChild(v)
				DebugCheck(0,SelectedMob.Name)
			end
		end
	end
	if SelectedMob ~= nil and SelectedMob then
		local YVALUE = _G.MobTpYPos
		if SelectedMob:FindFirstChild("HumanoidRootPart") == nil then SelectedMob:Destroy() return end
		TeleportV4(SelectedMob:FindFirstChild("HumanoidRootPart").Position + Vector3.new(0,YVALUE,0))
		for i = 1,3 do
			if SelectedMob then
				if SelectedMob:FindFirstChild("HumanoidRootPart") then
					TeleportV4(SelectedMob:FindFirstChild("HumanoidRootPart").Position + Vector3.new(0,YVALUE,0))
					if CANUSEAUTOCLICKER == true then
						if _G.MobBookFarm == true then
							_G.MobRemoteSpammingSelectedMob = SelectedMob
							_G.MobRemoteSpamming = true
						else
							game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
							task.wait()
							game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
						end
					end
					if _G.MobBookFarm == false then 
						if 	SelectedMob:FindFirstChild("HumanoidRootPart") then
						end
					end
					task.wait()
				end
			end
		end
	end
end

local MOBSWORDBYPASSED = false
local ANTIBANMOB = false
local ANTICONSOLEWARNLOGANIMATION = false
local LastMob = nil
game:GetService("RunService").RenderStepped:Connect(function()
	if _G.AutoFarm == true or _G.BossAutoFarm == true then	
		if LastMob and LastMob:FindFirstChild("Humanoid") and LastMob:FindFirstChild("Humanoid").Health > 0 and LastMob:FindFirstChild("HumanoidRootPart") then
			local YVALUE = _G.MobTpYPos
			TeleportV4(LastMob:FindFirstChild("HumanoidRootPart").Position + Vector3.new(0,YVALUE,0))
		end
	end
end)

function FarmMob(V)
	print("FarmMob:",V)
	local function findNearestMob(A)
		local closestPart = nil
		local closestDistance = math.huge
		local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		local Table = A
		for i, part in ipairs(Table) do
			local distance = (part:FindFirstChild("HumanoidRootPart").Position - playerPosition).magnitude
			if distance < closestDistance then
				closestPart = part
				closestDistance = distance
			end
		end
		DebugCheck(0,"findNearestPart")
		return closestPart
	end
	if _G.AutoFarm == false and _G.BossAutoFarm == false then return nil end
	DebugCheck(0,"FarmMob")
	local SelectedMob
	local MobsToScan = {}
	if V == true then
		SelectedMob = game:GetService("Workspace").WildernessIsland.Entities:FindFirstChild(_G.SelectedBoss)
	else
		for i,v in pairs(game:GetService("Workspace").WildernessIsland.Entities:GetChildren()) do
			if v and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
				print("HUMANOID/ROOTAPRT")
				if type(_G.SelectedMob) == "table" then
					for i,x in pairs(_G.SelectedMob) do
						if v.Name == x then
							print("ADDED!",v.Name)
							table.insert(MobsToScan, v)
						else
							print("x its:",x.." Mob heißt:",v)
						end
					end
				else
					if v.Name == _G.SelectedMob then
						print("ADDED!",v.Name)
						table.insert(MobsToScan, v)
					else
						print(v.Name)
					end
				end
			end
		end
		SelectedMob = findNearestMob(MobsToScan)
		print("NEWMOB:",SelectedMob)
	end
	if SelectedMob ~= nil and SelectedMob then
		LastMob = SelectedMob
		print(0,"Farm Mob:", SelectedMob.Name)
		local YVALUE = _G.MobTpYPos
		task.spawn(function()
			TeleportV4(SelectedMob:FindFirstChild("HumanoidRootPart").Position + Vector3.new(0,YVALUE,0))
		end)
		print(0,"MOB FARM ON TOP!")
		if MOBSWORDBYPASSED == false then
			if _G.ragebladeMobFarm == true then
				local success, result = pcall(function()
					local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
					local Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChild("rageblade")
					if Tool then
						local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
						local scriptPath = Tool:FindFirstChild("rageblade")
						local closureName = "Unnamed function"
						local upvalueIndex = 1
						local closureConstants = {
							[1] = "isHitting",
							[2] = "getLivingEntityFromChildPart",
							[3] = "attemptHit"
						}
						print("scriptPath:",scriptPath)
						local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
						local value = 0
						local elementIndex = "lastClicked"
						game:GetService("RunService").RenderStepped:Connect(function()
							debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
						end)
					end
					local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
					local Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChild("rageblade")
					if Tool then
						local scriptPath = Tool:FindFirstChild("rageblade")
						local closureName = "Unnamed function"
						local upvalueIndex = 1
						local closureConstants = {
							[1] = "isHitting",
							[2] = "getLivingEntityFromChildPart",
							[3] = "attemptHit"
						}
						local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
						local value = 4
						local elementIndex = "speed"
						debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
						MOBSWORDBYPASSED = true
					end
				end)
			end
		end
		for i = 1,1 do
			if _G.AutoFarm == false and _G.BossAutoFarm == false then return end
			if SelectedMob then
				if SelectedMob:FindFirstChild("HumanoidRootPart") then
					TeleportV4(SelectedMob:FindFirstChild("HumanoidRootPart").Position + Vector3.new(0,YVALUE,0))
					if CANUSEAUTOCLICKER == true then
						if _G.MobBookFarm == true then
							_G.MobRemoteSpammingSelectedMob = SelectedMob
							_G.MobRemoteSpamming = true
						else
							task.spawn(function()
								if ANTICONSOLEWARNLOGANIMATION == false then
									ANTICONSOLEWARNLOGANIMATION = true
									for i,v in pairs(game:GetService('Players'):GetChildren()) do
										if v and v.Character and v.Character:FindFirstChild("Humanoid") then
											Player = v.Name
											AnimationId = "5328169716"
											local Anim = Instance.new("Animation")
											Anim.AnimationId = "rbxassetid://"..AnimationId
											local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
											k:Play()
											k:AdjustSpeed(0)
											task.spawn(function()
												task.wait(8)
												Anim:Destroy()
											end)
										end
									end
									task.wait(1)
									ANTICONSOLEWARNLOGANIMATION = false
								end
							end)
							task.wait(0.5)
							local args = {
								[1] = Hash(),
								[2] = {
									[1] = {
										[MotHitH1] = MotHitH2,
										["hitUnit"] = SelectedMob
									}
								}
							}
							if  _G.ragebladeMobFarm == true  then
								for i = 1,50 do
									game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("KillRemote").Value):FireServer(unpack(args))
									task.wait()
								end
							else
								for i = 1,5 do
									game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("KillRemote").Value):FireServer(unpack(args))
									task.wait(0.3)
								end
							end
						end
					end
				end
			end
		end
	else
		print("No SelectedMob!")
	end
end

function GetProxNameFromBoss(BossName)
	if BossName == "slimeKing" then
		return "slime_king_spawn"
	elseif BossName == "slimeQueen" then
		return "slime_queen_spawn"
	elseif BossName == "desertBoss" then
		return "desert_boss_spawn"
	elseif BossName == "golem" then
		return "golem_spawn"
	end 
end

function SpawnBoss(BossName)
	if BossName then
		local PProx = game:GetService("Workspace").spawnPrefabs.WildEventTriggers:FindFirstChild(BossName)
		if PProx then
			local RealProx = PProx:FindFirstChild("ProximityPrompt")
			if RealProx then
				TeleportV4(PProx.Position)
				fireproximityprompt(RealProx)
			end 
		end
	end
end

local BossCheckCOOLDOWN = false
function BossCheck(BossName)
	if BossCheckCOOLDOWN == false then
		BossCheckCOOLDOWN = true
		local SelectedMob = game:GetService("Workspace").WildernessIsland.Entities:FindFirstChild(BossName)
		if SelectedMob then
			FarmMob(true)
		else 
			if _G.BossAutoSpawn == true then
				SpawnBoss(GetProxNameFromBoss(BossName))
			else
				print("Auto Spawn is off.")
			end
		end
		task.wait(0.1)
		BossCheckCOOLDOWN = false
	end
end

local CropAntiLag = false
function CropFarm(TP)
	if CropAntiLag == false then
		CropAntiLag = true
		local Island = GetIsland() 
		local Blocks = Island:FindFirstChild("Blocks") 
		local ToFarm = {}
		local ReplaceCFrame = {}
		local Count = 1
		local CC = 0
		for i,v in pairs(Blocks:GetChildren()) do
			if v.Name == _G.SelectedCrop then
				local dis = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
				local MAXDIS = _G.SichleCropRange or 30
				if dis < MAXDIS then
					CC = CC +1
					ToFarm[CC] = v
					ReplaceCFrame[CC] = v.CFrame
				end
			end
		end

		if TP == true then
			if Blocks:FindFirstChild(_G.SelectedCrop) then
				local A =  Blocks:FindFirstChild(_G.SelectedCrop)
				TeleportV4(A.Position)
				task.wait(0.5)
			end
		end

		for i,v in pairs(ToFarm) do
			local H1 = RemoteData:FindFirstChild("CropHashData").Value
			local H2 = _G.CropHash
			local ohTable1 = {
				[H1] = H2,
				["player"] = game:GetService("Players").LocalPlayer,
				["model"] = ToFarm[Count]
			}
			task.wait()
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_HARVEST_CROP_REQUEST:InvokeServer(ohTable1)
			Count = Count + 1
		end
		task.wait()
		for i,v in ipairs(ReplaceCFrame) do		
			local ohTable1 = {
				["upperBlock"] = false,
				["cframe"] = v,
				["blockType"] = "wheat",
				[PlaceHASHName] = CropPlaceH2
			}
			if _G.AutoReplaceCrop == true then
				game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer(ohTable1)
			end
			v = nil
		end
	end
	task.wait(5)
	CropAntiLag = false
end

local AutoCollectFruitsCooldown = false
function AutoCollectFruits()
	if AutoCollectFruitsCooldown == false then
		AutoCollectFruitsCooldown = true
		local Island = GetIsland()
		for i,v in pairs(Island:FindFirstChild("Blocks"):GetChildren()) do
			if v:FindFirstChild("FruitLocations") then
				for i,v in pairs(v:FindFirstChild("FruitLocations"):GetChildren()) do
					if v:IsA("Part") then
						if v:FindFirstChild("Targettable") then
							if v:FindFirstChildWhichIsA("Tool") then
								local dis = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								if dis < 30 then
									local args = {
										[1] = {
											["tool"] = v:FindFirstChildWhichIsA("Tool"),
											[PickupH1] = PickupH2
										}
									}
									game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer(unpack(args))
								else
									repeat TeleportV4(v.Position)
										local args = {
											[1] = {
												["tool"] = v:FindFirstChildWhichIsA("Tool"),
												[PickupH1] = PickupH2
											}
										}
										game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer(unpack(args))
										task.wait(1)
									until v:FindFirstChildWhichIsA("Tool") == nil
								end
							end
						end
					end
				end
			end
		end
		task.wait()
		AutoCollectFruitsCooldown = false
	end
end

local FishFarmCooldown = false
function FishFarm()
	local dis = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-91, 29, -897)).Magnitude
	if dis > 30 then
		TeleportV4(Vector3.new(-91, 34, -897))
		repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-91, 29, -897)).Magnitude < 5
		task.wait(0.5)
	end 
	if FishFarmCooldown == false then
		FishFarmCooldown = true
		local args = {
			[1] = Hash(),
			[2] = {
				[1] = {
					["playerLocation"] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position),
					["direction"] = Vector3.new(-0.9983646869659424, -9.509330567425422e-08, 0.057165950536727905),
					["strength"] = math.random(0.5, 2)
				}
			}
		}
		game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("AngelRemote").Value):FireServer(unpack(args))
		task.wait(math.random(13,15))
		local args = {
			[1] = {
				["success"] = true
			}
		}
		game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("FishFarmFinishRemote").Value):FireServer(unpack(args))
		if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
			game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Jump = true
		end 
		task.wait(math.random(0.1,0.3))
		FishFarmCooldown = false
	end
end	

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

local AutoCollectTotemItemsCooldown = false
function AutoCollectTotemItems()
	if _G.AutoCollectTotemItems == true then
		if AutoCollectTotemItemsCooldown == false then
			AutoCollectTotemItemsCooldown = true
			local Island = GetIsland()
			if Island and Island:FindFirstChild("Blocks") then
				local Totems = {}
				for i,v in pairs(Island:FindFirstChild("Blocks"):GetChildren()) do
					local Items = v:FindFirstChild("WorkerContents") 
					if Items and Items:FindFirstChildWhichIsA("Tool") then
						if v.Name == _G.SelectedTotem then
							table.insert(Totems, v)
						end
					end
				end

				local Totem = findNearestPart(Totems)
				if Totem then
					local v = Totem
					TeleportV4(v.Position)
					repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude < 3
					repeat
						for i,v in pairs(v:FindFirstChild("WorkerContents"):GetChildren()) do
							local args = {
								[1] = {
									["tool"] = v,
									[PickupH1] = PickupH2
								}
							}
							game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer(unpack(args))
							task.wait()
						end	
						task.wait(0.3)
					until v:FindFirstChild("WorkerContents") == nil or v:FindFirstChild("WorkerContents"):FindFirstChildWhichIsA("Tool") == nil
					task.wait(1)
				end
			end
		end 
		task.wait(2)
		AutoCollectTotemItemsCooldown = false
	end
end

local TFCO = false
local RemoteAntiBan = false
function TreeFarm(TP)	
	local NE = {}
	if TFCO == true then return nil end
	TFCO = true
	if TP == true then
		DebugCheck(0,"TreeFarm (true)")
	else
		DebugCheck(0,"Tree Farm (false)")
	end

	if _G.SelectedTree == "all" then
		_G.SelectedTree = "tree"
	else
	end

	if _G.SelectedTree == "Oak" then
		DebugCheck(0,"IST OAK!!!")
	end

	DebugCheck(0,"JOA")
	DebugCheck(0,_G.SelectedTree)

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

	local distance = 35000
	for i,v in pairs(GetIsland().Blocks:GetChildren()) do 
		local Art = string.sub(v.Name:lower(), 1, string.len(_G.SelectedTree)) 
		if string.match(v.Name, _G.SelectedTree) then
			if 	_G.OakSelected == true  then
				DebugCheck(0,"isTreeWithNumber")
				local isTreeWithNumber = string.match(v.Name, "^tree%d+$")
				DebugCheck(0,"ADD22???",v.name)
				if isTreeWithNumber then
					DebugCheck(0,"ADD22",v.name)
					table.insert(NE, v)
				end
			elseif _G.ZahlenTree == true then
				local isTreeWithNumber = string.match(v.Name, "^".._G.SelectedTree.."%d+$")
				if isTreeWithNumber then
					DebugCheck(0,"ADD35",v.name)
					table.insert(NE, v)
				end
			else
				DebugCheck(0,"ADD",v.name)
				table.insert(NE, v)
			end
		end
	end	

	local v = findNearestPart(NE)
	DebugCheck(0,v)
	if v then
		local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
		if mag < distance then 
			if _G.TreeAutoFarm == false and _G.TreeAura == false then return end
			local T = v
			local H1 = RemoteData:FindFirstChild("TreeHashData").Value
			local H2 = _G.TreeHash
			local TFOUND = v:FindFirstChild("trunk") or v:FindFirstChildWhichIsA("MeshPart")
			local args1 = {
				[H1] = H2,
				["part"] = TFOUND,
				["block"] = v,
				["norm"] = Vector3.new(v.CFrame),
				["pos"] = v.Position
			}

			if v == nil then TFCO = false return end
			if TFOUND == nil then TFCO = false return end

			if v == nil then TFCO = false return end
			if TFOUND == nil then TFCO = false return end
			while TFOUND do
				if v then
					task.wait()
					for i = 1,10 do
						if v ~= nil then
							if _G.TreeAutoFarm == false and _G.TreeAura == false then TFCO = false return end
							if not v or v == nil then TFCO = false return end
							if not TFOUND then TFCO = false return end
							task.wait()
							if RemoteAntiBan == false then
								RemoteAntiBan = true
								if TP == true then
									TeleportV4(v.Position + Vector3.new(0,0,6))
									task.wait()
								end
								game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer(args1)
								if v:FindFirstChild("trunk") or v:FindFirstChildWhichIsA("MeshPart") then
								else
									TFOUND = nil
								end
								RemoteAntiBan = false
							end
						end
					end
				else
					task.wait(0.2)
					TFCO = false
					break
				end 
			end
		else
			OwnISland()
		end	 
	end
	task.wait(0.8)
	TFCO = false
end

function ROCKHELPER_1()
	local ohTable1 = {
		[HitHASHName] = HitHASH,
		["part"] =    _G.Now_Rock_part,
		["block"] =  _G.Now_Rock_block,
		["norm"] =   _G.Now_Rock_norm,
		["pos"] = _G.Now_Rock_pos,
	}
	for i = 1,1 do
		if _G.Now_Rock_part then
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("BlockRemote").Value):InvokeServer(ohTable1)
		end
	end
end

local IslandRockFarmCOOLDOWN = false
function IslandRockFarm(RockArt)
	if IslandRockFarmCOOLDOWN == false then
		IslandRockFarmCOOLDOWN = true
		print("IslandRockFarm")
		local function findNearestRock(A)
			local closestPart = nil
			local closestDistance = math.huge
			local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			local Table = A
			for i, part in ipairs(Table) do
				task.wait()
				local distance = (part.Position - playerPosition).magnitude
				if distance < closestDistance then
					closestPart = part
					closestDistance = distance
				end
			end
			return closestPart
		end

		local Island = GetIsland()
		local Blocks = Island:FindFirstChild("Blocks")
		local RocksSaved = {}
		if type(RockArt) == "table" then
			for i,v in pairs(Blocks:GetChildren()) do

				function removeRock(itemName)
					task.wait()
					local index = string.find(itemName, "rock")
					if index ~= nil then
						return string.sub(itemName, 1, index - 1) .. string.sub(itemName, index + 4)
					else
						return itemName
					end
				end	
				local Name = removeRock(v.Name)
				local isALL = false
				if RockArt == "All" or table.find(RockArt,"All") then
					task.wait()
					if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
						task.wait()
						table.insert(RocksSaved, v)
						isALL = true
					end
				end
				if table.find(RockArt,Name) and isALL == false then
					task.wait()
					if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
						task.wait()
						table.insert(RocksSaved, v)
					end
				end
			end
		else
			if RockArt == "All"then
				for i,v in pairs(Blocks:GetChildren()) do
					if v:FindFirstChild("1") then
						if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
							if _G.RockFarmonIsland ~= true then return nil end
							table.insert(RocksSaved, v)
						end
					end
				end
			else
				for i,v in pairs(Blocks:GetChildren()) do
					if v.Name == RockArt then
						if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
							if _G.RockFarmonIsland ~= true then return nil end
							table.insert(RocksSaved, v)
						end
					end
				end
			end
		end
		print("HOLD THE BLOCK!!!")
		local v = findNearestRock(RocksSaved)
		if v then
			print("V found!!!", v.Name)
			local dis = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
			print("DISTANCE")
			if dis > 20 then
				print("YES")
				if v then
					TeleportV4(v.Position)
					repeat wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude < 20
					task.wait()
					local ohTable1 = {
						[HitHASHName] = HitHASH,
						["part"] = v:FindFirstChild("1") or v,
						["block"] = v,
						["norm"] = Vector3.new(v.CFrame),
						["pos"] = v.Position
					}
					game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("BlockRemote").Value):InvokeServer(ohTable1)
				else
					v = nil 
				end
			else
				print("NOPE")
				if v then
					print("There are v fancy remotes.")
					local ohTable1 = {
						[HitHASHName] = HitHASH,
						["part"] = v:FindFirstChild("1") or v,
						["block"] = v,
						["norm"] = Vector3.new(v.CFrame),
						["pos"] = v.Position
					}
					game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("BlockRemote").Value):InvokeServer(ohTable1)
				else
					v = nil
				end
			end
		else
			warn("No Block!!!")
		end
	end
	task.wait(1)
	print("WAIT 1 is OVER!!!")
	IslandRockFarmCOOLDOWN = false
end

local RF = false 
function RockFarm(RockArt, T)
	if RF == false then
		RF = true
		if _G.RockFarmonIsland == true then
			IslandRockFarm(RockArt)
			time.sleep(1)
			RF = false
			return 
		end

		local NowName = RockArt
		local Rocks = {}
		local function findNearestRock(A)
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

		function IsInTable(Table, NameToCheck)
			task.wait()
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
				if NameToCheck == nil then
					print("NameToCheck is nil")
				end
				if Table == nil then
					print("Table is nil")
				end
				return false

			end
		end

		if T == "T" then
			for i,v in pairs(game:GetService("Workspace").WildernessBlocks:GetChildren()) do
				function removeRock(itemName)
					local index = string.find(itemName, "rock")
					if index ~= nil then
						return string.sub(itemName, 1, index - 1) .. string.sub(itemName, index + 4)
					else
						return itemName
					end
				end			

				local Name = removeRock(v.Name)
				if RockArt == "All" or table.find(RockArt, "All")  then
					table.insert(Rocks, v)
				else
					if table.find(RockArt, Name) then
						table.insert(Rocks, v)
					end
				end
			end
		else
			if RockArt == "All" then
				for i,v in pairs(game:GetService("Workspace").WildernessBlocks:GetChildren()) do
					table.insert(Rocks, v)
				end
			else
				for i,v in pairs(game:GetService("Workspace").WildernessBlocks:GetChildren()) do
					if v.Name == RockArt then
						table.insert(Rocks, v)
					end
				end
			end
		end

		local Rock = findNearestRock(Rocks)
		if not Rock then RF = false return end
		if Rock then
			if Rock.Position and Rock:FindFirstChild("0") or Rock:FindFirstChild("1") then
				TeleportV4(Rock.Position)
				repeat wait()
					TeleportV4(Rock.Position)
					local ohTable1 = {
						[HitHASHName] = HitHASH,
						["part"] = Rock:FindFirstChild("0") or Rock:FindFirstChild("1"),
						["block"] = Rock,
						["norm"] = Vector3.new(Rock.CFrame),
						["pos"] = Vector3.new(Rock:FindFirstChild("0").Position) or Vector3.new(Rock:FindFirstChild("1").Position)
					}
					game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("BlockRemote").Value):InvokeServer(ohTable1)	
				until Rock == nil or Rock:FindFirstChild("0") == nil or Rock:FindFirstChild("1") == nil
				RF = false
			end
		end
		RF = false
	end
end

function RockFarmV2(RockArt, b1,b2,b3)
	print("1. RockArt:",RockArt)
	if type(RockArt) == "table" then
		if table.find(RockArt, "All") then
			print("ALL!!!")
			RockFarm("All", "T")
		else
			RockFarm(RockArt, "T")
		end
	else
		if RockArt == "All" then
			RockFarm("All") 
		elseif RockArt == "Iron" then
			RockFarm("rockIron") 
		elseif RockArt == "Gold" then
			RockFarm("rockGold")
		elseif RockArt == "Diamond" then
			RockFarm("rockDiamond")
		elseif RockArt == "Amethyst Stone" then
			RockFarm("rockAmethystStone")
		elseif RockArt == "Amethyst" then
			RockFarm("rockAmethyst")
		elseif RockArt == "Obsidian" then
			RockFarm("rockObsidian")
		elseif RockArt == "Opal" then
			RockFarm("rockOpal")
		elseif RockArt == "Copper" then
			RockFarm("rockCopper")
		elseif RockArt == "Diorite" then
			RockFarm("rockDiorite")
		elseif RockArt == "Coal" then
			RockFarm("rockCoal")
		elseif RockArt == "Stone" then
			RockFarm("rockStone")
		elseif RockArt == "Electrite" then
			RockFarm("rockElectrite")
		else
			function removeRock(itemName)
				local index = string.find(itemName, "rock")
				if index ~= nil then
					return string.sub(itemName, 1, index - 1) .. string.sub(itemName, index + 4)
				else
					return itemName
				end
			end	
			RockFarm(removeRock(RockArt));
		end
	end
end

function RockAura()
	local ToBreak = {}
	local Count = 1
	for i,v in pairs(game:GetService("Workspace").WildernessBlocks:GetChildren()) do 
		local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
		if mag < 30 then
			ToBreak[Count] = v 
			Count = Count + 1
		end
	end

	for i,v in pairs(ToBreak) do
		local args0 = {
			[1] = {
				[HitHASHName] = HitHASH,
				["part"] = v:FindFirstChild("1"),
				["block"] = v,
				["norm"] = Vector3.new(v.CFrame),
				["pos"] = v:FindFirstChild("1").Position
			}
		}

		local args1 = {
			[1] = {
				[HitHASHName] = HitHASH,
				["part"] = v:FindFirstChild("1"),
				["block"] = v,
				["norm"] = Vector3.new(v.CFrame),
				["pos"] = v:FindFirstChild("1").Position
			}
		}
		if v:FindFirstChild("1") then
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer(unpack(args1))
		elseif v:FindFirstChild("0") then
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer(unpack(args0))
		else
			DebugCheck(0,"Fehler!")
		end
	end
end

local F
if game:FindFirstChild("CROPBETA") == nil then
	local C = Instance.new("Folder")
	C.Parent = game
	C.Name = "CROPBETA"
	F = C
else
	F = game:FindFirstChild("CROPBETA") 
end

task.wait()
function Set(POS)
	if F ~= nil then
		local A = Instance.new("ObjectValue")
		A.Value = POS
		A.Parent = F
	else
		game.Players.LocalPlayer:Kick("Error Please Reexecute!")
	end
end

function GetIsland()
	local islandName
	local _________Inseln = game:GetService("Workspace").Islands:GetChildren()
	for i = 1, #_________Inseln do
		if _________Inseln[i]:FindFirstChild("Owners"):FindFirstChild(_G.Island_USERID) then
			islandName = _________Inseln[i]
			return islandName
		end
	end 
end

local KILLAURA_COOLDOWN = false
function KillAuraOLD()
	if KILLAURA_COOLDOWN == false then
		KILLAURA_COOLDOWN = true
		local YVALUE = _G.MobTpYPos
		if workspace:FindFirstChild("WildernessIsland"):FindFirstChild("Entities") then
			local CHILDEN = workspace:FindFirstChild("WildernessIsland"):FindFirstChild("Entities"):GetChildren()
			for i = 1,#CHILDEN do
				if _G.ragebladeMobFarm == true then
					DebugCheck(0,"ragebladeMobFarm")
					local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
					local Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChild("rageblade")
					if Tool then
						local scriptPath = Tool:FindFirstChild("rageblade")
						local closureName = "Unnamed function"
						local upvalueIndex = 1
						local closureConstants = {
							[1] = "isHitting",
							[2] = "getLivingEntityFromChildPart",
							[3] = "attemptHit"
						}

						local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
						local value = 0
						local elementIndex = "lastClicked"
						game:GetService("RunService").RenderStepped:Connect(function()
							debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
						end)
					end

					local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
					local Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChild("rageblade")
					if Tool then
						local scriptPath = Tool:FindFirstChild("rageblade")
						local closureName = "Unnamed function"
						local upvalueIndex = 1
						local closureConstants = {
							[1] = "isHitting",
							[2] = "getLivingEntityFromChildPart",
							[3] = "attemptHit"
						}

						local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
						local value = 4
						local elementIndex = "speed"
						debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
					end
				end

				if _G.ragebladeMobFarm == true then
					DebugCheck(0,"ragebladeMobFarm2")
					if CHILDEN[i]:FindFirstChild("HumanoidRootPart") then
						if (CHILDEN[i]:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 30 then
							if CANUSEAUTOCLICKER == true then
								game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
								task.wait()
								game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
							end
							local ohString1 = Hash()
							local ohTable2 = {
								[1] = {
									[MotHitH1] = MotHitH2,
									["hitUnit"] = CHILDEN[i]
								}
							}

							local SelectedMob = CHILDEN[i]
							if 	CHILDEN[i]:FindFirstChild("HumanoidRootPart") then
								game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("KillRemote").Value):FireServer(ohString1, ohString2)
							else
							end
						end
					else
						if CANUSEAUTOCLICKER == true then
							game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
							task.wait()
							game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
						end
						local SelectedMob = CHILDEN[i]
						if 	CHILDEN[i]:FindFirstChild("HumanoidRootPart") then
						end
					end
				else
					if CHILDEN[i]:FindFirstChild("HumanoidRootPart") then
						if (CHILDEN[i]:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 30 then
							if CANUSEAUTOCLICKER == true then
								game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
								task.wait()
								game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
							end
							local SelectedMob = CHILDEN[i]
							if 	CHILDEN[i]:FindFirstChild("HumanoidRootPart") then
							end
						end
					else
						if CANUSEAUTOCLICKER == true then
							game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
							task.wait()
							game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
						end
						local SelectedMob = CHILDEN[i]
						if 	CHILDEN[i]:FindFirstChild("HumanoidRootPart") then
						end
					end
				end
			end
		end
		task.wait(0.5)
		KILLAURA_COOLDOWN = false
	end
end

function NKillAura()
	if KILLAURA_COOLDOWN == false then
		KILLAURA_COOLDOWN = true
		local function findNearestPart(A)
			local closestPart = nil
			local closestDistance = math.huge
			local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			local Table = A
			for i, part in ipairs(Table) do
				local distance = (part:FindFirstChild("HumanoidRootPart").Position - playerPosition).magnitude
				if distance < closestDistance then
					closestPart = part
					closestDistance = distance
				end
			end
			DebugCheck(0,"findNearestPart")
			return closestPart
		end

		local Mobs = {}
		for i,v in pairs(workspace.WildernessIsland.Entities:GetChildren()) do
			if v and v:FindFirstChild("HumanoidRootPart") then
				table.insert(Mobs, v) 
			end
		end

		local NM = findNearestPart(Mobs)
		DebugCheck(0,NM.Name)
		for i = 1,50 do
			if NM then
				local ohString1 = Hash()
				local ohTable2 = {
					[1] = {
						[MotHitH1] = MotHitH2,
						["hitUnit"] = NM
					}
				}
				game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("KillRemote").Value):FireServer(ohString1, ohTable2)
				wait()
			end
		end
		task.wait(0.5)
		KILLAURA_COOLDOWN = false
	end
end

local KILLAURA_COOLDOWN = false
local BypassedSowrd = false
local ANTICONSOLEWARNLOGANIMATION2 = false
function KillAura()
	if KILLAURA_COOLDOWN == false then
		KILLAURA_COOLDOWN = true
		if BypassedSowrd == false then
			if _G.ragebladeMobFarm == true then
				DebugCheck(0,"ragebladeMobFarm")
				local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
				local Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChild("rageblade")
				if Tool then
					local scriptPath = Tool:FindFirstChild("rageblade")
					local closureName = "Unnamed function"
					local upvalueIndex = 1
					local closureConstants = {
						[1] = "isHitting",
						[2] = "getLivingEntityFromChildPart",
						[3] = "attemptHit"
					}

					local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
					local value = 0
					local elementIndex = "lastClicked"
					game:GetService("RunService").RenderStepped:Connect(function()
						debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
					end)
				end

				local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
				local Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChild("rageblade")
				if Tool then
					local scriptPath = Tool:FindFirstChild("rageblade")
					local closureName = "Unnamed function"
					local upvalueIndex = 1
					local closureConstants = {
						[1] = "isHitting",
						[2] = "getLivingEntityFromChildPart",
						[3] = "attemptHit"
					}
					local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
					local value = 4
					local elementIndex = "speed"
					debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
					BypassedSowrd = true
				end
			end
		end

		if ANTICONSOLEWARNLOGANIMATION2 == false then
			ANTICONSOLEWARNLOGANIMATION2 = true
			task.spawn(function()
				for i,v in pairs(game:GetService('Players'):GetChildren()) do
					if v and v.Character and v.Character:FindFirstChild("Humanoid") then
						Player = v.Name
						AnimationId = "5328169716"
						local Anim = Instance.new("Animation")
						Anim.AnimationId = "rbxassetid://"..AnimationId
						local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
						k:Play()
						k:AdjustSpeed(0)
					end
				end
				wait(5)
				ANTICONSOLEWARNLOGANIMATION2 = false
			end)
		end	

		local function findNearestMob(A)
			closestPart = nil
			closestDistance = math.huge
			playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			Table = A
			for i, part in ipairs(Table) do
				if part:FindFirstChild("HumanoidRootPart") then
					local distance = (part:FindFirstChild("HumanoidRootPart").Position - playerPosition).magnitude
					if distance < closestDistance then
						closestPart = part
						closestDistance = distance
					end
				end
			end
			return closestPart
		end

		local Mobs = workspace.WildernessIsland.Entities:GetChildren()
		SelectedMob = findNearestMob(Mobs)
		local args = {
			[1] = Hash(),
			[2] = {
				[1] = {
					[MotHitH1] = MotHitH2,
					["hitUnit"] = SelectedMob
				}
			}
		}
		game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("KillRemote").Value):FireServer(unpack(args))
		task.wait(0.4)
		KILLAURA_COOLDOWN = false
	end
end

local TreeAuraCooldown = false
function TreeAura()
	if TreeAuraCooldown == false then
		TreeAuraCooldown = true
		local distance = 30
		local NSEL
		if _G.SelectedTree == "all" then
			NSEL = "tree"
		else
			NSEL = _G.SelectedTree
		end 
		for i,v in pairs(workspace.Islands:GetDescendants()) do
			if v.Name == "Owners" then 
				if v:FindFirstChild(_G.Island_USERID) then 
					for i,v in pairs(v.Parent.Blocks:GetChildren()) do
						local ZynovaHub_on_TOP = string.sub(v.Name:lower(), 1, string.len(NSEL))
						if string.match(v.Name, NSEL) then 
							local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
							if mag < distance then 
								task.wait(0.3)
								if _G.TreeAura == true then

									local ohTable1 = {
										[HitHASHName] = HitHASH,
										["part"] = TFOUND,
										["block"] = v,
										["norm"] = Vector3.new(v.CFrame),
										["pos"] = v.Position
									}
									game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer(ohTable1)
								end
							end
						end
					end
				end
			end
		end
		task.wait(0.2)
		TreeAuraCooldown = false
	end
end

local voidParasiteFarmBypassCooldown2 = 0
local voidParasiteFarmBypassCooldown = 0
local voidParasiteFarmCooldown = false
function voidParasiteFarm(value)
	if voidParasiteFarmCooldown == false then
		voidParasiteFarmCooldown = true
		local voidParasiteFarmTable = {}
		for i,v in pairs(game:GetService("Workspace").WildernessBlocks:GetChildren()) do 
			if v.Name == "voidParasite" then
				table.insert(voidParasiteFarmTable, v)
			end
		end

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

		local TargeVoidParasite = findNearestPart(voidParasiteFarmTable)
		if not TargeVoidParasite then voidParasiteFarmCooldown = false return end
		local H1 = RemoteData:FindFirstChild("CropHashData").Value
		local H2 = _G.CropHash
		local ohTable1 = {
			[H1] = H2,
			["player"] = game:GetService("Players").LocalPlayer,
			["model"] = TargeVoidParasite
		}

		local args = {
			[1] = "sickleStone",
			[2] = {
				[1] = TargeVoidParasite
			}
		}

		voidParasiteFarmBypassCooldown = voidParasiteFarmBypassCooldown + 1
		TeleportV4(TargeVoidParasite.Position + Vector3.new(0,3,0))
		if _G.VoidParasiteBypass == true then
			DebugCheck(0,"voidParasiteFarmBypassCooldown:"..voidParasiteFarmBypassCooldown)
			DebugCheck(0,"voidParasiteFarmBypassCooldown2:"..voidParasiteFarmBypassCooldown2)
			if voidParasiteFarmBypassCooldown < 21 then
				voidParasiteFarmBypassCooldown2 = 0
				game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.SwingSickle:InvokeServer(unpack(args))
			else
				if voidParasiteFarmBypassCooldown2 > 21 then
					voidParasiteFarmBypassCooldown = 0
				else
					voidParasiteFarmBypassCooldown2 = voidParasiteFarmBypassCooldown2 + 1
					game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.CLIENT_HARVEST_CROP_REQUEST:InvokeServer(ohTable1)
				end
			end
		else
			if _G.VoidParasiteSichle == true then
				game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.SwingSickle:InvokeServer(unpack(args))
			else
				game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.CLIENT_HARVEST_CROP_REQUEST:InvokeServer(ohTable1)
			end
		end		
		voidParasiteFarmCooldown = false
	end
end

local function spiritfindNearestPart(A)
	print("spiritfindNearestPart")
	local closestPart = nil
	local closestDistance = math.huge
	local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	local Table = A
	for i, Model in ipairs(Table) do
		if Model:FindFirstChild("HumanoidRootPart") then
			local part = Model:FindFirstChild("HumanoidRootPart")
			if Model.Name == "spirit"  then
				local distance = (part.Position - playerPosition).magnitude
				if distance < closestDistance then
					closestPart = Model
					closestDistance = distance
				end
			end
		end
	end
	print("return wäre:",closestPart)
	return closestPart
end

	local spiritFarmCooldown = false
	function spiritFarm(value)
		if spiritFarmCooldown then
			return
		end
		spiritFarmCooldown = true
		if not _G.SpiritAutoFarmBool then
			return
		end

		local Entities = workspace.WildernessIsland.Entities:GetChildren()
		local KIND = spiritfindNearestPart(Entities)
		if KIND then
			if KIND.HumanoidRootPart.Position.Y <= -50 then
				KIND:Destroy()
			else
				local HttpService = game:GetService("HttpService")
				local Abd = HttpService:GenerateGUID(false) .. HttpService:GenerateGUID(false) .. HttpService:GenerateGUID(false)
				local args = {
					[1] = Abd,
					[2] = {
						[1] = {
							entity = KIND
						}
					}
				}

				local player = game.Players.LocalPlayer
				local net = game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net
				local backpack = player.Backpack:FindFirstChild("net")
				local netParent = player.Character:FindFirstChild("net") or (backpack and backpack.Parent)
				if not netParent then
					if backpack then
						backpack.Parent = player.Character
					end
					netParent = player.Character
				end
				TeleportV4(KIND.HumanoidRootPart.Position + Vector3.new(0, 1, 5))
				pcall(function()
					net.out._NetManaged[RemoteData.SpiritRemote.Value]:FireServer(unpack(args))
				end)
			end
		end	
		task.wait(0.25)
		spiritFarmCooldown = false
	end

	local SICHLECROPFARMCOOLDOWN = false
	local Harvesting = false
	local MAXDISCROPSICHLE = 30
	local GOTACROPTAGET = false

	local function SichleCropFarm(SOLLICHAUCHTELEPORTENODERNICHT)
		DebugCheck(0,"SichleCropFarm")
		if SICHLECROPFARMCOOLDOWN == false then
			SICHLECROPFARMCOOLDOWN = true
			if _G.SuperFastCropFarm == true then
				BlocksPerCall = 40
			else
				BlocksPerCall = 30
			end

			local Players = game:GetService("Players")
			local LocalPlayer = Players.LocalPlayer
			local Workspace = game:GetService("Workspace")
			local Islands = Workspace.Islands
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local RunService = game:GetService("RunService")
			local SelectedCrop = _G.SelectedCrop
			local Island_USERID = _G.Island_USERID
			local UseSichleTool = _G.UseSichleTool
			local function GetIsland()
				for _, Island in ipairs(Islands:GetChildren()) do
					local Owners = Island:FindFirstChild("Owners")
					if Owners and Owners:FindFirstChild(Island_USERID) then
						return Island
					end
				end
			end

			local function GetToHarvest(Island)
				local Blocks = Island:FindFirstChild("Blocks")
				local ToHarvest = {}
				if IsInTable(SelectedCrop, "all") then
					for _, Block in ipairs(Blocks:GetChildren()) do
						if Block:FindFirstChild("Targettable") then
							local MeshPart = Block:FindFirstChildWhichIsA("MeshPart")
							if MeshPart and MeshPart:FindFirstChild("Harvestable") and MeshPart.Harvestable.Value then
								local dis = (Block.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								if dis < MAXDISCROPSICHLE then
									table.insert(ToHarvest, Block)
									GOTACROPTAGET = true
								end
							end
						end
					end
				elseif _G.SelectedCrop == {"allberrys"} then
					for _, Block in ipairs(Blocks:GetChildren()) do
						if Block and Block.Name == "berryBush" or Block.Name == "blueberryBush" or Block.Name == "blackberryBush" then
							local MeshPart = Block:FindFirstChildWhichIsA("MeshPart")
							if MeshPart and MeshPart:FindFirstChild("Harvestable") and MeshPart.Harvestable.Value then
								local dis = (Block.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								if dis < MAXDISCROPSICHLE then
									table.insert(ToHarvest, Block)
									GOTACROPTAGET = true
								end
							end
						end
					end
				else
					for _, Block in ipairs(Blocks:GetChildren()) do
						if IsInTable(SelectedCrop, Block.Name)  then
							local MeshPart = Block:FindFirstChildWhichIsA("MeshPart")
							if MeshPart and MeshPart:FindFirstChild("Harvestable") and MeshPart.Harvestable.Value then
								local dis = (Block.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								if dis < MAXDISCROPSICHLE then
									table.insert(ToHarvest, Block)
									GOTACROPTAGET = true
								end
							end
						end
					end
				end
				return ToHarvest
			end

			local function GetToHarvestTP(Island)
				local Blocks = Island:FindFirstChild("Blocks")
				local ToHarvesttp = {}
				if IsInTable(SelectedCrop, "all") then
					for _, Block in ipairs(Blocks:GetChildren()) do
						if Block:FindFirstChild("Targettable") then
							local MeshPart = Block:FindFirstChildWhichIsA("MeshPart")
							if MeshPart and MeshPart:FindFirstChild("Harvestable") and MeshPart.Harvestable.Value then
								local dis = (Block.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								table.insert(ToHarvesttp, Block)
								DebugCheck(0,"GetToHarvestTP")
							end
						end
					end
				elseif _G.SelectedCrop == {"allberrys"} then
					for _, Block in ipairs(Blocks:GetChildren()) do
						if Block.Name == "berryBush" or Block.Name == "blueberryBush" or Block.Name == "blackberryBush" then
							local MeshPart = Block:FindFirstChildWhichIsA("MeshPart")
							if MeshPart and MeshPart:FindFirstChild("Harvestable") and MeshPart.Harvestable.Value then
								local dis = (Block.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								table.insert(ToHarvesttp, Block)
							end
						end
					end
				else
					print("OTHER")
					for _, Block in ipairs(Blocks:GetChildren()) do
						if  IsInTable(SelectedCrop, Block.Name) then
							local MeshPart = Block:FindFirstChildWhichIsA("MeshPart")
							if MeshPart and MeshPart:FindFirstChild("Harvestable") and MeshPart.Harvestable.Value then
								local dis = (Block.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								table.insert(ToHarvesttp, Block)
								DebugCheck(0,"GetToHarvestTP")
							end
						end
					end
				end
				return ToHarvesttp
			end
			task.wait()

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

			local function Ernte()
				DebugCheck(0,"Ernte")
				local ToHarvest = GetToHarvest(GetIsland())
				local ToHarvestLength = #ToHarvest
				local BlocksPerCall = 50
				local Count = 1
				BlocksPerCall = 150

				if _G.SuperFastCropFarm == true then
					BlocksPerCall = 300
				end

				if ToHarvest == nil or ToHarvest == {} then
					DebugCheck(0,"NICHTS GEFUNDEN!!!")
					return 0;
				end

				local OriginalPositions = {}
				local OriginalNames = {}
				_G.OriginalNames = {}
				_G.OriginalPositions = {}
				for i, Block in ipairs(ToHarvest) do
					OriginalPositions[i] = Block.CFrame
					OriginalNames[i] = Block.Name
					_G.OriginalPositions[i] = Block.CFrame
					_G.OriginalNames[i] = Block.Name
				end
				DebugCheck(0,"while")
				local Args = {}
				DebugCheck(0,"Start While ")
				while Count <= ToHarvestLength do
					task.wait()
					local HarvestCount = math.min(ToHarvestLength - Count + 1, BlocksPerCall)
					for i = Count, Count + HarvestCount - 1 do
						Args[i - Count + 1] = ToHarvest[i]
					end
					Count = Count + HarvestCount
				end

				DebugCheck(0,"Finish While")
				task.wait(0.1)
				ReplicatedStorage.rbxts_include.node_modules["@rbxts"].net.out._NetManaged.SwingSickle:InvokeServer(UseSichleTool, Args)
				local A = 0
				local AACOUNT = 1
				local Placeing = true
				local ISTTTTON = true
				if _G.AutoReplaceCrop == true then
					local TTTT = game:GetService("RunService").RenderStepped:Connect(function()
						if A < 40 then
							task.wait()
							A = A + 1
							for Blocki = 1, #ToHarvest do
								if ISTTTTON == false then return nil end
								if OriginalPositions[AACOUNT] and OriginalPositions[AACOUNT] ~= nil and OriginalPositions[AACOUNT] ~= nil then
									_G.orgPos = OriginalPositions[AACOUNT]
									_G.AACOUNT = AACOUNT
									loadstring("local ohTable1 = {['upperBlock'] = false,[_G.CropPlaceH1] =  _G.CropPlaceHash,['cframe'] = _G.orgPos,['blockType'] = _G.OriginalNames[_G.AACOUNT]};game:GetService('ReplicatedStorage').rbxts_include.node_modules['@rbxts'].net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer(ohTable1)")()
									AACOUNT = AACOUNT + 1   
								else
									AACOUNT = AACOUNT + 1
								end

							end
							Placeing = false
						end
					end)
				end
			end

			if _G.SuperFastCropFarm ~= true then
				task.wait(0.4)
			end

			if _G.SuperFastCropFarm ~= true then
				if _G.SafeUseSichle == true then 
					task.wait(1.5)
				end
			end

			local IsThere = false
			if SOLLICHAUCHTELEPORTENODERNICHT == true then
				DebugCheck(0,"SOLLICHAUCHTELEPORTENODERNICHT is true")
				local ToHarvest = GetToHarvestTP(GetIsland())
				task.wait(0.2)
				local PPPPPOSSS = findNearestPart(ToHarvest)
				if PPPPPOSSS then
					TeleportV4(PPPPPOSSS.Position)
					DebugCheck(0,"Tween Fertig!!!!")
					Completed = true
					Ernte()
					Harvesting = false
					SICHLECROPFARMCOOLDOWN = false
					SichleAuraCooldown = false
					SichleFarmCooldown = false
				else
					Completed = true
					Harvesting = false
					SICHLECROPFARMCOOLDOWN = false
					SichleAuraCooldown = false
					SichleFarmCooldown = false
				end
			else
				Ernte()
				Harvesting = false
				SICHLECROPFARMCOOLDOWN = false
				SichleAuraCooldown = false
				SichleFarmCooldown = false
			end
			if TTTT then
				TTTT:Disconnect()
			end 
			ISTTTTON = false
			SICHLECROPFARMCOOLDOWN = false
			SichleFarmCooldown = false	
		end
	end

	local PLAC222 = false
	function SeedAura(V)
		if PLAC222 == false then
			PLAC222 = true
			local Island = GetIsland()
			local center = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			local radius = _G.PlowDistance or 5
			local region = Region3.new(center - Vector3.new(radius, radius, radius), center + Vector3.new(radius, radius, radius))
			local Blocks = workspace:FindPartsInRegion3(region, nil, math.huge)
			local ANTILAG_BOSS = 0
			task.wait(0.1)
			local ToLace = "wheat"
			for i = 1,#Blocks do
				local v = Blocks[i]
				if v.Parent == Island:FindFirstChild("Blocks") then
					if v.Name == "soil" then
						task.wait()
						task.spawn(function()
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
								else
									task.wait(0.1)
									PLAC222 = false
									return nil
								end
							end
							task.wait()
							local ohTable1 = {
								["upperBlock"] = false,
								["cframe"] = CFrame.new(v.Position + Vector3.new(0,3,0)),
								["blockType"] = ToLace or "wheat",
								[PlaceHASHName] = PlaceHASH
							}
							game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer(ohTable1)
						end)
					end
				end
			end
			task.wait(0.1)
			PLAC222 = false
		end
	end

	local PET_ANIMALFarmCoolDowm = false
	function PET_ANIMALFarm(V)
		if PET_ANIMALFarmCoolDowm == false then
			PET_ANIMALFarmCoolDowm = true
			local Island = GetIsland()
			local Entities = Island:FindFirstChild("Entities")
			if Entities then
				Entities = Island:FindFirstChild("Entities"):GetChildren()
				for i = 1,#Entities do 
					if Entities[i].Name == "cow" or Entities[i].Name == "pig" or Entities[i].Name == "sheep" or Entities[i].Name == "chicken" then
						if V == true then
							TeleportV4(Entities[i]:FindFirstChild("HumanoidRootPart").Position)
						else
							local args = {
								[1] = {
									["animal"] = Entities[i]
								}}
							game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("PetCollect").Value):InvokeServer(unpack(args)) 
						end
						wait()
						local args = {
							[1] = {
								["animal"] = Entities[i]
							}}
						for i = 1,1 do
							game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("PetCollect").Value):InvokeServer(unpack(args)) 
							if Entities[i]:FindFirstChild("oldName") == nil then
								local OLD = Instance.new("StringValue")
								OLD.Name = "oldName"
								OLD.Parent = Entities[i]
								OLD.Value = Entities[i].Name
								Entities[i] = "GG"
							end
							Entities[i] = "GG"
						end
					end
					Entities = Island:FindFirstChild("Entities"):GetChildren()
					for i = 1,#Entities do 
						if Entities[i]:FindFirstChild("oldName") then
							Entities[i].Name = Entities[i]:FindFirstChild("oldName").Value
						end
					end
				end
			end
			PET_ANIMALFarmCoolDowm = false
		end
	end

	AutoPickUpCooldown = false
	function AutoPickupItems()
		if AutoPickUpCooldown == true then return nil end
		AutoPickUpCooldown = true 
		local Island = GetIsland()
		local Tools = Island:FindFirstChild("Drops"):GetChildren()
		local PublicTools = game:GetService("Workspace"):FindFirstChild("game:WildernessDrops"):FindFirstChild("WildDropsFolder"):GetChildren()
		for i = 1,#Tools do 
			local ohTable1 = {
				["tool"] = Tools[i],
				[PickupH1] = PickupH2
			}
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer(ohTable1)
		end

		for i = 1,#PublicTools do 
			local ohTable1 = {
				["tool"] = PublicTools[i],
				[PickupH1] = PickupH2
			}
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer(ohTable1)
		end
		AutoPickUpCooldown = false
	end

	local CIsland = false
	function CleanIsland()
		if CIsland == false then
			CIsland = true
			local Island = GetIsland()
			local Blocks = Island:FindFirstChild("Blocks")
			local Targets = {}
			local Targetnames = {"tallGrass", "naturalRock1"}
			for i,v in pairs(Blocks:GetChildren()) do
				for y,c in pairs(Targetnames) do
					if c == v.Name then
						table.insert(Targets, v)
						DebugCheck(0,"ADDED!",c)
					end
				end
			end

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

			local closestPart = findNearestPart(Targets)
			if closestPart then
				TeleportV4(closestPart.Position)
				task.wait()
				if closestPart then
					local GPART = closestPart:FindFirstChildWhichIsA("Part") or closestPart:FindFirstChildWhichIsA("MeshPart")
					local args = {
						[1] = {
							[HitHASHName] = HitHASH,
							["part"] = GPART,
							["block"] = closestPart,
							["norm"] = closestPart.Position,
							["pos"] = GPART.Position
						}
					}
					if closestPart then
						local dis = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - closestPart.Position).Magnitude
						if dis < 30 then
							for i = 1,3 do
								if closestPart then
									game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild(RemoteData:FindFirstChild("BlockRemote").Value):InvokeServer(unpack(args))
									task.wait()
								end
							end
							task.wait(0.5)
							CIsland = false
						else
							task.wait(0.5)
							CIsland = false
						end
					else
						task.wait(0.5)
						CIsland = falsec
					end
				end
			else
				task.wait(0.5)
				CIsland = false
			end
		end
	end

	local FFC = false
	function flowerFarm(V)
		if FFC == false then
			FFC = true
			local Island = GetIsland()
			local  Blocks = Island:FindFirstChild("Blocks"):GetChildren()
			if Island:FindFirstChild("Blocks") then
				for i,v in pairs(Blocks) do
					if v:FindFirstChild("flower") then
						if V == true then
							TeleportV4(v.Position)
							task.wait(0.5)
						end
						local args = {
							[1] = {
								["flower"] = v
							}
						}
						game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.client_request_1:InvokeServer(unpack(args))
					end
				end
			end
			task.wait(2)
			FFC = false
		end
	end

	local PLAC = false
	function PlowAura(V)
		if PLAC == false then
			PLAC = true
			local Island = GetIsland()
			local center = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			local radius = _G.PlowDistance or 30
			local region = Region3.new(center - Vector3.new(radius, radius, radius), center + Vector3.new(radius, radius, radius))
			local Blocks = workspace:FindPartsInRegion3(region, nil, math.huge)
			local LMAO
			if V == true then
				LMAO = "grass"
			else
				LMAO = "soil"
			end
			local CVS = 0
			local A = 0
			for i = 1,#Blocks do
				task.spawn(function()
					local v = Blocks[i]
					if v.Parent == Island:FindFirstChild("Blocks") then
						if v.Name == LMAO then
							local ohTable1 = {
								["block"] = v
							}
							if LMAO == "grass" then
								if _G.PlowAura == true then
									game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_PLOW_BLOCK_REQUEST:InvokeServer(ohTable1) 
								end 
							elseif LMAO == "soil" then
								if _G.UnPlowAura == true then
									game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_PLOW_BLOCK_REQUEST:InvokeServer(ohTable1) 
								end
							end
						end
					end
				end)
			end
		end
		task.wait(0.1)
		PLAC = false
	end

	local Human = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
	Human:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
		Human.WalkSpeed = _G.WalkSpeed or 30
	end)

	local __CHECKVIP__ = game:GetService("Workspace"):WaitForChild("PrivateServer")
	if __CHECKVIP__ then
		if __CHECKVIP__.Value == false then
			Message("WARNING!", "THE SCRIPT IS SAFE ON VIP SERVERS! PUBLIC SERVERS ARE UNSAFE MODS CAN BAN YOU!", "Okay!")
		end
	end

	local OP = false 
	function OpenPresent()
		if OP == false then
			OP = true 
			local args = {
				[1] = {}
			}
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.client_request_22:InvokeServer(unpack(args))
			task.wait(0.1)
			OP = false
		end
	end

	local GIftCO = false
	function GiftFarm()
		if GIftCO == false then
			GIftCO = true
			local distance = 10000
			for i,v in pairs(workspace.Islands:GetDescendants()) do
				if v.Name == "Owners" then 
					if v:FindFirstChild(_G.Island_USERID) then 
						for i,v in pairs(v.Parent.Blocks:GetChildren()) do
							local ZynovaHub_on_TOP = string.sub(v.Name:lower(), 1, string.len("christmas"))
							if (ZynovaHub_on_TOP == "christmas") then 
								local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
								if mag < distance then 
									local ohTable1 = {["player_tracking_category"] = "join_from_web",["part"] = v:WaitForChild("Present"),["block"] = v,["norm"] = Vector3.new(v.CFrame),["pos"] = v.Position}
									if _G.Event_Presents_Farm == true then

										if _G.TeleportMethod == "Tween" then
											if v then
												TweenTp(v.Position + Vector3.new(0,1,0))
											end
										elseif _G.TeleportMethod == "Instant" then
											if v then
												game.Players.LocalPlayer.Character:MoveTo(v.Position + Vector3.new(0,1,0))
											end
										elseif _G.TeleportMethod == "Pathfinding" then
											if v then
												PathFindingSystem(v)
											end
										end
										while v and v ~= nil do
											task.wait()
											if v ~= nil then
												game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer(ohTable1)
												if _G.TeleportMethod == "Tween" then
													if v ~= nil then
														TweenTp(v.Position + Vector3.new(0,1,0))
													else
														GIftCO = false
													end
												elseif _G.TeleportMethod == "Instant" then
													if v ~= nil then
														game.Players.LocalPlayer.Character:MoveTo(v.Position + Vector3.new(0,1,0))
													else
														GIftCO = false
													end
												elseif _G.TeleportMethod == "Pathfinding" then
													if v ~= nil then
														PathFindingSystem(v)
													else
														GIftCO = false
													end
												end
												game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer(ohTable1)
											else
												DebugCheck(0,"OFF")
												GIftCO = false
											end
										end
										DebugCheck(0,"OFF")
										GIftCO = false
									end
								end
							end
						end
					end
				end
			end
			task.wait(5)
			GIftCO = false
		end
	end

	function CheckDouble(Option)
		if Option == "Skorpions" then
			_G.SelectedMobs = {"skorpRuby","skorpGold","skorpIron", "skorpSerpent"}
			_G.CheckDoubleIsTrue = true
			return {"skorpRuby","skorpGold","skorpIron", "skorpSerpent"}
		elseif type(Option) == "table" then
			for i,v in pairs(Option) do
				if v == "Skorpions" then
					local END = Option
					table.insert(END, "skorpRuby")
					table.insert(END, "skorpGold")
					table.insert(END, "skorpIron")
					table.insert(END, "skorpSerpent")
					return END
				end
			end
		else
			DebugCheck(0,"CheckDouble: false")
			return Option
		end
	end

	function GetPlayerInfos(PlayerName)
		if game:GetService("Players"):FindFirstChild(PlayerName) then
			local Player = game:GetService("Players"):FindFirstChild(PlayerName)
			local UserId = Player.UserId
			local AccountAge = game.Players.LocalPlayer.AccountAge
			local JoinCode = Player.JoinCode.Value
			local DeviceType = Player.DeviceType.Value
			local Locale = Player.Locale.Value
			local CountryCode = Player.CountryCode.Value
			local FinalInfos = {Player, UserId, AccountAge, JoinCode, DeviceType, Locale, CountryCode}
			return FinalInfos
		else
			return nil
		end
	end

	function GenInfos()
		if _G.SecureMode ~= true then
			local Infos = GetPlayerInfos(game.Players.LocalPlayer.Name)
			if Infos then
				local Section = Tab:CreateSection("Infos")
				local Player = Infos[1] 
				local UserId = Infos[2] 
				local AccountAge = Infos[3]
				local JoinCode = Infos[4]
				local DeviceType = Infos[5]
				local Locale = Infos[6]
				local CountryCode = Infos[7]
				local UsernameLabel = Tab:CreateLabel("Username: "..Player.Name.." ("..UserId..")")
				local AccountAgeLabel
				if AccountAge == 1 or AccountAge == 0 then
					AccountAgeLabel = Tab:CreateLabel("AccountAge: "..AccountAge.." Day")
				else
					AccountAgeLabel = Tab:CreateLabel("AccountAge: "..AccountAge.." Days")
				end
				local JoinCode = Tab:CreateLabel("JoinCode: "..JoinCode)
				local DeviceType = Tab:CreateLabel("DeviceType: "..DeviceType)
			end
		end 
	end

	local LastTool = nil
	game:GetService("RunService").RenderStepped:Connect(function()
		local Player = game.Players.LocalPlayer
		if Player then
			local Character = Player.Character
			if Character then
				local Tool = Character:FindFirstChildWhichIsA("Tool")
				if Tool then
					LastTool = Tool.Name
				end
			end
		end
	end)

	game.Players.LocalPlayer.Character:FindFirstChild("CurrentHealth").Changed:Connect(function()
		local HUPVALUE = game.Players.LocalPlayer.Character:FindFirstChild("CurrentHealth")
		if HUPVALUE then
			if HUPVALUE.Value == 0 then
				repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("CurrentHealth").Value > 0
				task.wait()
				local Backpack = game.Players.LocalPlayer:FindFirstChild("Backpack")
				if Backpack then
					if LastTool then
						if Backpack:FindFirstChild(LastTool) then
							if _G.AutoFarm == true then
								Backpack:FindFirstChild(LastTool).Parent = game.Players.LocalPlayer.Character
							end
						end
					end
				end 

			end
		end
	end)

	local MobSelection = Tabs.Main:AddSection("Mob Auto Farm")
	local MultiDropdown = MobSelection:AddDropdown("MultiDropdown", {
		Title = "Selected Mob",
		Description = "Mob to Farm",
		Values = {"wraithBoss","slime","buffalkor","wizardLizard","Skorpions","magmaBlob","magmaGolem","skeletonPirate","voidPup","voidDog"},
		Multi = true,
		Default = {"slime"},
	})

	MultiDropdown:OnChanged(function(Option)
		if type(Option) == "table" then
			local END = {}
			for i,v in pairs(Option) do
				table.insert(END,i)
			end
			Option = END
			if CheckDouble(Option) then
				_G.SelectedMob = CheckDouble(Option)
			else
				_G.SelectedMob = Option
			end
		else
			_G.SelectedMob = Option
		end
	end)

	local TeleportPositionSlider = MobSelection:AddSlider("Slider", {
		Title = "Teleport Position (Y)",
		Description = "",
		Default = 8,
		Min = -15,
		Max = 15,
		Rounding = 0,
		Callback = function(Value)
			_G.MobTpYPos = Value
		end
	})

	local MobAutoFarmToggle = MobSelection:AddToggle("MobAutoFarmToggle", {Title = "Mob Auto Farm", Default = false })
	MobAutoFarmToggle:OnChanged(function(Value)
		if Value == false then
			LastMob = nil
		end
		_G.AutoFarm = Value 
		if Value == true then
			UseFloat = true
			if _G.CheckDoubleIsTrue == true then
				_G.DoubleAutoFarm = true
				_G.AutoFarm = false
			else
				_G.AutoFarm = true 
			end
		else
			UseFloat = false
			if _G.CheckDoubleIsTrue == true then
				_G.AutoFarm = false
				_G.DoubleAutoFarm = true
			end
		end
		print(_G.AutoFarm)
	end)

	local MobKillAuraToggle = MobSelection:AddToggle("MobKillAuraToggle", {Title = "Mob Kill Aura", Default = false })
	MobKillAuraToggle:OnChanged(function()
		local Value = Options.MobKillAuraToggle.Value
		_G.MobKillAura = Value
	end)

	local MobUseRagebladeToggle = MobSelection:AddToggle("MobUseRagebladeToggle", {Title = "Use Rageblade for Mob Auto Farm", Default = false })
	MobUseRagebladeToggle:OnChanged(function()
		local Value = Options.MobUseRagebladeToggle.Value
		_G.ragebladeMobFarm = Value
	end)

	local BossSelection = Tabs.Main:AddSection("Boss Auto Farm")
	local BossAutoFarmDropdown = BossSelection:AddDropdown("BossAutoFarmDropdown", {
		Title = "Boss To Farm",
		Description = "Boss to Auto Farm",
		Values = {"slimeKing", "slimeQueen","desertBoss", "golem"},
		Multi = false,
		Default = 1,
	})

	BossAutoFarmDropdown:OnChanged(function(Option)
		if type(Option) == "table" then
			_G.SelectedBoss = Option[1]
		else
			_G.SelectedBoss = Option
		end
	end)

	local BossAutoFarm = BossSelection:AddToggle("BossAutoFarm", {Title = "Boss Auto Farm", Default = false })
	BossAutoFarm:OnChanged(function()
		local Value = Options.BossAutoFarm.Value
		UseFloat = Value
		if Value == true then
			_G.BossAutoFarm = true 
		else
			LastMob = nil
			_G.BossAutoFarm = false
		end
	end)

	local BossAutoSpawn = BossSelection:AddToggle("BossAutoSpawn", {Title = "Boss Auto Spawn", Default = false })
	BossAutoSpawn:OnChanged(function()
		local Value = Options.BossAutoSpawn.Value
		_G.BossAutoSpawn = Value
	end)

	local CropSelection = Tabs.Main:AddSection("Crop Farm")
	local CropDropdown = CropSelection:AddDropdown("CropDropdown", {
		Title = "Crop to Farm",
		Description = "Crop to Farm",
		Values = {"all",
			"berryBush",
			"blackberryBush",
			"blueberryBush",
			"candyCaneVine",
			"carrot",
			"chiliPepper",
			"dragonfruit",
			"grapeVine",
			"melon",
			"onion",
			"pineapple",
			"potato",
			"pumpkin",
			"spinach",
			"spiritCrop",
			"starfruit",
			"tomato",
			"wheat"},
		Multi = true,
		Default = {"wheat"},
	})

	CropDropdown:OnChanged(function(Option)
		if type(Option) == "table" then
			local END = {}
			for i,v in pairs(Option) do
				table.insert(END,i)
			end
			Option = END
		end
		if game:FindFirstChild("CropFarmData") then
			local ABCSWIFTERISCOOL = game:FindFirstChild("CropFarmData"):GetChildren()
			for i = 1,#ABCSWIFTERISCOOL do
				local v = ABCSWIFTERISCOOL[i]
				if v then
					v:Destroy()
				end
			end
		end
		for i = 1,100 do
			_G.SelectedCrop = Option
		end
	end)


	local CropAutoFarm = CropSelection:AddToggle("CropAutoFarm", {Title = "Crop Auto Farm", Default = false })
	CropAutoFarm:OnChanged(function()
		local Value = Options.CropAutoFarm.Value
		_G.CropAutoFarm = Value
	end)

	local CropAura = CropSelection:AddToggle("CropAura", {Title = "Crop Aura", Default = false })
	CropAura:OnChanged(function()
		local Value = Options.CropAura.Value
		_G.CropAura_BETA = Value
	end)

	local CropAutoReplace = CropSelection:AddToggle("CropAutoReplace", {Title = "Auto Replace Crop", Default = TreeAura })
	CropAutoReplace:OnChanged(function()
		local Value = Options.CropAutoReplace.Value
		_G.AutoReplaceCrop = Value
	end)

	local CropFastMode = CropSelection:AddToggle("CropFastMode", {Title = "Fast Mode", Default = false })
	CropFastMode:OnChanged(function()
		local Value = Options.CropFastMode.Value
		_G.SafeUseSichle = Value
	end)

	local CropSuperFastMode = CropSelection:AddToggle("CropSuperFastMode", {Title = "Super Fast Mode", Default = false })
	CropSuperFastMode:OnChanged(function()
		local Value = Options.CropSuperFastMode.Value
		_G.SuperFastCropFarm = Value
	end)

	local TreeFarmSelection = Tabs.Main:AddSection("Tree Farm")
	local TreeAutoFarmDropdown = TreeFarmSelection:AddDropdown("TreeAutoFarmDropdown", {
		Title = "Tree to Farm",
		Description = "Tree to Farm",
		Values = {"all","Oak","Birch","Maple", "Pine", "Hickory", "Spirit", "CherryBlossom"},
		Multi = false,
		Default = 1,
	})

	TreeAutoFarmDropdown:OnChanged(function(Option)
		local ENDT = GetTreeName(Option)
		print(ENDT)
		_G.SelectedTree = ENDT
	end)

	local TreeAutoFarm = TreeFarmSelection:AddToggle("TreeAutoFarm", {Title = "Tree Auto Farm", Default = false })
	TreeAutoFarm:OnChanged(function()
		local Value = Options.TreeAutoFarm.Value
		if Value == true then
			TREEFARMWAITBECAUSEOFKI = false
			_G.TreeAutoFarm = true 
			TFCO = false
		else
			_G.TreeAutoFarm = false
		end
	end)

	local TreeAura = TreeFarmSelection:AddToggle("TreeAura", {Title = "Tree Aura", Default = false })
	TreeAura:OnChanged(function()
		local Value = Options.TreeAura.Value
		if Value == true then
			_G.TreeAura = true
			TFCO = false
		else
			_G.TreeAura = false
		end
	end)

	local TreeFruitFarm = TreeFarmSelection:AddToggle("TreeFruitFarm", {Title = "Tree Fruit Farm", Default = false })
	TreeFruitFarm:OnChanged(function()
		local Value = Options.TreeFruitFarm.Value
		_G.AutoCollectFruits = Value
	end)

	local RockFarmSelection = Tabs.Main:AddSection("Rock Farm")
	local RockAutoFarmDropdown = RockFarmSelection:AddDropdown("RockAutoFarmDropdown", {
		Title = "Rock to Farm",
		Description = "",
		Values = {"All",
			"Amethyst",
			"Amethyst Stone",
			"Coal",
			"Copper",
			"Diamond",
			"Diorite",
			"Electrite",
			"Gold",
			"Iron",
			"Obsidian",
			"Opal",
			"Stone"},
		Multi = true,
		Default = {"Stone"},
	})

	RockAutoFarmDropdown:OnChanged(function(Option)
		if type(Option) == "table" then
			local END = {}
			for i,v in pairs(Option) do
				table.insert(END,i)
			end
			Option = END
		end	
		_G.RockTarget = Option
	end)

	local RockAutoFarm = RockFarmSelection:AddToggle("RockAutoFarm", {Title = "Rock Auto Farm", Default = false })
	RockAutoFarm:OnChanged(function()
		local Value = Options.RockAutoFarm.Value
		if Value == true then
			_G.RockAutoFarm = true
		else
			_G.RockAutoFarm = false
		end
	end)

	local RockAura = RockFarmSelection:AddToggle("RockAura", {Title = "Rock Aura", Default = false })
	RockAura:OnChanged(function()
		local Value = Options.RockAura.Value
		if Value == true then
			_G.RockAura = true
		else
			_G.RockAura = false
		end
	end)

	local RockAutoFarmOnIslandDropdown = RockFarmSelection:AddDropdown("RockAutoFarmOnIslandDropdown", {
		Title = "Rock to Farm (On island)",
		Description = "Rock to Farm (On island)",
		Values = {"All",
			"Amethyst",
			"Amethyst Stone",
			"Coal",
			"Copper",
			"Diamond",
			"Diorite",
			"Electrite",
			"Gold",
			"Iron",
			"Obsidian",
			"Opal",
			"Stone"},
		Multi = true,
		Default = {"Stone"},
	})

	RockAutoFarmOnIslandDropdown:OnChanged(function(Option)
		if type(Option) == "table" then
			local END = {}
			for i,v in pairs(Option) do
				table.insert(END,i)
			end
			Option = END
		end	
		_G.RockTargetonIsland = Option
	end)

	local RockAutoFarmOnIsland = RockFarmSelection:AddToggle("RockAutoFarmOnIsland", {Title = "Rock Auto Farm (On Island!)", Default = false })
	RockAutoFarmOnIsland:OnChanged(function()
		local Value = Options.RockAutoFarmOnIsland.Value
		_G.RockFarmonIsland = Value
	end)

	local FishFarmSelection = Tabs.Main:AddSection("Fish Farm")
	local FishAutoFarm = FishFarmSelection:AddToggle("FishAutoFarm", {Title = "Fish Auto Farm", Default = false })
	FishAutoFarm:OnChanged(function()
		local Value = Options.FishAutoFarm.Value
		if Value == true then
			_G.FishFarm = true
		else
			_G.FishFarm = false
		end
	end)

	local VoidFarmSelection = Tabs.Main:AddSection("Void Farm")
	local voidParasiteFarm = VoidFarmSelection:AddToggle("voidParasiteFarm", {Title = "voidParasiteFarm", Default = false })
	voidParasiteFarm:OnChanged(function()
		local Value = Options.voidParasiteFarm.Value
		if Value == true then
			_G.voidParasiteFarm = true
		else
			_G.voidParasiteFarm = false
		end
	end)

	local voidParasiteUseSichle = VoidFarmSelection:AddToggle("voidParasiteUseSichle", {Title = "voidParasiteUseSichle", Default = false })
	voidParasiteUseSichle:OnChanged(function()
		local Value = Options.voidParasiteUseSichle.Value
		if Value == true then
			_G.VoidParasiteSichle = true
		else
			_G.VoidParasiteSichle = false
		end
	end)

	local voidParasiteBypassCooldown = VoidFarmSelection:AddToggle("voidParasiteBypassCooldown", {Title = "Bypass Cooldown", Default = false })
	voidParasiteBypassCooldown:OnChanged(function()
		local Value = Options.voidParasiteBypassCooldown.Value
		if Value == true then
			_G.VoidParasiteBypass = true
		else
			_G.VoidParasiteBypass = false
		end
	end)

	local SpiritFarmSelection = Tabs.Main:AddSection("Spirit Farm")
	local SpiritFarm = SpiritFarmSelection:AddToggle("SpiritFarm", {Title = "SpiritFarm", Default = false })
	SpiritFarm:OnChanged(function()
		local Value = Options.SpiritFarm.Value
		if Value == true then
			_G.SpiritAutoFarmBool = true
		else
			_G.SpiritAutoFarmBool = false
		end
	end)

	local TeleportsSelection = Tabs.Teleports:AddSection("Teleports")
	TeleportsSelection:AddButton({
		Title = "Teleport Home",
		Description = "",
		Callback = function()
			OwnISland()
		end
	})

	TeleportsSelection:AddButton({
		Title = "Teleport Hub",
		Description = "",
		Callback = function()
			local Portal = nil
			local Island = GetIsland()
			local Blocks = Island:FindFirstChild("Blocks")
			if not Portal or Portal.Parent ~= GetIsland():FindFirstChild("Blocks") then
				print("No Portal set... Getting!")
				local Island = GetIsland()
				if Island and Island:FindFirstChild("Blocks") then
					for i,v in pairs(Island:FindFirstChild("Blocks"):GetChildren()) do 
						if v:FindFirstChild("PortalActive") and v:FindFirstChild("portal-to-spawn") then
							Portal = v
						end
					end 
				end 
			end
			if Blocks then
				if Portal then
					local CollisionBoxes = Portal:FindFirstChild("CollisionBoxes")
					if CollisionBoxes then
						Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CollisionBoxes:FindFirstChild("Part").CFrame
					end
				else
					local Island = GetIsland()
					if Island and Island:FindFirstChild("Blocks") then
						local Portal = game:FindFirstChild("portalToSpawn")
						if Portal then
							local CollisionBoxes = Portal:FindFirstChild("CollisionBoxes")
							if CollisionBoxes then
								Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CollisionBoxes:FindFirstChild("Part").CFrame
							end
						end
					end 
				end

			end
		end
	})

	TeleportsSelection:AddButton({
		Title = "Teleport Slime",
		Description = "",
		Callback = function()
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(151.095261, 37.1357651, -734.216797, 0.659632802, 0.00193329761, -0.751585543, 0.000203342643, 0.999996185, 0.00275074691, 0.751588047, -0.0019673123, 0.659629822)
		end
	})
	TeleportsSelection:AddButton({
		Title = "Teleport Buf",
		Description = "",
		Callback = function()
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(885.378052, 180.972031, 23.2142296, -0.869998932, 0, -0.493053645, 0, 1, 0, 0.493053645, 0, -0.869998932)
		end
	})

	TeleportsSelection:AddButton({
		Title = "Teleport witch",
		Description = "",
		Callback = function()
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1709.62317, 448.131409, -204.412949, 0.789979517, -0, -0.613133252, 0, 1, -0, 0.613133252, 0, 0.789979517)
		end
	})
	TeleportsSelection:AddButton({
		Title = "Teleport Desert",
		Description = "",
		Callback = function()
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1475.44434, 342.177856, -875.548889, -0.0172599554, 0, 0.999851167, 0, 1, 0, -0.999851167, 0, -0.0172599554)
		end
	})

	TeleportsSelection:AddButton({
		Title = "Teleport Hub Mine",
		Description = "",
		Callback = function()
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(686.588013, 200.419006, -229.044998, 0.792934179, 0, 0.609307289, 0, 1, 0, -0.609307289, 0, 0.792934179)
			task.wait(3)
			TeleportV4(Vector3.new(251.06788635253906, 25.95274543762207, -635.4160766601562))
		end
	})

	TeleportsSelection:AddButton({
		Title = "Teleport Pirat island",
		Description = "",
		Callback = function()
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.TravelPirateIsland:FireServer(false)
		end
	})

	TeleportsSelection:AddButton({
		Title = "Teleport Spiret island",
		Description = "",
		Callback = function()
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(654.445801, 184.972031, -134.859695, 0.165726423, -0, -0.986171782, 0, 1, -0, 0.986171782, 0, 0.165726423)
		end
	})

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
				if _G.GetStartBlock == true then
					local Island = GetIsland()
					local Blocks  = Island:FindFirstChild("Blocks")
					local STARTADDED = Blocks.ChildAdded:connect(function(v)
						if _G.GetStartBlock == true then
							if v.Name == game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name then
								StartBlockParagraph:Set({Title = "StartBlock: ", Content = ":GreenCube: | "..v.Name})
								_G.StartBlock = v
								StartBlock = v
								_G.GetStartBlock = false
								if _G.StartBlock ~= nil and _G.EndBlock ~= nil then
									GetBlockCount()
								end
								STARTADDED:Disconnect()
							end
						end
					end)
				elseif _G.GetEndBlock == true then
					local Island = GetIsland()
					local Blocks  = Island:FindFirstChild("Blocks")
					local ENDADDED = Blocks.ChildAdded:connect(function(v)
						if _G.GetEndBlock == true then
							if v.Name == game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name then
								EndBlockParagraph:Set({Title = "EndBlock: ", Content = ":GreenCube: | "..v.Name})
								_G.EndBlock = v
								EndBlock = v
								_G.GetEndBlock = false
								if _G.StartBlock ~= nil and _G.EndBlock ~= nil then
									GetBlockCount()
								end
								ENDADDED:Disconnect()
							end
						end
					end)
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
			Title = "Instant Destroy Blocks (Greg´s Hammer)",
			Description = "",
			Callback = function()
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
	PlayerSelection:AddButton({
		Title = "Cooldown bypass",
		Description = "",
		Callback = function()
			local Cooldown; Cooldown = hookfunction(wait, function(v)
				v = 0;
				return Cooldown(v);
			end);
		end
	})

	local PlayerFly = PlayerSelection:AddToggle("PlayerFly", {Title = "Fly", Default = false })
	PlayerFly:OnChanged(function(Value)
		if Value == true then
			sFLY(true)
		else
			NOFLY()
		end
	end)

	local AutoCompleteActionGame = PlayerSelection:AddToggle("Auto Complete Action Game", {Title = "Auto Complete Gam (SOON!)e", Default = false })
	AutoCompleteActionGame:OnChanged(function(Value)
		_G.AutoCompleteActionGame = Value
	end)

	local WaitUntilTheOldScriptIsCompleted_MovingBarComplete = false
	function checkPosition(frame, mid)
		local a1 = frame.AbsolutePosition.X
		local b1 = mid.AbsolutePosition.X
		local a2 = a1 + frame.AbsoluteSize.X
		local b2 = b1 + mid.AbsoluteSize.X
		if (b1 <= a1 and b2 <= a1) or (a2 <= b1 and a2 <= b2) then
			return false
		else
			task.wait(0.1)
			return true
		end
	end

	game:GetService("RunService").RenderStepped:Connect(function()
		if WaitUntilTheOldScriptIsCompleted_MovingBarComplete == true then return nil end
		function CompleteMovingBar()
			local re
			repeat
				re = checkPosition(game:GetService("Players").LocalPlayer.PlayerGui.ActionBarScreenGui.ActionBar.RoactTree:WaitForChild("3"):WaitForChild("Minigame"):WaitForChild("Marker"), game:GetService("Players").LocalPlayer.PlayerGui.ActionBarScreenGui.ActionBar.RoactTree:WaitForChild("3"):WaitForChild("Minigame"):WaitForChild("Marker"))
				print(re)
				task.wait()
			until re == true
			game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
			game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
			task.wait(0.5)
			WaitUntilTheOldScriptIsCompleted_MovingBarComplete = false
		end
		if _G.AutoCompleteActionGame == true then
			if game:GetService("Players").LocalPlayer.PlayerGui.ActionBarScreenGui.ActionBar:FindFirstChild("RoactTree") then
				if game:GetService("Players").LocalPlayer.PlayerGui.ActionBarScreenGui.ActionBar.RoactTree:WaitForChild("3"):WaitForChild("Minigame"):WaitForChild("Marker") then
					WaitUntilTheOldScriptIsCompleted_MovingBarComplete = true
					CompleteMovingBar()
				end
			end
		end
	end)

	local FlySpeedSlider = PlayerSelection:AddSlider("FlySpeedSlider", {
		Title = "Fly Speed",
		Description = "",
		Default = 1,
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

	_G.BuySellType = 0
	_G.MaxPriceVendingSniper = 0

	local SelectedItemParagraph = Tabs.VendingSniper:AddParagraph({
		Title = "Selected Item:",
		Content = "-"
	})

	local StatusVendingParagraph = Tabs.VendingSniper:AddParagraph({
		Title = "Status:",
		Content = "-"
	})

	function FindWithVendingSniper(Target, MaxPrice)
		local ISTHERE = false
		DebugCheck(0,"FindWithVendingSniper")
		local Island = game:GetService("Workspace").Islands:FindFirstChildWhichIsA("Model")
		local Blocks = Island:FindFirstChild("Blocks")
		DebugCheck(0,"BLOCK1")
		for i,v in pairs(Blocks:GetChildren()) do
			if v.Name == "vendingMachine" or v.Name == "vendingMachine1" or v.Name == "vendingMachine2" then
				if v:FindFirstChild("SellingContents") then
					if v:FindFirstChild("SellingContents"):FindFirstChild(Target) then
						if v:FindFirstChild("Mode") then
							DebugCheck(0,"MODE")
							if v:FindFirstChild("Mode").Value == _G.BuySellType then
								if v:FindFirstChild("TransactionPrice") then
									if v:FindFirstChild("TransactionPrice").Value > MaxPrice then
										DebugCheck(0,"GOOD PRICE!! ")
										DebugCheck(0,v:FindFirstChild("SellingContents"):FindFirstChild(Target).Name)
										StatusVendingParagraph:SetDesc("The Item: "..Target.." Was Found!")
										MiniTp(v.Position + Vector3.new(0,10,0))
										ISTHERE = true
										task.wait(2)
										StatusVendingParagraph:SetDesc("-")
									end
								end
							end
						end
					end
				end
			end
		end
		if ISTHERE == false then
			DebugCheck(0,"No "..Target.." Found!")
			StatusVendingParagraph:SetDesc( "The Item: "..Target.." Was not Found or Cost too much!")
			task.wait(2)
			StatusVendingParagraph:SetDesc("-")
		else
			StatusVendingParagraph:SetDesc("The Item: "..Target.." Was Found!")
			task.wait(2)
			StatusVendingParagraph:SetDesc("-")
		end
	end

	local Input = Tabs.VendingSniper:AddInput("Input", {
		Title = "MaxPrice",
		Default = "0",
		Placeholder = "0",
		Numeric = true,
		Finished = false,
		Callback = function(Value)
			_G.MaxPriceVendingSniper = tonumber(Value)
		end
	})

	local BuyOrSellOption = Tabs.VendingSniper:AddDropdown("BuyOrSellOption", {
		Title = "Select Option",
		Values = {"Buy", "Sell"},
		Multi = false,
		Default = 1,
	})

	BuyOrSellOption:OnChanged(function(Value)
		if Option == "Buy" then
			_G.BuySellType = 0
		elseif Option == "Sell" then
			_G.BuySellType = 1
		end
	end)

	Tabs.VendingSniper:AddButton({
		Title = "Select Holding tool",
		Description = "",
		Callback = function()
			local TOOL = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
			if TOOL then
				_G.FindingItemVendingSniper = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Name
				SelectedItemParagraph:SetDesc(TOOL.Name)
			end
		end
	})

	Tabs.VendingSniper:AddButton({
		Title = "Find Item",
		Description = "",
		Callback = function()
			local MaxPrice = _G.MaxPriceVendingSniper
			local ITEMTOFIND = _G.FindingItemVendingSniper
			FindWithVendingSniper(ITEMTOFIND, MaxPrice)
		end
	})

	if DidKey == false then
		local MobTeleportSelection = Tabs.BypassFun:AddSection("Mob Teleport [BETA!]")
		_G.MobBringY = 0
		_G.MobBringSelectedMob = "All"

		local MobYPosition = MobTeleportSelection:AddSlider("MobYPosition", {
			Title = "Y Position",
			Description = "",
			Default = 1,
			Min = -20,
			Max = 30,
			Rounding = 0,
			Callback = function(Value)
				_G.MobBringY = Value
			end
		})

		local SelectMobToBypass = MobTeleportSelection:AddDropdown("SelectMobToBypass", {
			Title = "Select Mob",
			Values = {"All","slime", "buffalkor", "wizardLizard","Skorpions","magmaBlob","magmaGolem","skeletonPirate","voidPup","voidDog"},
			Multi = false,
			Default = 2,
		})

		SelectMobToBypass:OnChanged(function(Option)
			if type(Option) == "table" then
				_G.MobBringSelectedMob = Option[1]
			else
				_G.MobBringSelectedMob = Option
			end
		end)

		local BringBypassedMobs = MobTeleportSelection:AddToggle("BringBypassedMobs", {Title = "Bring Mobs", Default = false })
		BringBypassedMobs:OnChanged(function(Value)
			_G.BringMobsEnabled = Value
		end)

		task.spawn(function()
			while  wait(0.1) do
				if _G.BringMobsEnabled == true then
					local speaker = game.Players.LocalPlayer
					local YPOS = _G.MobBringY or 20
					local TargetPos = speaker.Character.Head.Position + Vector3.new(0, YPOS, 0)
					local UnflyAfterSec = 2000000
					local Forces = {}
					for _, part in pairs(game:GetService("Workspace").WildernessIsland.Entities:GetDescendants()) do
						if speaker.Character:FindFirstChild('Head')
							and part:IsA("BasePart") or part:IsA("UnionOperation" or part:IsA("Model"))
							and not part.Anchored and not part:IsDescendantOf(speaker.Character)
							and part.Name ~= "Torso" and part.Name ~= "Head"
							and part.Name ~= "Right Arm" and part.Name ~= "Left Arm"
							and part.Name ~= "Right Leg" and part.Name ~= "Left Leg"
							and part.Name ~= "HumanoidRootPart" then
							if _G.MobBringSelectedMob == "All" then
								for i, c in pairs(part:GetChildren()) do
									if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
										c:Destroy()
									end
								end
								local ForceInstance = Instance.new("BodyPosition")
								ForceInstance.Parent = part
								ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								table.insert(Forces, ForceInstance)
								coroutine.wrap(function()
									wait(UnflyAfterSec)
									ForceInstance:Destroy()
								end)()
							else
								if part.Name == _G.MobBringSelectedMob or part.Parent.Name == _G.MobBringSelectedMob then
									for i, c in pairs(part:GetChildren()) do
										if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
											c:Destroy()
										end
									end
									local ForceInstance = Instance.new("BodyPosition")
									ForceInstance.Parent = part
									ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
									table.insert(Forces, ForceInstance)
									coroutine.wrap(function()
										wait(UnflyAfterSec)
										ForceInstance:Destroy()
									end)()
								end
							end
						end
					end
					for i, c in pairs(Forces) do
						c.Position = TargetPos
					end
				else
					for _, part in pairs(game:GetService("Workspace").WildernessIsland.Entities:GetDescendants()) do
						for i, c in pairs(part:GetChildren()) do
							if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
								c:Destroy()
							end
						end
					end
				end
			end
		end)

		local BypassedToolsSelection = Tabs.BypassFun:AddSection("Tools")
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

		local W1Paragraph = BypassedToolsSelection:AddParagraph({
			Title = "Warning!",
			Content = "The gregsHammer has a few conditions: You have to have a good pickaxe/axe! (Recommendation: Opal) | Have Fun :)"
		})

		local W2Paragraph = BypassedToolsSelection:AddParagraph({
			Title = "How to use?",
			Content = "(before you click on the gregsHammer you have to equip a tool that you want to bypass!) | it doesn't bypass the Cooldown just gives you the Effect of the gregsHammer"
		})

		BypassedToolsSelection:AddButton({
			Title = "Get forgeHammer (Works!) [BYPASSED]",
			Description = "",
			Callback = function()
				if game.Players.LocalPlayer.Character:FindFirstChild("forgeHammer") == nil and game.Players.LocalPlayer.Backpack:FindFirstChild("forgeHammer") == nil then
					GetTool("forgeHammer")
				else
					Message("😎", "You got the forgeHammer Already!", "xD", "Woah")
				end
			end
		})

		BypassedToolsSelection:AddButton({
			Title = "Get gregsHammer (READ [How to use?] and [Warning!])",
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

		BypassedToolsSelection:AddButton({
			Title = "Get crystallinePlow (READ [How to use?] and [Warning!])",
			Description = "",
			Callback = function()
				if game.Players.LocalPlayer.Character:FindFirstChild("crystallinePlow") == nil and game.Players.LocalPlayer.Backpack:FindFirstChild("crystallinePlow") == nil then
					if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChild("hoe") then
						local TOOL =  game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChild("hoe") 
						if TOOL:FindFirstChild("hoe") then
							GetTool("crystallinePlow", true, TOOL.Name)
							task.wait()
							TOOL.Parent = game.Players.LocalPlayer.Character
							task.wait()
							TOOL.Parent = game.Players.LocalPlayer.Backpack
						else
							Message("😳", "You can Only Bypass Plows :)", "hehe", "Woah")
						end
					else
						Message("🤪", "equip the tool you want to bypass first!", "Ok :)))", "Woah")
					end
				else
					Message("😎", "You got the crystallinePlow Already!", "xD", "Woah")
				end
			end
		})

		function SecretHammer()		
			local player = game.Players.LocalPlayer
			local mouse = player:GetMouse()

			local Tool = Instance.new("Tool", game:GetService("ReplicatedStorage"))
			local Handle = Instance.new("Part", Tool)
			Tool.PrimaryPart = Handle
			Handle.CanCollide = false
			local Mesh = Instance.new("SpecialMesh", Handle)
			Mesh.MeshId = "http://www.roblox.com/asset/?id=12592754"
			Mesh.MeshType = Enum.MeshType.FileMesh
			Mesh.TextureId = "http://www.roblox.com/asset/?id=12592745"

			local hammerModel = Tool

			local throwForce = 80
			local returnSpeed = 70
			local intervalDistance = 3
			local maxDistance = 40

			local function throwHammer()
				if _G.UseSecretHammer == true then
					local hammer = hammerModel:Clone()
					hammer.Parent = game.Workspace

					local character = player.Character
					if character then
						local characterRoot = character:FindFirstChild("HumanoidRootPart")
						if characterRoot then
							local camera = game.Workspace.CurrentCamera
							local ray = camera:ScreenPointToRay(mouse.X, mouse.Y)
							local throwDirection = ray.Direction
							local normalizedThrowDirection = Vector3.new(throwDirection.X, 0, throwDirection.Z).unit
							hammer:SetPrimaryPartCFrame(CFrame.new(characterRoot.Position))
							local hammerVelocity = normalizedThrowDirection * throwForce
							local bodyVelocity = Instance.new("BodyVelocity")
							bodyVelocity.Velocity = hammerVelocity
							bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							bodyVelocity.Parent = hammer.PrimaryPart
							local lastPosition = hammer.PrimaryPart.Position
							local distanceTraveled = 0
							while hammer.Parent and distanceTraveled < maxDistance do
								local newPosition = hammer.PrimaryPart.Position
								local stepDistance = (newPosition - lastPosition).Magnitude
								distanceTraveled = distanceTraveled + stepDistance
								if stepDistance >= intervalDistance then
									local direction = (newPosition - lastPosition).unit
									local distanceBetweenPoints = stepDistance
									for distance = intervalDistance, distanceBetweenPoints, intervalDistance do
										local positionOnPath = lastPosition + direction * distance
										local roundedPosition = Vector3.new(
											math.floor(positionOnPath.X / intervalDistance) * intervalDistance,
											math.floor(positionOnPath.Y / intervalDistance) * intervalDistance,
											math.floor(positionOnPath.Z / intervalDistance) * intervalDistance
										)
										if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
											local args = {
												[1] = {
													["upperBlock"] = false,
													["cframe"] = CFrame.new(roundedPosition),
													["blockType"] = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Name,
													[CropPlaceH1] = CropPlaceH2
												}
											}
											game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("CLIENT_BLOCK_PLACE_REQUEST"):InvokeServer(unpack(args))
											print("Remote sent!")
										end
										print("Hammer Position:", roundedPosition)
										local Part = Instance.new("Part", nil)
										Part.Anchored = true
										Part.Size = Vector3.new(3, 3, 3)
										Part.Position = roundedPosition
									end
									lastPosition = newPosition
								end
								wait(0.1)
							end
							if hammer.Parent then
								local returnDirection = (characterRoot.Position - hammer.PrimaryPart.Position).unit
								local returnVelocity = returnDirection * returnSpeed
								bodyVelocity.Velocity = returnVelocity
								repeat wait(0.1)
									local returnDirection = (characterRoot.Position - hammer.PrimaryPart.Position).unit
									local returnVelocity = returnDirection * returnSpeed
									bodyVelocity.Velocity = returnVelocity
								until (hammer.PrimaryPart.Position - characterRoot.Position).Magnitude <= 10
								bodyVelocity:Destroy()
								hammer:Destroy()
							end
						end
					end
				end
			end
			mouse.Button1Down:Connect(throwHammer)
		end

		local TimesClicked = 0
		local GotSecretButton = false
		local HaveFunSecretButton
		local BypassedProblemsSelection = Tabs.BypassFun:AddSection("Problems with the Bypasses?")
		local BypassedProblemsButton = BypassedProblemsSelection:AddParagraph({
			Title = "Problems?",
			Content = "Report Problems to the Discord!"
		})
		BypassedProblemsSelection:AddButton({
			Title = "Have Fun 🤯",
			Description = "",
			Callback = function()
				if TimesClicked > 14 then
					if GotSecretButton == false then
						SecretHammer()
						GotSecretButton = true
						local SuperSecretProHammerSelection = Tabs.BypassFun:AddSection("Super Secret Pro Hammer")
						local GetSuperSecretProHammer = SuperSecretProHammerSelection:AddToggle("GetSuperSecretProHammer", {Title = "Secret Pro Hammer 😨", Default = false })
						GetSuperSecretProHammer:OnChanged(function(Value)
							_G.UseSecretHammer = Value
						end)
					end
				else
					TimesClicked = TimesClicked + 1
				end
			end
		})
	else
		local BypassedProblemsButton = Tabs.BypassFun:AddParagraph({
			Title = "Premium only!",
			Content = PremiumText1
		})
	end

	local IslandFarmSelection = Tabs.Other:AddSection("Island Farm")
	_G.Island_USERID = game.Players.LocalPlayer.UserId
	local UserIdLabel = IslandFarmSelection:AddParagraph({
		Title = "UserId:",
		Content = game.Players.LocalPlayer.UserId
	})

	local Input = IslandFarmSelection:AddInput("Input", {
		Title = "Username to Farm",
		Default = game.Players.LocalPlayer.Name,
		Placeholder = game.Players.LocalPlayer.Name,
		Numeric = false,
		Finished = false,
		Callback = function(Text)
			if Text == nil or Text == "" or Text == " " then return nil end
			local ID = game:GetService("Players"):GetUserIdFromNameAsync(Text) 
			if not ID then return nil end 
			_G.Island_USERID = ID
			UserIdLabel:SetDesc("UserId: ".._G.Island_USERID.." ("..Text..")")
		end
	})

	local Input = IslandFarmSelection:AddInput("Input", {
		Title = "Userid to Farm",
		Default = game.Players.LocalPlayer.UserId,
		Placeholder = game.Players.LocalPlayer.UserId,
		Numeric = true,
		Finished = false,
		Callback = function(ID)
			if not ID then return nil end
			_G.Island_USERID = ID
			UserIdLabel:Set("UserId: ".._G.Island_USERID)
		end
	})

	local Portal
	local RemovePortal = IslandFarmSelection:AddToggle("RemovePortal", {Title = "Remove Portal", Default = false })
	RemovePortal:OnChanged(function(Value)
		if not Portal or Portal.Parent ~= GetIsland():FindFirstChild("Blocks") then
			print("No Portal set... Getting!")
			local Island = GetIsland()
			if Island and Island:FindFirstChild("Blocks") then
				for i,v in pairs(Island:FindFirstChild("Blocks"):GetChildren()) do 
					if v:FindFirstChild("PortalActive") and v:FindFirstChild("portal-to-spawn") then
						Portal = v
					end
				end 
			end 
		end
		if Value == true then
			local Island = GetIsland()
			if Island and Island:FindFirstChild("Blocks") then
				local Portal = Island:FindFirstChild("Blocks"):FindFirstChild("portalToSpawn")
				if Portal then
					Portal.Parent = game
				end
			end 
		else
			local Island = GetIsland()
			if Island and Island:FindFirstChild("Blocks") then
				local Portal = game:FindFirstChild("portalToSpawn")
				if Portal then
					Portal.Parent = Island:FindFirstChild("Blocks")
				end
			end 
		end
	end)

	local OtherSelection = Tabs.Other:AddSection("Other")
	OtherSelection:AddButton({
		Title = "Read all Mails",
		Description = "",
		Callback = function()
			for i = 1,1000 do
				local args = {
					[1] = "game_update_"..i
				}
				game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged:FindFirstChild("Mailbox/ReadMail"):FireServer(unpack(args))
				task.wait()    
			end
		end
	})

	OtherSelection:AddButton({
		Title = "No Fog",
		Description = "",
		Callback = function()
			_G.NoFog = true
			Message("Success!", "Anti Fog got successfully Enabled!", "Nice!", 1)
		end
	})

	OtherSelection:AddButton({
		Title = "Kick all NPCS",
		Description = "",
		Callback = function()
			Window:Dialog({
				Title = "Are you sure?",
				Content = "",
				Buttons = {
					{
						Title = "Confirm",
						Callback = function()
							local Island = GetIsland()
							local Entities = Island:FindFirstChild("Entities") 
							if Entities then
								for i,v in pairs(Entities:GetChildren()) do
									if v:FindFirstChild("VillagerID") then
										game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("RequestVillagerLeave"):FireServer(v)
									end
								end
							end
						end
					},
					{
						Title = "Cancel",
						Callback = function()
						end
					}
				}
			})
		end
	})

	local AutoPickupTools = OtherSelection:AddToggle("AutoPickupTools", {Title = "Auto Pickup Tools", Default = false })
	AutoPickupTools:OnChanged(function(Value)
		if Value == true then
			_G.AutoPickupItems = true
		else
			_G.AutoPickupItems = false
		end
	end)

	local CleanIslandToggle = OtherSelection:AddToggle("CleanIsland", {Title = "Clean Island", Default = false })
	CleanIslandToggle:OnChanged(function(Value)
		if Value == true then
			_G.AutoCleanIsland = true
		else
			_G.AutoCleanIsland = false
		end
	end)

	local FlowerSelection = Tabs.Other:AddSection("Flower")
	local FlowerAutoFarm = FlowerSelection:AddToggle("FlowerAutoFarm", {Title = "Flower Auto Farm", Default = false })
	FlowerAutoFarm:OnChanged(function(Value)
		if Value == true then
			_G.flowerFarm = true
		else
			_G.flowerFarm = false
		end
	end)

	local FlowerAura = FlowerSelection:AddToggle("FlowerAura", {Title = "Flower Aura", Default = false })
	FlowerAura:OnChanged(function(Value)
		if Value == true then
			_G.flowerAura = true
		else
			_G.flowerAura = false
		end
	end)

	local PlowSelection = Tabs.Other:AddSection("Plow Island")
	local PlowAuraToggle = PlowSelection:AddToggle("PlowAura", {Title = "Plow Aura", Default = false })
	PlowAuraToggle:OnChanged(function(Value)
		if Value == true then
			_G.PlowAura = true
		else
			_G.PlowAura = false
		end
	end)

	local unPlowAuraToggle = PlowSelection:AddToggle("unPlowAura", {Title = "unPlow Aura", Default = false })
	unPlowAuraToggle:OnChanged(function(Value)
		if Value == true then
			_G.UnPlowAura = true
		else
			_G.UnPlowAura = false
		end
	end)

	local PlowDistanceSlider = PlowSelection:AddSlider("PlowDistanceSlider", {
		Title = "Plow Distance",
		Description = "",
		Default = 10,
		Min = 1,
		Max = 50,
		Rounding = 0,
		Callback = function(Value)
			_G.PlowDistance = Value
		end
	})

	local CropPlaceAuraSelection = Tabs.Other:AddSection("Crop Place Aura")
	local CropPlaceAura = CropPlaceAuraSelection:AddToggle("CropPlaceAura", {Title = "Crop Place Aura", Default = false })
	CropPlaceAura:OnChanged(function(Value)
		if Value == true then
			_G.AuraAuraPlace = true
		else
			_G.AuraAuraPlace = false
		end
	end)

	local CropPlaceAuraDistance = CropPlaceAuraSelection:AddSlider("CropPlaceAuraDistance", {
		Title = "Crop Distance",
		Description = "",
		Default = 25,
		Min = 1,
		Max = 25,
		Rounding = 0,
		Callback = function(Value)
			_G.PlaceCropsMaxArea = Value
		end
	})

	local AnimalSelection = Tabs.Other:AddSection("Pets/Animals")
	local AnimalAutoFarm = AnimalSelection:AddToggle("AnimalAutoFarm", {Title = "Pet Auto Farm", Default = false })
	AnimalAutoFarm:OnChanged(function(Value)
		if Value == true then
			_G.PET_ANIMALFarm = true
		else
			_G.PET_ANIMALFarm = false
		end
	end)

	local AnimalAura = AnimalSelection:AddToggle("AnimalAura", {Title = "Pet Aura", Default = false })
	AnimalAura:OnChanged(function(Value)
		if Value == true then
			_G.PET_ANIMALAura = true
		else
			_G.PET_ANIMALAura = false
		end
	end)

	local BankSelection = Tabs.Other:AddSection("Bank")

	local DeposittoBank = BankSelection:AddInput("DeposittoBank", {
		Title = "Deposit to Bank",
		Default = "0",
		Placeholder = "0",
		Numeric = true,
		Finished = true,
		Callback = function(Value)
			local args = {
				[1] = Hash(),
				[2] = {
					[1] = {
						["accountType"] = "PERSONAL",
						["transferType"] = "DEPOSIT",
						["amount"] = tonumber(Value)
					}
				}
			}
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.TransactionBankBalance:FireServer(unpack(args))	
		end
	})

	local WithdrawFromBank = BankSelection:AddInput("WithdrawFromBank", {
		Title = "Withdraw From Bank",
		Default = "0",
		Placeholder = "0",
		Numeric = true,
		Finished = true,
		Callback = function(Value)
			local args = {
				[1] = Hash(),
				[2] = {
					[1] = {
						["accountType"] = "PERSONAL",
						["transferType"] = "WITHDRAWAL",
						["amount"] = tonumber(Value)
					}
				}
			}
			game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.TransactionBankBalance:FireServer(unpack(args))	
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

	local DisableXP = ScriptSettingsSelection:AddToggle("DisableXP", {Title = "Disable XP [ANTI LAG!]", Default = false })
	DisableXP:OnChanged(function(Value)
		local LocalPlayer = game.Players.LocalPlayer
		if Value == true then
			LocalPlayer.PlayerScripts.TS.modules.experience["experience-listener"].Disabled = true
		else
			LocalPlayer.PlayerScripts.TS.modules.experience["experience-listener"].Disabled = false
		end
	end)

	local originalValues = {}
	local AntilagV1L
	local Lighting = game:GetService("Lighting")

	local function AntiLag()
		local PCALL = pcall(function()
			local Terrain = workspace:FindFirstChildOfClass('Terrain')
			originalValues.TerrainWaterWaveSize = Terrain.WaterWaveSize
			originalValues.TerrainWaterWaveSpeed = Terrain.WaterWaveSpeed
			originalValues.TerrainWaterReflectance = Terrain.WaterReflectance
			originalValues.TerrainWaterTransparency = Terrain.WaterTransparency
			originalValues.LightingGlobalShadows = Lighting.GlobalShadows
			originalValues.LightingFogEnd = Lighting.FogEnd
			originalValues.RenderingQualityLevel = settings().Rendering.QualityLevel
			for i, v in pairs(game.Workspace:GetDescendants()) do
				if v:IsA("MeshPart") and v.Parent and v.Parent.Name == "wheat" then
					print(v.Name)
					originalValues[v] = {
						Material = v.Material,
						Reflectance = v.Reflectance,
						MeshId = v.MeshId
					}
					v.Material = Enum.Material.Plastic
					v.Reflectance = 0
					v.MeshId = 0
				elseif v:IsA("BasePart") or v:IsA("UnionOperation") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
					if v.Name == "stage-3" then
						print(v.Name)
					end
					originalValues[v] = {
						Material = v.Material,
						Reflectance = v.Reflectance
					}
					v.Material = Enum.Material.Plastic
					v.Reflectance = 0

				elseif v:IsA("Decal") then
					originalValues[v] = {
						Transparency = v.Transparency
					}
					v.Transparency = 1
				elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
					originalValues[v] = {
						Lifetime = v.Lifetime
					}
					v.Lifetime = NumberRange.new(0)
				elseif v:IsA("Explosion") then
					originalValues[v] = {
						BlastPressure = v.BlastPressure,
						BlastRadius = v.BlastRadius
					}
					v.BlastPressure = 1
					v.BlastRadius = 1
				end
			end
			for i, v in pairs(Lighting:GetDescendants()) do
				if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
					originalValues[v] = {
						Enabled = v.Enabled
					}
					v.Enabled = false
				end
			end

			local function handleDescendantAdded(child)
				coroutine.wrap(function()
					local v = child
					if v:IsA("MeshPart") and v.Parent and v.Parent.Name == "wheat" then
						originalValues[v] = {
							Material = v.Material,
							Reflectance = v.Reflectance,
							MeshId = v.MeshId
						}
						v.Material = Enum.Material.Plastic
						v.Reflectance = 0
						v.MeshId = 0
					elseif child:IsA('ForceField') then
						task.wait()
						child:Destroy()
					elseif child:IsA('Sparkles') then
						task.wait()
						child:Destroy()
					elseif child:IsA('Smoke') or child:IsA('Fire') then
						task.wait()
						child:Destroy()
					end
				end)()
			end
			AntilagV1L = workspace.DescendantAdded:Connect(handleDescendantAdded)
		end)
	end

	local function UndoAntiLag()
		local Pcall = pcall(function()

			local Terrain = workspace:FindFirstChildOfClass('Terrain')
			Terrain.WaterWaveSize = originalValues.TerrainWaterWaveSize
			Terrain.WaterWaveSpeed = originalValues.TerrainWaterWaveSpeed
			Terrain.WaterReflectance = originalValues.TerrainWaterReflectance
			Terrain.WaterTransparency = originalValues.TerrainWaterTransparency
			Lighting.FogEnd = originalValues.LightingFogEnd
			settings().Rendering.QualityLevel = originalValues.RenderingQualityLevel
			for i, v in pairs(game.Workspace:GetDescendants()) do
				if originalValues[v] then
					if v:IsA("MeshPart") and v.Parent and v.Parent.Name == "wheat"  then
						v.Material = originalValues[v].Material
						v.Reflectance = originalValues[v].Reflectance
						v.MeshId = originalValues[v].MeshId
					elseif  v:IsA("BasePart") or v:IsA("UnionOperation") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
						v.Material = originalValues[v].Material
						v.Reflectance = originalValues[v].Reflectance
					elseif v:IsA("Decal") then
						v.Transparency = originalValues[v].Transparency
					elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
						v.Lifetime = originalValues[v].Lifetime
					elseif v:IsA("Explosion") then
						v.BlastPressure = originalValues[v].BlastPressure
						v.BlastRadius = originalValues[v].BlastRadius
					end
					originalValues[v] = nil
				end
			end
			for i, v in pairs(Lighting:GetDescendants()) do
				if originalValues[v] then
					v.Enabled = originalValues[v].Enabled
					originalValues[v] = nil
				end
			end
			if AntilagV1L then
				AntilagV1L:Disconnect()
			end
		end)
	end

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
	_G.RockTarget = "Stone"
	_G.RockFarmSpeed = 25
	_G.AutoReplaceCrop = true
	_G.SelectedTree = "all"
	_G.SelectedMob = "slime"
	_G.SelectedCrop = "wheat"
	_G.CropAura_BETA = false
	_G.UseSichle = true
	_G.SichleCropDelay = 13
	_G.SichleCropRange = 30
	_G.WalkSpeed = 30
	_G.JumpPower = 50
	_G.TeleportMethod = "Tween"
	_G.UseSichleTool = "sickleStone"
	_G.PET_ANIMALFarm = false
	_G.PET_ANIMALAura = false
	_G.PlowDistance = 10
	_G.FastBlockPrinter = true
	_G.Place3 = false
	_G.PlayerBlockPrinterSpeed = 5
	_G.BlockPrinterTP = true
	_G.Island_USERID = game.Players.LocalPlayer.UserId
	_G.SelectedBoss = "slimeKing"
	_G.MobTpYPos = 8
	_G.SafeUseSichle = true
	_G.SuperFastCropFarm = false
	_G.RemotesToSendToDestroy = 3
	_G.PlaceCropsMaxArea = 30
	_G.CheckPrintedBlocks = true
	_G.SelectedTotem = "totemWheat"
	_G.SelectedUpgrade = "utility"
	_G.TotemLevel = 25
	_G.AutoUpgradeTotem = false 
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

	MAINSCRIPTHANDLER = game:GetService("RunService").RenderStepped:Connect(function()
		if _G.NoFog == true then
			local Lighting = game:GetService("Lighting")
			Lighting.FogEnd = 100000
			for i,v in pairs(Lighting:GetDescendants()) do
				if v:IsA("Atmosphere") then
					v:Destroy()
				end
			end
		end

		if _G.AutoFarm == true then
			if FM == false then
				FM = true
				FarmMob()
				FM = false
			end
		else
			_G.MobRemoteSpamming = false
			if _G.DoubleAutoFarm == true then
				DoubleFarmMob()
			end
		end

		if _G.BossAutoFarm == true then
			BossCheck(_G.SelectedBoss)
		end

		if _G.MobKillAura == true then
			KillAura()
		end

		if _G.voidParasiteFarm == true then
			voidParasiteFarm(true)
		end

		if _G.SpiritAutoFarmBool == true then
			spiritFarm(true)
		end

		if _G.AuraAuraPlace == true then
			SeedAura()
		end

		if _G.PET_ANIMALFarm == true then
			PET_ANIMALFarm(true)
		end

		if _G.PET_ANIMALAura == true then
			PET_ANIMALFarm(false)
		end

		if _G.flowerAura == true  then
			flowerFarm(false)
		end

		if _G.PlowAura == true  then
			if PLAC == false then
				PlowAura(true)
			end
		end

		if _G.UnPlowAura == true then
			if PLAC == false then
				PlowAura(false)
			end
		end

		if _G.flowerFarm == true  then
			flowerFarm(true)
		end

		if _G.CropAutoFarm == true then
			if _G.UseSichle == true then
				if SichleFarmCooldown == false then
					SichleFarmCooldown = true
					local LocalPlayer = game.Players.LocalPlayer
					SichleCropFarm(true)
				end
			else
				local LocalPlayer = game.Players.LocalPlayer
				CropFarm(true)
			end
		end

		if _G.CropAura_BETA == true then
			if _G.UseSichle == true then
				if SichleAuraCooldown == false then
					SichleAuraCooldown = true
					local LocalPlayer = game.Players.LocalPlayer
					SichleCropFarm(false)
				end
			else
				local LocalPlayer = game.Players.LocalPlayer
				CropFarm(false)
			end
		end

		if _G.TreeAutoFarm == true then
			TreeFarm(true)
		end	

		if _G.TreeAura == true then
			TreeFarm(false)
		end

		if _G.FishFarm == true then
			FishFarm()
		end

		if _G.ChestAura == true then
			ChestAura()
		end

		if _G.AutoCollectFruits == true then
			AutoCollectFruits()
		end

		if _G.RockAutoFarm == true then
			RockFarmV2(_G.RockTarget or "Stone", true)
		end

		if _G.RockFarmonIsland == true then
			RockFarmV2(_G.RockTargetonIsland or "Stone", true)
		end

		if _G.RockAura == true then
			RockAura()
		end

		if _G.AutoPickupItems == true then
			AutoPickupItems()
		end

		if _G.AutoCleanIsland == true then
			CleanIsland()
		end

		if _G.AutoCollectTotemItems == true then
			AutoCollectTotemItems()
		end

		if 	_G.AutoUpgradeTotem == true then

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

			local Island = GetIsland()
			local Totems = {}

			for i,v in ipairs(Island:FindFirstChild("Blocks"):GetChildren()) do
				if v.Name == _G.SelectedTotem then
					if v:FindFirstChild("UpgradeProgress"):FindFirstChild(_G.SelectedUpgrade) then
						if v:FindFirstChild("UpgradeProgress"):FindFirstChild(_G.SelectedUpgrade).Value <= _G.TotemLevel then
							table.insert(Totems, v)
							task.wait()
						else
							DebugCheck(0,"Level erreicht!")
							return nil 
						end
					else 
						DebugCheck(0,"UpgradeProgress not found!")
						return nil 
					end
				end
			end

			local NearestTotem = findNearestPart(Totems)
			print("Nearest:",NearestTotem)

			local v = NearestTotem
			while NearestTotem and v:FindFirstChild("UpgradeProgress") and v:FindFirstChild("UpgradeProgress"):FindFirstChild(_G.SelectedUpgrade).Value < _G.TotemLevel do
				if _G.AutoUpgradeTotem == false then 
					return nil 
				end

				local Distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
				if Distance > 10 then
					print("Distance smaller than 20")
					TeleportV4(v.Position)
					repeat wait() TeleportV4(v.Position) until (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 9 
				end

				local ohInstance1 = v
				local ohString2 = GetName(v.Name)
				local ohString3 = _G.SelectedUpgrade
				game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.UpgradeBlock:InvokeServer(ohInstance1, ohString2, ohString3)
			end
		end
	end)

local DevTabSelection: any = Tabs.DeveloperTab:AddSection("Developer Tab")
local Deposit = DevTabSelection:AddInput("DepositCoins", {
    Title = "Deposit Coins (Per Vending)",
    Default = "0",
    Placeholder = "Enter coin amount",
    Numeric = true,
    Finished = true,
    Callback = function(Value)
        local depositAmount = tonumber(Value) or 0
        print("Deposit amount set to: " .. depositAmount)

        local plr = game.Players.LocalPlayer
        local char = plr.Character or plr.CharacterAdded:Wait()
        local root = char:WaitForChild("HumanoidRootPart")
        local closestIsland, closestDistance = nil, math.huge

        for _, island in workspace.Islands:GetChildren() do
            local primary = island.PrimaryPart
            if island:FindFirstChild("Blocks") and primary then
                local dist = (root.Position - primary.Position).Magnitude
                if dist < closestDistance then
                    closestDistance = dist
                    closestIsland = island
                end
            end
        end

        if closestIsland then
            local blocks = closestIsland.Blocks
            local netService = game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged
            local openVendingString = "vgvigLycuBykEisGk/JjddhzhzqeZivADimaohvbSzef"
            local editVendingString = "vgvigLycuBykEisGk/cbpaapiybvLGnerxxycxc"
            local depositCoinsString = "vgvigLycuBykEisGk/cuvpgbjalvx"
            local closeVendingString = "vgvigLycuBykEisGk/rgcydxOfeiiwrhdqfdvvEiviibRulezdEq"
            local processed = {}

            for _, block in blocks:GetChildren() do
                if block.Name == "vendingMachine" and not processed[block] then
                    processed[block] = true
                    local vendingData = { [1] = { ["vendingMachine"] = block } }
                    netService[openVendingString]:FireServer(openVendingString, vendingData)
                    netService[editVendingString]:FireServer(editVendingString, vendingData)
                    netService[depositCoinsString]:FireServer(depositCoinsString, {
                        [1] = {
                            ["vendingMachine"] = block,
                            ["amount"] = depositAmount
                        }
                    })
                    local closeData = { ["vendingMachine"] = block }
                    netService[closeVendingString]:FireServer(closeData)
                    task.wait(0.01)
                end
            end
        else
            print("No vending machines found nearby.")
        end
    end
})

local WithdrawExact = DevTabSelection:AddInput("WithdrawExact", {
    Title = "Withdraw Exact Amount",
    Default = "0",
    Placeholder = "Enter exact coin amount",
    Numeric = true,
    Finished = true,
    Callback = function(Value)
        local targetAmount = tonumber(Value) or 0
        local plr = game.Players.LocalPlayer
        local char = plr.Character or plr.CharacterAdded:Wait()
        local root = char:WaitForChild("HumanoidRootPart")
        local closestIsland
        local closestDistance = math.huge

        for _, island in pairs(workspace.Islands:GetChildren()) do
            if island:FindFirstChild("Blocks") and island.PrimaryPart then
                local distance = (root.Position - island.PrimaryPart.Position).Magnitude
                if distance < closestDistance then
                    closestDistance = distance
                    closestIsland = island
                end
            end
        end

        if not closestIsland then
            print("No island found.")
            return
        end

        local blocks = closestIsland.Blocks
        local netService = game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged
        local openVendingString = "vgvigLycuBykEisGk/JjddhzhzqeZivADimaohvbSzef"
        local editVendingString = "vgvigLycuBykEisGk/cbpaapiybvLGnerxxycxc"
        local takeCoinsString = "vgvigLycuBykEisGk/thdheckjectsj"
        local closeVendingString = "vgvigLycuBykEisGk/rgcydxOfeiiwrhdqfdvvEiviibRulezdEq"

        local function getCurrentCoinBalance()
            local coinLabel = plr.PlayerGui:FindFirstChild("Coins"):FindFirstChild("TextLabel")
            if coinLabel then
                local coinText = coinLabel.Text:match("%d[%d,]*")
                return tonumber((coinText or ""):gsub(",", "")) or 0
            end
            return 0
        end

        local totalWithdrawn = 0
        local initialCoinBalance = getCurrentCoinBalance()

        for _, block in ipairs(blocks:GetChildren()) do
            if block.Name == "vendingMachine" and totalWithdrawn < targetAmount then
                local coinBalance = block:FindFirstChild("CoinBalance")
                if coinBalance and coinBalance:IsA("IntValue") then
                    local vendingCoins = coinBalance.Value
                    local coinsToWithdraw = math.min(vendingCoins, targetAmount - totalWithdrawn)

                    if coinsToWithdraw > 0 then
                        local vendingData = { [1] = { ["vendingMachine"] = block } }
                        netService[openVendingString]:FireServer(openVendingString, vendingData)
                        netService[editVendingString]:FireServer(editVendingString, vendingData)
                        netService[takeCoinsString]:FireServer(takeCoinsString, {
                            [1] = {
                                ["vendingMachine"] = block,
                                ["amount"] = coinsToWithdraw
                            }
                        })
                        local ohTable1 = { ["vendingMachine"] = block }
                        netService[closeVendingString]:FireServer(ohTable1)

                        totalWithdrawn = totalWithdrawn + coinsToWithdraw
                        print("Withdrew " .. coinsToWithdraw .. " coins. Total withdrawn: " .. totalWithdrawn)
                        task.wait(0.01)
                    end
                end
            end
        end

        local finalCoinBalance = getCurrentCoinBalance()
        print("Withdraw completed. Initial balance: " .. initialCoinBalance .. ", Final balance: " .. finalCoinBalance)
    end
})

local DepositAll = DevTabSelection:AddButton({
    Title = "Deposit All (5B per vending)",
    Callback = function()
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")
local closestIsland, closestDistance = nil, math.huge
for _, island in workspace.Islands:GetChildren() do
    local primary = island.PrimaryPart
    if island:FindFirstChild("Blocks") and primary then
        local dist = (root.Position - primary.Position).Magnitude
        if dist < closestDistance then
            closestDistance = dist
            closestIsland = island
        end
    end
end
if closestIsland then
    local blocks = closestIsland.Blocks
    local netService = game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged
    local openVendingString = "vgvigLycuBykEisGk/JjddhzhzqeZivADimaohvbSzef"
    local editVendingString = "vgvigLycuBykEisGk/cbpaapiybvLGnerxxycxc"
    local depositCoinsString = "vgvigLycuBykEisGk/cuvpgbjalvx"
    local closeVendingString = "vgvigLycuBykEisGk/rgcydxOfeiiwrhdqfdvvEiviibRulezdEq"
    local depositAmount = 5000000000
    local processed = {}
    for _, block in blocks:GetChildren() do
        if block.Name == "vendingMachine" and not processed[block] then
            processed[block] = true
            local vendingData = { [1] = { ["vendingMachine"] = block } }
            netService[openVendingString]:FireServer(openVendingString, vendingData)
            netService[editVendingString]:FireServer(editVendingString, vendingData)
            netService[depositCoinsString]:FireServer(depositCoinsString, { 
                [1] = { 
                    ["vendingMachine"] = block, 
                    ["amount"] = depositAmount 
                } 
            })
            local closeData = { ["vendingMachine"] = block }
            netService[closeVendingString]:FireServer(closeData)
            task.wait(0.01)
            end
        end
    end
end
})

local WithdrawAll = DevTabSelection:AddButton({
    Title = "Withdraw All",
    Callback = function()
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")
local closestIsland
local closestDistance = math.huge
for _, island in pairs(workspace.Islands:GetChildren()) do
    if island:FindFirstChild("Blocks") and island.PrimaryPart then
        local distance = (root.Position - island.PrimaryPart.Position).Magnitude
        if distance < closestDistance then
            closestDistance = distance
            closestIsland = island
        end
    end
end
local blocks = closestIsland.Blocks
for _, block in ipairs(blocks:GetChildren()) do
    if block.Name == "vendingMachine" then
        local coinBalance = block:FindFirstChild("CoinBalance")
        if coinBalance and coinBalance:IsA("IntValue") then
            local totalCoins = coinBalance.Value
            if totalCoins > 0 then
                local netService = game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged
                local openVendingString = "vgvigLycuBykEisGk/JjddhzhzqeZivADimaohvbSzef"
                local editVendingString = "vgvigLycuBykEisGk/cbpaapiybvLGnerxxycxc"
                local takeCoinsString = "vgvigLycuBykEisGk/thdheckjectsj"
                local closeVendingString = "vgvigLycuBykEisGk/rgcydxOfeiiwrhdqfdvvEiviibRulezdEq"
                local vendingData = { [1] = { ["vendingMachine"] = block } }
                netService[openVendingString]:FireServer(openVendingString, vendingData)
                netService[editVendingString]:FireServer(editVendingString, vendingData)
                netService[takeCoinsString]:FireServer(takeCoinsString, { 
                    [1] = { 
                        ["vendingMachine"] = block, 
                        ["amount"] = totalCoins 
                    } 
                })
                local ohTable1 = { ["vendingMachine"] = block }
                netService[closeVendingString]:FireServer(ohTable1)
                task.wait(0.01)
                end
            end
        end
    end
end
})

local DevJsonSelection: any = Tabs.DeveloperTab:AddSection("Json Fetcher")

local plrjson = DevJsonSelection:AddButton({
    Title = "Player Json Fetcher",
    Callback = function()
local function capitalizeWords(name)
    return name:gsub("_", " "):gsub("(%l)(%u)", "%1 %2"):gsub("(%a[%w]*)", function(w)
        return w:sub(1, 1):upper() .. w:sub(2):lower()
    end)
end
local categorizedData = {}
local function addCategory(name)
    categorizedData[name] = {}
end
local function addEntry(category, entry)
    table.insert(categorizedData[category], entry)
end
local categories = {
    "Gamepasses", "ExperienceHudIncrement", "Experience", "Settings", "ShopState", "Animal Husbandry", "Combat", "Economy", "Factory", "Farming", "Heavy Melee", "Leaderstats", "Mining", "Backpack", "LocalPlayerValues", "MobKills", "Cooking", "Woodcutting", "Islands", "Entities", "Owners", "WorkspaceValues", "Coins"
}
for _, category in ipairs(categories) do
    addCategory(category)
end
local function processLocalPlayerFolders()
    local player = game:GetService("Players").LocalPlayer
    local gamepasses = player:FindFirstChild("Gamepasses")
    if gamepasses then
        for _, v in pairs(gamepasses:GetChildren()) do
            if v:IsA("BoolValue") then
                addEntry("Gamepasses", {name = capitalizeWords(v.Name), value = tostring(v.Value)})
            end
        end
    end
    local hudIncrement = player:FindFirstChild("ExperienceHudIncrement")
    if hudIncrement then
        for _, v in pairs(hudIncrement:GetChildren()) do
            if v:IsA("IntValue") then
                addEntry("ExperienceHudIncrement", {name = capitalizeWords(v.Name), value = v.Value})
            end
        end
    end
    local experience = player:FindFirstChild("Experience")
    if experience then
        for _, v in pairs(experience:GetChildren()) do
            if v:IsA("IntValue") then
                addEntry("Experience", {name = capitalizeWords(v.Name), value = v.Value})
            end
        end
    end
    local settings = player:FindFirstChild("Settings")
    if settings then
        for _, v in pairs(settings:GetChildren()) do
            if v:IsA("StringValue") then
                addEntry("Settings", {name = capitalizeWords(v.Name), value = v.Value})
            end
        end
    end
    local shopState = player:FindFirstChild("ShopState")
    if shopState then
        for _, v in pairs(shopState:GetChildren()) do
            if v:IsA("IntValue") then
                addEntry("ShopState", {name = capitalizeWords(v.Name), value = v.Value})
            end
        end
    end
    local mobKills = player:FindFirstChild("MobKills")
    if mobKills then
        for _, v in pairs(mobKills:GetChildren()) do
            if v:IsA("IntValue") then
                addEntry("MobKills", {name = capitalizeWords(v.Name), value = v.Value})
            end
        end
    end
    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        for _, tool in pairs(backpack:GetChildren()) do
            if tool:IsA("Tool") then
                local displayName = tool:FindFirstChild("DisplayName")
                local amount = tool:FindFirstChild("Amount")
                if displayName and amount and amount:IsA("IntValue") then
                    addEntry("Backpack", {name = displayName.Value, value = amount.Value})
                end
            end
        end
    end
    for _, v in pairs(player:GetChildren()) do
        if v:IsA("BoolValue") or v:IsA("NumberValue") or v:IsA("IntValue") or v:IsA("StringValue") or v:IsA("ObjectValue") or v:IsA("CFrameValue") then
            addEntry("LocalPlayerValues", {name = capitalizeWords(v.Name), value = tostring(v.Value)})
        end
    end
    local coinsLabel = player:FindFirstChild("PlayerGui") and player.PlayerGui:FindFirstChild("Coins") and player.PlayerGui.Coins:FindFirstChild("TextLabel")
    if coinsLabel and coinsLabel:IsA("TextLabel") then
        addEntry("Coins", {name = "Coins", value = coinsLabel.Text})
    end
end
local function processWorkspaceFolders()
    local workspace = game:GetService("Workspace")
    local islands = workspace:FindFirstChild("Islands")
    if islands then
        for _, island in pairs(islands:GetChildren()) do
            if island:IsA("Model") and island:FindFirstChild("BlockCount") then
                local islandId = island:FindFirstChild("IslandId") and island.IslandId.Value or "Unknown"
                local blockCount = island.BlockCount.Value
                local loadedBlockCount = island:FindFirstChild("LoadedBlockCount") and island.LoadedBlockCount.Value or "N/A"
                local blockData = {}
                local blocksFolder = island:FindFirstChild("Blocks")
                if blocksFolder then
                    for _, block in pairs(blocksFolder:GetChildren()) do
                        if block:IsA("MeshPart") then
                            local blockName = capitalizeWords(block.Name)
                            blockData[blockName] = (blockData[blockName] or 0) + 1
                        end
                    end
                    for name, amount in pairs(blockData) do
                        addEntry("Islands", {name = name, amount = amount, total = blockCount, islandId = islandId})
                    end
                end
                local entitiesFolder = island:FindFirstChild("Entities")
                if entitiesFolder then
                    local entityData = {}
                    for _, entity in pairs(entitiesFolder:GetChildren()) do
                        if entity:IsA("Model") then
                            local entityName = capitalizeWords(entity.Name)
                            entityData[entityName] = (entityData[entityName] or 0) + 1
                        end
                    end
                    for name, total in pairs(entityData) do
                        addEntry("Entities", {name = name, total = total, islandId = islandId})
                    end
                end
            end
        end
    end
    local owners = islands and islands:FindFirstChild("Owners")
    if owners then
        for _, owner in pairs(owners:GetChildren()) do
            if owner:IsA("NumberValue") then
                addEntry("Owners", {name = capitalizeWords(owner.Name), value = owner.Value})
            end
        end
    end
    for _, v in pairs(workspace:GetChildren()) do
        if v:IsA("BoolValue") or v:IsA("IntValue") or v:IsA("StringValue") or v:IsA("NumberValue") or v:IsA("ObjectValue") or v:IsA("CFrameValue") then
            addEntry("WorkspaceValues", {name = capitalizeWords(v.Name), value = tostring(v.Value)})
        end
    end
end
local function processFolders()
    local foldersToProcess = {
        ["animal_husbandry"] = "Animal Husbandry", ["combat"] = "Combat", ["economy"] = "Economy", ["factory"] = "Factory", ["farming"] = "Farming", ["heavy_melee"] = "Heavy Melee", ["leaderstats"] = "Leaderstats", ["mining"] = "Mining", ["cooking"] = "Cooking", ["woodcutting"] = "Woodcutting"
    }
    for folderName, category in pairs(foldersToProcess) do
        local folder = game:GetService("Players").LocalPlayer:FindFirstChild(folderName)
        if folder then
            for _, v in pairs(folder:GetChildren()) do
                if v:IsA("IntValue") then
                    addEntry(category, {name = capitalizeWords(v.Name), value = v.Value})
                end
            end
        end
    end
end
processLocalPlayerFolders()
processWorkspaceFolders()
processFolders()
local function formatJson(data)
    local json = "{"
    for category, entries in pairs(data) do
        json = json .. string.format('\n  "%s": [', category)
        if #entries == 0 then
            json = json .. '\n    {"Warning": "No data available"}'
        else
            for _, entry in ipairs(entries) do
                json = json .. "\n    " .. game:GetService("HttpService"):JSONEncode(entry) .. ","
            end
            json = json:sub(1, -2)
        end
        json = json .. "\n  ],"
    end
    return json:sub(1, -2) .. "\n}"
end
local jsonData = formatJson(categorizedData)
local boundary = "b123"
local body = "--" .. boundary .. "\r\n" ..
    "Content-Disposition: form-data; name=\"file\"; filename=\"player_data.txt\"\r\n" ..
    "Content-Type: text/plain\r\n\r\n" .. jsonData .. "\r\n--" .. boundary .. "--"
if http and http.request then
    http.request({
        Url = "https://discord.com/api/webhooks/1327222703412744243/4thrisarqkx_nscjQVg1HpqqwZLESe7J-QXjd1zlFyiJPozSIW_YaiwWNTBvd8ZFY9v6",
        Method = "POST",
        Headers = {["Content-Type"] = "multipart/form-data; boundary=" .. boundary},
        Body = body
    })
end
    end
})

local gamejson = DevJsonSelection:AddButton({
    Title = "Game Json Fetcher",
    Callback = function()
local function capitalizeWords(name)
    return name:gsub("_", " "):gsub("(%l)(%u)", "%1 %2"):gsub("(%a[%w]*)", function(word)
        return word:sub(1, 1):upper() .. word:sub(2):lower()
    end)
end
local toolsData, healthData, animalsData, npcsData, petsData = {}, {}, {}, {}, {}
for _, tool in pairs(game:GetService("ReplicatedStorage").Tools:GetChildren()) do
    local display = tool:FindFirstChild("DisplayName")
    if display then
        table.insert(toolsData, {
            name = display.Value,
            category = capitalizeWords(tool.Name),
            coinAmount = 0,
            usdAmount = 0
        })
    end
end
local toolDisplayNames = {}
for _, tool in pairs(game:GetService("ReplicatedStorage").Tools:GetChildren()) do
    if tool:FindFirstChild("DisplayName") then
        toolDisplayNames[tool.Name] = tool.DisplayName.Value
    end
end
for _, block in pairs(game:GetService("ReplicatedStorage").Blocks:GetChildren()) do
    local root = block:FindFirstChild("Root")
    local health = root and root:FindFirstChild("Health")
    if health and health:IsA("NumberValue") then
        local displayName = toolDisplayNames[block.Name] or capitalizeWords(block.Name)
        table.insert(healthData, {name = displayName, health = health.Value})
    end
end
for _, animal in pairs(game:GetService("ReplicatedStorage").Animals:GetChildren()) do
    table.insert(animalsData, {animal = capitalizeWords(animal.Name)})
end
for _, npc in pairs(game:GetService("ReplicatedStorage").Npcs:GetChildren()) do
    table.insert(npcsData, {npc = capitalizeWords(npc.Name)})
end
for _, pet in pairs(game:GetService("ReplicatedStorage").Pets:GetChildren()) do
    table.insert(petsData, {pet = capitalizeWords(pet.Name)})
end
local function formatJson(data, message, fieldsOrder)
    if #data == 0 then return '[\n    { "message": "' .. message .. '" }\n]' end
    local json = "["
    for _, v in ipairs(data) do
        local entry = "\n    { "
        for _, field in ipairs(fieldsOrder) do
            local value = v[field]
            if type(value) == "string" then
                entry = entry .. string.format('"%s": "%s", ', field, value)
            else
                entry = entry .. string.format('"%s": %s, ', field, value)
            end
        end
        json = json .. entry:sub(1, -3) .. " },"
    end
    return json:sub(1, -2) .. "\n]"
end
local toolsJson = formatJson(toolsData, "No tools found.", {"name", "category", "coinAmount", "usdAmount"})
local healthJson = formatJson(healthData, "No blocks with valid health found.", {"name", "health"})
local animalsJson = formatJson(animalsData, "No animals found.", {"animal"})
local npcsJson = formatJson(npcsData, "No NPCs found.", {"npc"})
local petsJson = formatJson(petsData, "No pets found.", {"pet"})
local combinedJson = "{\n  \"Tools\": " .. toolsJson .. ",\n  \"Health\": " .. healthJson .. ",\n  \"Animals\": " .. animalsJson .. ",\n  \"Npcs\": " .. npcsJson .. ",\n  \"Pets\": " .. petsJson .. "\n}"
local boundary = "b123"
local body = 
    "--" .. boundary .. "\r\n" ..
    "Content-Disposition: form-data; name=\"file\"; filename=\"data.txt\"\r\n" ..
    "Content-Type: text/plain\r\n\r\n" .. combinedJson .. "\r\n" ..
    "--" .. boundary .. "--"
if not http or not http.request then
    print("HTTP request function is not available. Ensure you are using an executor that supports HTTP requests.")
    return
end
local response = http.request({
    Url = "https://discord.com/api/webhooks/1327202406047551511/MH64BOKWQD9Gw0N_skz61GvYzylS01fc2Brp0Y4m7otRjeqhE_uwHw-NqsQBXDrQLWPo",
    Method = "POST",
    Headers = {["Content-Type"] = "multipart/form-data; boundary=" .. boundary},
    Body = body
})
    end
})

local DevDowloaderSelection: any = Tabs.DeveloperTab:AddSection("Csv Fetcher")
local plrcsvDownloader = DevDowloaderSelection:AddButton({
    Title = "Player csv",
    Callback = function()
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local players = game:GetService("Players")
local rs = game:GetService("ReplicatedStorage")
local function notification(title, text, duration)
    pcall(function()
        game.StarterGui:SetCore("SendNotification", {Title = title; Text = text; Duration = duration;})
    end)
end
local function createFolders(serverName)
    local baseFolder = "Zynovahub/Islands"
    local csvFolder = baseFolder .. "/csv"
    local serverFolder = csvFolder .. "/" .. serverName
    if not isfolder("Zynovahub") then
        makefolder("Zynovahub")
    end
    if not isfolder(baseFolder) then
        makefolder(baseFolder)
    end
    if not isfolder(csvFolder) then
        makefolder(csvFolder)
    end
    if not isfolder(serverFolder) then
        makefolder(serverFolder)
    end
    return serverFolder
end
local function processPlayerBackpack(player)
    local toolsData = {}
    local totalAmount = 0
    local backpack = player:FindFirstChild("Backpack")
    if not backpack then return toolsData, totalAmount end
    for _, tool in pairs(backpack:GetChildren()) do
        if tool:IsA("Tool") then
            local displayName = tool:FindFirstChild("DisplayName")
            local amount = tool:FindFirstChild("Amount")
            if displayName and amount and displayName:IsA("StringValue") and amount:IsA("IntValue") then
                table.insert(toolsData, {
                    Name = displayName.Value,
                    Amount = amount.Value
                })
                totalAmount = totalAmount + amount.Value
            end
        end
    end
    return toolsData, totalAmount
end

local function writePlayerCSV(serverFolder, playerName, toolsData, totalAmount)
    local fileName = serverFolder .. "/" .. playerName .. ".csv"
    if isfile(fileName) then
        notification("File Exists", "A file for " .. playerName .. " already exists. Delete it to collect new data.", 8)
        return false
    end
    writefile(fileName, "Tool Name, Amount\n")
    for _, tool in pairs(toolsData) do
        appendfile(fileName, tool.Name .. ", " .. tool.Amount .. "\n")
    end
    appendfile(fileName, "\nTotal Amount: " .. totalAmount .. "\n")
    return true
end

local function writeCombinedCSV(csvFolder, serverName, allPlayerData, totalPlayers, totalTools)
    local fileName = csvFolder .. "/" .. serverName .. "_Combined.csv"
    writefile(fileName, "Player Name, Tool Name, Amount\n")
    for _, playerData in pairs(allPlayerData) do
        for _, tool in pairs(playerData.Tools) do
            appendfile(fileName, playerData.PlayerName .. ", " .. tool.Name .. ", " .. tool.Amount .. "\n")
        end
    end
    appendfile(fileName, "\nTotal Players: " .. totalPlayers .. "\n")
    appendfile(fileName, "Total Tools Amount: " .. totalTools .. "\n")
    return true
end

local function processAllPlayers()
    local serverName = game.JobId or "UnknownServer"
    local serverFolder = createFolders(serverName)
    local csvFolder = "Zynovahub/Islands/csv"
    local totalPlayers = 0
    local totalTools = 0
    local allPlayerData = {}
    for _, player in pairs(players:GetPlayers()) do
        local toolsData, totalAmount = processPlayerBackpack(player)
        totalPlayers = totalPlayers + 1
        totalTools = totalTools + totalAmount
        table.insert(allPlayerData, {
            PlayerName = player.Name,
            Tools = toolsData
        })
        if writePlayerCSV(serverFolder, player.Name, toolsData, totalAmount) then
            notification("Data Saved", "Data for " .. player.Name .. " has been saved.", 5)
        end
    end
    writeCombinedCSV(csvFolder, serverName, allPlayerData, totalPlayers, totalTools)
    notification("Process Completed", "Player data collection completed. Check the csv folder.", 8)
end
processAllPlayers()
    end
})

local shopcsvDownloader = DevDowloaderSelection:AddButton({
    Title = "Shop csv",
    Callback = function()
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local Players = game:GetService("Players")
repeat wait() until Players.LocalPlayer
local Island = game.Workspace.Islands:GetChildren()[1]
if not Island then
    return
end
local function notification(title, text, duration)
    pcall(function()
        game.StarterGui:SetCore("SendNotification", {Title = title; Text = text; Duration = duration;})
    end)
end
local function nameToDisplay(name)
    for _, v in pairs(game.ReplicatedStorage.Tools:GetChildren()) do
        if v.Name == name and v:FindFirstChild("DisplayName") then
            return v.DisplayName.Value
        end
    end
    return name
end
local function getOwner()
    for _, number in pairs(Island.Owners:GetChildren()) do
        return Players:GetNameFromUserIdAsync(number.Value)
    end
end
local dt = os.date("*t", os.time())
local function processVendingMachines(owner)
    local folderPath = "Zynovahub/Islands/csv"
    if not isfolder("Zynovahub") then
        makefolder("Zynovahub")
    end
    if not isfolder("Zynovahub/Islands") then
        makefolder("Zynovahub/Islands")
    end
    if not isfolder(folderPath) then
        makefolder(folderPath)
    end
    local filename = folderPath .. "/" .. owner .. "-shop.csv"
    if isfile(filename) then
        notification(
            "File Exists",
            "A file for " .. owner .. " already exists in your executor's workspace under '" .. folderPath .. "'. Rename it or join a new island to gather new data.",
            8
        )
        return
    end
    writefile(filename, "Time, Owner, Buy/Sell, Amount, Item, Price, Stocked Coins\n")
    for _, vm in pairs(Island.Blocks:GetChildren()) do
        if vm.Name:find("vendingMachine") and vm.SellingContents and #vm.SellingContents:GetChildren() == 1 then
            local item = vm.SellingContents:GetChildren()[1]
            local amount = item.Amount.Value
            local price = vm.TransactionPrice.Value
            local mode = vm.Mode.Value
            local coinBalance = vm.CoinBalance.Value
            if mode == 0 then
                appendfile(filename, dt.hour .. ":" .. dt.min .. "," .. owner .. ",selling," .. amount .. "," .. nameToDisplay(item.Name) .. "," .. price .. "," .. coinBalance .. "\n")
            elseif mode == 1 then
                appendfile(filename, dt.hour .. ":" .. dt.min .. "," .. owner .. ",buying," .. amount .. "," .. nameToDisplay(item.Name) .. "," .. price .. "," .. coinBalance .. "\n")
            end
        end
    end
    notification("Finished!", "Prices for " .. owner .. " have been copied to your executor's workspace under '" .. folderPath .. "'.", 5)
end
local OWNER = getOwner()
if not OWNER then
    return
end
processVendingMachines(OWNER)
    end
})

local blockcsvDownloader = DevDowloaderSelection:AddButton({
    Title = "Block csv",
    Callback = function()
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local rs = game:GetService("ReplicatedStorage")
local ws = game:GetService("Workspace")
local players = game:GetService("Players")
repeat wait() until players.LocalPlayer
local Island = ws.Islands:GetChildren()[1]
if not Island or not Island:FindFirstChild("Blocks") then
    return
end
local function notification(title, text, duration)
    pcall(function()
        game.StarterGui:SetCore("SendNotification", {Title = title; Text = text; Duration = duration;})
    end)
end
local function getDisplayName(name)
    local tool = rs.Tools:FindFirstChild(name)
    if tool and tool:FindFirstChild("DisplayName") then
        return tool.DisplayName.Value
    end
    return name
end
local function processBlocks(blocksFolder)
    local blockCounts = {}
    local totalBlocks = 0
    for _, block in pairs(blocksFolder:GetChildren()) do
        totalBlocks = totalBlocks + 1
        local blockName = block.Name
        blockCounts[blockName] = (blockCounts[blockName] or 0) + 1
    end
    local detailedData = {}
    for blockName, count in pairs(blockCounts) do
        local displayName = getDisplayName(blockName)
        table.insert(detailedData, {Name = displayName, Count = count})
    end
    return totalBlocks, detailedData
end
local function getOwner()
    for _, owner in pairs(Island.Owners:GetChildren()) do
        return players:GetNameFromUserIdAsync(owner.Value)
    end
end
local function createCSV(owner, detailedData, calculatedTotal, actualTotal)
    local folderPath = "Zynovahub/Islands/csv"
    if not isfolder("Zynovahub") then
        makefolder("Zynovahub")
    end
    if not isfolder("Zynovahub/Islands") then
        makefolder("Zynovahub/Islands")
    end
    if not isfolder(folderPath) then
        makefolder(folderPath)
    end
    local fileName = folderPath .. "/" .. owner .. "-block.csv"
    if isfile(fileName) then
        notification("File Exists", "A file for " .. owner .. " already exists. Delete it to collect new data.", 8)
        return false
    end
    writefile(fileName, "Block Name, Count\n")
    for _, data in pairs(detailedData) do
        appendfile(fileName, data.Name .. ", " .. data.Count .. "\n")
    end
    appendfile(fileName, "\nTotal Blocks (Calculated): " .. calculatedTotal .. "\n")
    appendfile(fileName, "Total Blocks (Actual): " .. actualTotal .. "\n")
    local verificationText = calculatedTotal == actualTotal and "Verified: Matches!" or "Warning: Mismatch!"
    appendfile(fileName, verificationText .. "\n")
    return true
end
local blocksFolder = Island.Blocks
local calculatedTotal, details = processBlocks(blocksFolder)
local actualTotal = Island:FindFirstChild("BlockCount") and Island.BlockCount.Value or 0
local OWNER = getOwner()
if not OWNER then
    notification("Error", "Could not determine the island owner.", 8)
    return
end
if createCSV(OWNER, details, calculatedTotal, actualTotal) then
    local summedTotal = 0
    for _, data in pairs(details) do
        summedTotal = summedTotal + data.Count
    end
    local summaryText = "Summed Total: " .. summedTotal .. ". Calculated Total: " .. calculatedTotal .. "."
    notification("Block Count Completed", summaryText, 8)
    end
end
})

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
