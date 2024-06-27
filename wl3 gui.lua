--[[
	Instruction for script:
		Description Mode - only 1-4 mods
		Description Text - text which will be automated in ur desc
	
	Desc Modes:
		Mode 1 - default typing
		Mode 2 - erase typing
		Mode 3 - glitchy
		Mode 4 - backward typing

--]]


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Syr0nix/UI-lib-NEW/main/WL"))()
Window = Library.Main("SCR","RightShift")
local Tab = Window.NewTab("Gampeass")
local Section = Tab.NewSection("BE FREE")
local Button = Section.NewButton("Wings",function()
	local args = {[1] = "Wings",[2] = 0,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Ocean Skin",function()
	local args = {[1] = "Ocean",[2] = 0,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Dragon skin",function()
	local args = {[1] = "Dragon",[2] = 0,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Remove Wings",function()
	local args = {[1] = "Wings",[2] = 1,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Remove Ocean skin",function()
	local args = {[1] = "Ocean",[2] = 1,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Remove Dragon skin",function()
	local args = {[1] = "Dragon",[2] = 1,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Tab = Window.NewTab("VIW")
local Section = Tab.NewSection("Wana Be VIW")
local Button = Section.NewButton("VIW TAG",function()
	game.ReplicatedStorage.MasterKey:FireServer("AddVIWTag", nil, "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
end)
local Button = Section.NewButton("Remove Name tags",function()
	local args = {[1] = "ChangeDesc",[2] = "",[3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
	local args = {[1] = "ChangeName",[2] = "",[3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
game.Players.LocalPlayer.Character.Head.NameTag.Main.Pack:remove()
	game.Players.LocalPlayer.Character.Head.NameTag.Main.VIW:remove()
end)
local Button = Section.NewButton("Audio Player",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Syr0nix/Syr0nix-Audio-Player/main/Audio%20Player'))();
end)
_G.autoaudiomute = false
local EnabledToggle = Section.NewToggle("Mute VIW Music",function(bool)
	if _G.autoaudiomute then
		_G.autoaudiomute = false
		return
	else
		_G.autoaudiomute = true
	end
	while _G.autoaudiomute do
		task.wait()
		for _,v in next, game:GetService('Players'):GetPlayers()do
			if v.Character and v.Character.Parent ~= nil and v.Character:FindFirstChild('HumanoidRootPart') and v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM') then
				v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM'):Stop()
				v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM').Playing = false
			end
		end
	end
end)
local timergb, RBW_COL = 7
rgb1 = game:GetService('RunService').Heartbeat:Connect(function()
	local hue = tick() % timergb / timergb
	RBW_COL = Color3.fromHSV(hue,1,1)
end)
_G.cocktuning = {
	dmod = 1, -- mode 1-4
	desc = 'Example Title', -- auto description text
	wait = .2, -- text type speed
	wait2 = .8, -- time wait after done typing for other mods
	wait3 = .4 -- time wait after done typing for mode 3
	}
local text_ = Section.Newtextbox('Description Text',function(self,value)
	_G.cocktuning.desc = value
end)
local mode_ = Section.Newtextbox('Description Mode',function(self,value)
	if tonumber(value) ~= nil then
		_G.cocktuning.dmod = tonumber(value)
	end
end)
--[[
Usage:
    to change mod or text u should just change in _G.cocktuning
    Example:
        dmod = 2,
        desc = 'SOME ANOTHER TEXT TO WHAT U WANT'
    
    DO NOT TOUCH FUCKING WAITS IN _G.cocktuning IF YOU DONT KNOW WHAT THEY MEAN!!
    Cause I don't want to be like sucker when y'all use my script wrongly.. :sob:
    
    Mady by: Unix
    Included to syronix script.
--]]
_G.PROVODASUKAB = false
local cfg = {key = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151".."\153",eventname = "ChangeDesc",mk = game:GetService('ReplicatedStorage'):FindFirstChild('MasterKey')}
local Button = Section.NewToggle("Auto Description",function()
	if _G.PROVODASUKAB then
		_G.PROVODASUKAB = false
		return
	else
		_G.PROVODASUKAB = true
	end
	while _G.PROVODASUKAB do
		if _G.cocktuning.dmod==1 then
			for i = 1,#_G.cocktuning.desc do
				if not _G.PROVODASUKAB or _G.cocktuning.dmod~=1 then continue;end
				task.wait(_G.cocktuning.wait)
				local args = {[1] = cfg.eventname,[2] = string.sub(_G.cocktuning.desc,1,i)..'|',[3] = cfg.key}
				cfg.mk:FireServer(unpack(args))
			end;task.wait(_G.cocktuning.wait2)
		elseif _G.cocktuning.dmod==2 then
			for i = 1,#_G.cocktuning.desc do
				if not _G.PROVODASUKAB or _G.cocktuning.dmod~=2 then continue;end
				task.wait(_G.cocktuning.wait)
				local args = {[1] = cfg.eventname,[2] = string.sub(_G.cocktuning.desc,1,#_G.cocktuning.desc-i)..'|',[3] = cfg.key}
				cfg.mk:FireServer(unpack(args))
			end;task.wait(_G.cocktuning.wait2)
		elseif _G.cocktuning.dmod==3 then
			for i = 1,#_G.cocktuning.desc do
				if not _G.PROVODASUKAB or _G.cocktuning.dmod~=3 then continue;end
				task.wait(_G.cocktuning.wait)
				local fakea = _G.cocktuning.desc;fakea=string.sub(_G.cocktuning.desc,math.random(1,#fakea),math.random(1,#fakea)-i)..'|'
				local args = {[1] = cfg.eventname,[2] = fakea,[3] = cfg.key}
				cfg.mk:FireServer(unpack(args))
			end;task.wait(_G.cocktuning.wait3)
		elseif _G.cocktuning.dmod==4 then
			for i = 1,#_G.cocktuning.desc do
				if not _G.PROVODASUKAB or _G.cocktuning.dmod~=4 then continue;end
				task.wait(_G.cocktuning.wait)
				local args = {[1] = cfg.eventname,[2] = '|'..string.sub(_G.cocktuning.desc,#_G.cocktuning.desc-i,#_G.cocktuning.desc),[3] = cfg.key}
				cfg.mk:FireServer(unpack(args))
			end
		end;task.wait(_G.cocktuning.wait2)
	end
end)
local Tab = Window.NewTab("Admin")
local Section = Tab.NewSection("Wana Be Admin")
local Button = Section.NewButton("Float",function()
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
workspace.Gravity = 0
end)
local Button = Section.NewButton("Unfloat",function()
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
workspace.Gravity = 200
end)
_G.SpamLights = false
local EnabledToggle = Section.NewToggle("SpamLights!", function(bool) -- Thanks to Flixz_y#2839 for helping me with this toggle! 
    if _G.SpamLights then
        _G.SpamLights = false
        return
    else
        _G.SpamLights = true
    end

    while _G.SpamLights do
        for _, L in next, workspace.Models:GetDescendants() do
            if L:IsA("ClickDetector") then
                fireclickdetector(L)
            end
        end
        task.wait()
    end    
end)
local Button = Section.NewButton("Spam Sounds",function()
    for _, sound in next, workspace:GetDescendants() do
        if sound:IsA("Sound") then
            sound:Play()
        end
    end
end)
local Button = Section.NewButton("Stop Sounds",function()
for _, sound in next, workspace:GetDescendants() do
	if sound:IsA("Sound") then
		sound.Looped = false
	end
end
end)
local Button = Section.NewButton("ResetClient",function()
	local A_1 = "OnReset"
	local Event = game:GetService("ReplicatedStorage").MasterKey
	Event:FireServer(A_1)
end)
local Button = Section.NewButton("RTX",function()
-- Made by Colby :D
sunrays = game.Lighting.SunRays
s = Instance.new("DepthOfFieldEffect")
a = game.Lighting.Atmosphere
game.Lighting.OutdoorAmbient = Color3.fromRGB(50, 50, 50)
game.Lighting.Ambient = Color3.fromRGB(20, 20, 20)
sunrays.Intensity = 0.1
s.FarIntensity = 0.20
s.FocusDistance = 0.05
s.InFocusRadius = 15
s.NearIntensity = 0.75
s.Parent = game.Lighting
sunrays.Parent = game.Lighting 
a.Density = .1
a.Haze = 0
a.Glare = 1
a.Offset = 0
a.Decay = Color3.fromRGB(159, 43, 104)
game:GetService("Lighting").Sky:Destroy()
local L = workspace.Models.Lanterns:GetChildren()[49].Scripting.Light.PointLight
for _, L in next, workspace:GetDescendants() do
	if L:IsA("PointLight") then
		L.Shadows = true
	end
end

print(":D")
end)
function playerCheck(p)
	if type(p)=='boolean'or p == nil then return false end
	if game:GetService('Players'):FindFirstChild(p)then
		return game:GetService('Players'):FindFirstChild(p)
	end
end
local function findPlayer(name)
	for _,p in next,game:GetService('Players'):GetPlayers()do
		local pn = string.lower(p.Name)
		local pd = string.lower(p.DisplayName)
		if (string.sub(name,1,#name)==string.sub(pn,1,#name) or string.sub(name,1,#name)==string.sub(pd,1,#name)) then
			return p
		end
	end
	return false
end
local NAME,USER = '',nil
local plr = Section.Newtextbox('Player Name',function(self,value)
	local find = findPlayer(value)
	if find then
		NAME,USER = find.Name,find
		self.Text = find.Name
	else
		self.Text = 'User not found'
	end
end)
local Button = Section.NewButton("Freeze Player",function()
	local pl = playerCheck(NAME)
	game:GetService("ReplicatedStorage").CarryNewborn:FireServer(pl)
end)
local Button = Section.NewButton("Bring Player To Hell",function()
    local pl = playerCheck(NAME)
	
	local ogp = game.Players.LocalPlayer.Character.Torso.Position
	
	for count = 0, 20, 1 do
		game:GetService("ReplicatedStorage").CarryNewborn:FireServer(pl)
    	wait()
	end
	
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
	wait(.5)
	game.Players.LocalPlayer.Character:MoveTo(ogp)
end)
local Button = Section.NewButton("Ragdoll Player",function()
local pl = playerCheck(NAME)
local ogp = game.Players.LocalPlayer.Character.Torso.Position
game:GetService("ReplicatedStorage").CarryNewborn:FireServer(pl)
power = 500
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character.Tail1.CanCollide = false
game.Players.LocalPlayer.Character.Tail2.CanCollide = false
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.Torso
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.Torso.Position
wait(.1)
bambam.Parent = game.Players.LocalPlayer.Character.Torso.BodyThrust:Destroy()
game.Players.LocalPlayer.Character.Humanoid.Jump = true
wait(.5)
for count = 0, 4, 1 do
	game.Players.LocalPlayer.Character:MoveTo(ogp)
	wait()
end
game.Players.LocalPlayer.Character.Head.CanCollide = true
game.Players.LocalPlayer.Character.Torso.CanCollide = true
game.Players.LocalPlayer.Character.Head.CanCollide = true
game.Players.LocalPlayer.Character.Jaw.CanCollide = true
end)
local Button = Section.NewButton("Crash Server",function()
while true do
		for i = 0,1,(1/60)do
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Adult')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Pup')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Newborn')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Adult')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Pup')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Newborn')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Adult')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Pup')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Newborn')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Adult')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Pup')
			game.ReplicatedStorage:FindFirstChild('MasterKey'):FireServer('Age','Newborn')
		end
		task.wait()
	end
end)
local Button = Section.NewButton("Dark Dex",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua', true))()
end)
local Button = Section.NewButton("fates admin",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)
local Button = Section.NewButton("Inf Yeld",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
local Button = Section.NewButton("Homebrew Admin (Synapse X Only)",function()
_G.CustomUI = false
loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'),true))()
end)
local Button = Section.NewButton("PC Spy",function()
--[[
	Simple Chat Spy
	Type "spy" to enable or disable the chat spy.
	Only tested if this works executed with Synapse (should work with other exploits though)
--]]

print("-- Chat Spy Executed --")
print("Type \"spy\" to enable or disable the chat spy.")
print("Only tested if this works executed with Synapse (should work with other exploits though)")
print("https://github.com/dehoisted/Chat-Spy")

-- Config
Config = {
	enabled = true,
	spyOnMyself = true,
	public = false,
	publicItalics = true
}

-- Customizing Log Output
PrivateProperties = {
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}

	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
	local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
	local instance = (_G.chatSpyInstance or 0) + 1
	_G.chatSpyInstance = instance

	local function onChatted(p,msg)
		if _G.chatSpyInstance == instance then
			if p==player and msg:lower():sub(1,4)=="/spy" then
				Config.enabled = not Config.enabled
				wait(0.3)
				PrivateProperties.Text = "{SPY "..(Config.enabled and "EN" or "DIS").."ABLED}"
				StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
			elseif Config.enabled and (Config.spyOnMyself==true or p~=player) then
				msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
				local hidden = true
				local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
					if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and Config.public==false and Players[packet.FromSpeaker].Team==player.Team)) then
						hidden = false
					end
				end)
				wait(1)
				conn:Disconnect()
				if hidden and Config.enabled then
					if Config.public then
						saymsg:FireServer((Config.publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
					else
						PrivateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
						StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
					end
				end
			end
		end
	end
	
	for _,p in ipairs(Players:GetPlayers()) do
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end

	Players.PlayerAdded:Connect(function(p)
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end)

	PrivateProperties.Text = "{SPY "..(Config.enabled and "EN" or "DIS").."ABLED}"
	StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
	local chatFrame = player.PlayerGui.Chat.Frame
	chatFrame.ChatChannelParentFrame.Visible = true
	chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end)
local Button = Section.NewButton("Teleport all",function()
	for i,v in pairs(game.Players:GetChildren()) do
		game:GetService("ReplicatedStorage").CarryNewborn:FireServer(v)
		wait(0.2)
		local G_1 = "Spawn"
		local G_2 = "Adoption"
		game:GetService("ReplicatedStorage").MasterKey:FireServer(G_1, G_2)
		wait(0.2)
		local G_1 = "Kick Eggs"
		game:GetService("ReplicatedStorage").CarryNewborn:FireServer(G_1)
		wait(0.2)
	end
	-- Everyone teleport to you
	-- Made by Syr0nix
end)
local Button = Section.NewButton("INF CASH",function()
	local args = {[1] = "Coins",[2] = math.huge,[3] = "\226\135\154\225\155\157i\220\176\219\173\230\155\157u"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Anti Fling",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Syr0nix/Anti-Fling/main/Anti%20Fling'))();
end)
local Button = Section.NewButton("Anti pick up",function()
	game.Players.LocalPlayer.Character.Request:Destroy();
end)
_G.AntiAFK = false
local EnabledToggle = Section.NewToggle("Anti AFK",function(bool)
	if _G.AntiAFK then
		_G.AntiAFK = false
		print("Anti AFK Is Disabled")
		return
	else
		_G.AntiAFK = true
	end
	print("Anti AFK Is Enable")
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end)
local Tab = Window.NewTab("Local OC")
local Section = Tab.NewSection("Be Creative")
local Button = Section.NewButton("Full Bark",function()
	game.Players.LocalPlayer.Character.Jaw.bark:Play()
end)
local Button = Section.NewButton("UnGhost",function()
local A_1 = "HairF"
local A_2 = "Spiky"
local Event = game:GetService("ReplicatedStorage").Accessories
Event:FireServer(A_1, A_2)
for _,v in next,game.Players.LocalPlayer.Character:children()do
	if v:IsA'BasePart'and v.Name~='HumanoidRootPart'then
		game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 0)
	end
end
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "Seat1", 1)
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "Seat2", 1)
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "JawWeldPart", 1)
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "Fat", 1)
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "ChubbyCheeks", 1)
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "Dragon", 1)
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "EarFluff", 1)
local args = {[1] = "Ocean",[2] = 1,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Default",function()
local A_1 = "customize"
local A_2 = 
{
	[1] = "DragonPrimary", 
	[2] = "OceanPrimary", 
	[3] = "BackFluff", 
	[4] = "TailFluff", 
	[5] = "LeftWingStart", 
	[6] = "LeftWing2", 
	[7] = "LeftWing3", 
	[8] = "RightWingStart", 
	[9] = "RightWing2", 
	[10] = "RightWing3", 
	[11] = "EyeLid", 
	[12] = "Torso", 
	[13] = "Tail1", 
	[14] = "Tail2", 
	[15] = "Tail3", 
	[16] = "Tail5", 
	[17] = "Tail6", 
	[18] = "RightThigh", 
	[19] = "RightEar", 
	[20] = "EyeLid", 
	[21] = "Head", 
	[22] = "Hip", 
	[23] = "LeftEar", 
	[24] = "LeftThigh", 
	[25] = "Muzzle", 
	[26] = "Neck", 
	[27] = "NeckReal"
}
local A_3 = Color3.new(0.564706, 0.564706, 0.564706)
local A_4 = "Body"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3, A_4)
local A_1 = "remove"
local A_2 = "HairF"
local Event = game:GetService("ReplicatedStorage").Accessories
Event:FireServer(A_1, A_2)
local A_1 = "customize"
local A_2 = 
{
	[1] = "DragonSecondary", 
	[2] = "OceanSecondary", 
	[3] = "ChubbyCheeks", 
	[4] = "Fat", 
	[5] = "EarFluff", 
	[6] = "JawFluff", 
	[7] = "ChestFluff", 
	[8] = "LegFluff", 
	[9] = "Eyebrow1", 
	[10] = "Eyebrow2", 
	[11] = "Secondary", 
	[12] = "Jaw", 
	[13] = "RightShoulder", 
	[14] = "RightLowerLeg", 
	[15] = "RightLowerArm", 
	[16] = "RightLeg", 
	[17] = "RightFootPaw", 
	[18] = "LeftArm", 
	[19] = "LeftArmPaw", 
	[20] = "LeftCarpal", 
	[21] = "LeftFootPaw", 
	[22] = "LeftLeg", 
	[23] = "LeftLowerArm", 
	[24] = "LeftLowerLeg", 
	[25] = "LeftShoulder", 
	[26] = "RightArm", 
	[27] = "RightArmPaw", 
	[28] = "RightCarpal"
}
local A_3 = Color3.new(0.862745, 0.862745, 0.862745)
local A_4 = "Body"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3, A_4)
local A_1 = "Fluff"
local A_2 = "ChestFluff"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Fluff"
local A_2 = "BackFluff"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Fluff"
local A_2 = "EarFluff"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Fluff"
local A_2 = "JawFluff"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Fluff"
local A_2 = "LegFluff"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Fluff"
local A_2 = "TailFluff"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "customize"
local A_2 = 
{
	[1] = "EyeColor"
}
local A_3 = Color3.new(0.454902, 1, 0.0117647)
local A_4 = "Body"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3, A_4)
local A_1 = "customize"
local A_2 = 
	{
		[1] = "Pupils"
	}
local A_3 = Color3.new(0, 0, 0)
local A_4 = "Body"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3, A_4)
local args = {[1] = "Wings",[2] = 1,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
local args = {[1] = "Dragon",[2] = 1,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Cock And Balls",function()
for _,v in next,game.Players.LocalPlayer.Character:children()do
	if v:IsA'BasePart'and v.Name~='HumanoidRootPart'then
		game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
	end
end
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "Torso", 0)
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "LeftThigh", 0)
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "RightThigh", 0)
local A_1 = "remove"
local A_2 = "HairF"
local Event = game:GetService("ReplicatedStorage").Accessories
Event:FireServer(A_1, A_2)
local A_1 = "Torso"
local A_2 = Color3.new(0.866667, 0.737255, 0.627451)
local A_3 = "Advanced"
game:GetService("ReplicatedStorage").MasterKey:FireServer(A_1, A_2, A_3)
local A_1 = "LeftThigh"
local A_2 = Color3.new(0.866667, 0.737255, 0.627451)
local A_3 = "Advanced"
game:GetService("ReplicatedStorage").MasterKey:FireServer(A_1, A_2, A_3)
local A_1 = "RightThigh"
local A_2 = Color3.new(0.866667, 0.737255, 0.627451)
local A_3 = "Advanced"
game:GetService("ReplicatedStorage").MasterKey:FireServer(A_1, A_2, A_3)
local A_1 = "NeckReal"
local A_2 = Color3.new(0.600, 0, 0)
local A_3 = "Advanced"
game:GetService("ReplicatedStorage").MasterKey:FireServer(A_1, A_2, A_3) 
local A_1 = "Accessories"
local A_2 = Color3.new(1, 1, 1)
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2)
end)
local Button = Section.NewButton("Ghost",function()
for _,v in next,game.Players.LocalPlayer.Character:children()do
	if v:IsA'BasePart'and v.Name~='HumanoidRootPart'then
		game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
	end
end
local A_1 = "remove"
local A_2 = "HairF"
local Event = game:GetService("ReplicatedStorage").Accessories
Event:FireServer(A_1, A_2)
end)
local Button = Section.NewButton("Ghost .5",function()
for _,v in next,game.Players.LocalPlayer.Character:children()do
	if v:IsA'BasePart'and v.Name~='HumanoidRootPart'then
		game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 0.5)
	end
end
end)
local Button = Section.NewButton("Oh God-",function()
for _,v in next,game.Players.LocalPlayer.Character:children()do
	if v:IsA'BasePart'and v.Name~='HumanoidRootPart'then
		game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
	end
end

local R = game:GetService("ReplicatedStorage")
local MK1, AC = R.MasterKey, R.Accessories
local fluff = {}
for _,v in next,game:service'Players'.LocalPlayer.Character:children()do
    if v:IsA'BasePart'and (v.Name:find'Dragon'or v.Name:find'Ear'or table.find(fluff,v.Name))then
        MK1:FireServer("Fluff", v.Name, 0) --   |  1 - invisible  |  0 - visible  | 
    elseif v.Name=='EarFluff'or v.Name=='Claws'or v.Name:find'Paw'or v.Name=='Pads' then
        MK1:FireServer('Fluff', v.Name, 1)
    end
end
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "Tooth", 0)
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "UpperTooth", 0)
game.ReplicatedStorage.MasterKey:FireServer("Fluff", "White", 0)
local A_1 = "customize"
local A_2 = 
	{
		[1] = "White"
	}
local A_3 = Color3.new(100, 0, 0)
local A_4 = "Body"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3, A_4)
end)
local Button = Section.NewButton("Ghost Dragon",function()
for _,v in next,game.Players.LocalPlayer.Character:children()do
	if v:IsA'BasePart'and v.Name~='HumanoidRootPart'then
		game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
	end
end

local R = game:GetService("ReplicatedStorage")
local MK1, AC = R.MasterKey, R.Accessories
local fluff = {}
for _,v in next,game:service'Players'.LocalPlayer.Character:children()do
    if v:IsA'BasePart'and (v.Name:find'Dragon'or v.Name:find'Ear'or table.find(fluff,v.Name))then
        MK1:FireServer("Fluff", v.Name, 0) --   |  1 - invisible  |  0 - visible  | 
    elseif v.Name=='EarFluff'or v.Name=='Claws'or v.Name:find'Paw'or v.Name=='Pads' then
        MK1:FireServer('Fluff', v.Name, 1)
    end
end
end)

local R = game:GetService("ReplicatedStorage")
local MK1, AC = R.MasterKey, R.Accessories
for _,v in next,game:service'Players'.LocalPlayer.Character:children()do
    if v:IsA'BasePart'and (v.Name=='EarFluff'or v.Name=='Claws'or v.Name:find'Paw'or v.Name=='Pads')then
        MK1:FireServer("Fluff", v.Name, 1)
    end
end
_G.e = false
local EnabledToggle = Section.NewToggle("Cool Eyes",function(bool)
	if _G.e then
		_G.e = false
		return
	else
		_G.e = true
	end
	while _G.e do
		local args = {[1] = "Material",[2] = "Concrete",[3] = {[29] = "White"}}
		game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
		local args = {[1] = "Material",[2] = "Neon",[3] = {[29] = "Pupils"}}
		game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
		wait(.5)
		local args = {[1] = "Material",[2] = "Concrete",[3] = {[29] = "Pupils"}}
		game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
		local args = {[1] = "Material",[2] = "Neon",[3] = {[29] = "EyeColor"}}
		game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
		wait(.5)
		local args = {[1] = "Material",[2] = "Concrete",[3] = {[29] = "EyeColor"}}
		game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
		local args = {[1] = "Material",[2] = "Neon",[3] = {[29] = "White"}}
		game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
		wait(.5)
	end
end,false)
_G.b = false
local EnabledToggle = Section.NewToggle("Electric Tail",function(bool)
	if _G.b then
		_G.b = false
		return
	else
		_G.b = true
	end
	while _G.b do
		local args = {[1] = "Material",[2] = "Neon",[3] = {[29] = "Tail1"}}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
wait(.5)
local args = {[1] = "Material",[2] = "Concrete",[3] = {[29] = "Tail1"}}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
local args = {[1] = "Material",[2] = "Neon",[3] = {[29] = "Tail2"}}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
wait(.5)
local args = {[1] = "Material",[2] = "Concrete",[3] = {[29] = "Tail2"}}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
local args = {[1] = "Material",[2] = "Neon",[3] = {[29] = "Tail3"}}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
wait(.5)
local args = {[1] = "Material",[2] = "Concrete",[3] = {[29] = "Tail3"}}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
local args = {[1] = "Material",[2] = "Neon",[3] = {[29] = "Tail5"}}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
wait(.5)
local args = {[1] = "Material",[2] = "Concrete",[3] = {[29] = "Tail5"}}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
local args = {[1] = "Material",[2] = "Neon",[3] = {[29] = "Tail6"}}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
wait(.5)
local args = {[1] = "Material",[2] = "Concrete",[3] = {[29] = "Tail6"}}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
wait(.5)
	end
end,false)
local Button = Section.NewButton("Make Charictar",function()
local A_1 = "Material"
local A_2 = "CrackedLava"
local A_3 = 
{
	[1] = "EyeColor", 
}
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "HairF"
local A_2 = "Spiky"
local Event = game:GetService("ReplicatedStorage").Accessories
Event:FireServer(A_1, A_2)
local A_1 = "Fluff"
local A_2 = "ChestFluff"
local A_3 = 0
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Fluff"
local A_2 = "BackFluff"
local A_3 = 0
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Fluff"
local A_2 = "EarFluff"
local A_3 = 0
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Fluff"
local A_2 = "JawFluff"
local A_3 = 0
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Fluff"
local A_2 = "LegFluff"
local A_3 = 0
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Fluff"
local A_2 = "TailFluff"
local A_3 = 0
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "LoadFile1Colours"
local A_2 = "2"
local A_3 = "É,˜1µÚ+t╥Â4´ÆÊ↨╓"
local Event = game:GetService("ReplicatedStorage").Save
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = "Accessories"
local A_2 = Color3.new(1, 1, 1)
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2)
local A_1 = "Wings"
local A_2 = 0
local A_3 = "拚戬i뜒(ɬXD"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Dragon"
local A_2 = 0
local A_3 = "拚戬i뜒(ɬXD"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local R = game:GetService("ReplicatedStorage")
local MK1, AC = R.MasterKey, R.Accessories
local fluff = {}
for _,v in next,game:service'Players'.LocalPlayer.Character:children()do
    if v:IsA'BasePart'and (v.Name:find'Dragon'or v.Name:find'Ear'or table.find(fluff,v.Name))then
        MK1:FireServer("Fluff", v.Name, 0) --   |  1 - invisible  |  0 - visible  | 
    elseif v.Name=='EarFluff'or v.Name=='Claws'or v.Name:find'Paw'or v.Name=='Pads' then
        MK1:FireServer('Fluff', v.Name, 1)
    end
end
local R = game:GetService("ReplicatedStorage")
local MK1, AC = R.MasterKey, R.Accessories
for _,v in next,game:service'Players'.LocalPlayer.Character:children()do
    if v:IsA'BasePart'and (v.Name=='EarFluff'or v.Name=='Claws'or v.Name:find'Paw'or v.Name=='Pads')then
        MK1:FireServer("Fluff", v.Name, 1)
    end
end
local A_1 = "PiercingsF"
local A_2 = "Septum"
local Event = game:GetService("ReplicatedStorage").Accessories
Event:FireServer(A_1, A_2)
local A_1 = "Accessories"
local A_2 = Color3.new(0.960784, 0.529412, 0.141176)
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2)
local A_1 = "AccessoryMaterial"
local A_2 = "Neon"
local A_3 = "PiercingsF"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
end) 
local EnabledToggle = Section.NewToggle("Cop Ears",function(bool)
	if _G.Cop then
		_G.Cop = false
		return
	else
		_G.Cop = true
	end	
local A_1 = "Material"
local A_2 = "Neon"
local A_3 = 
{
	[1] = "RightEar", 
}
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Material"
local A_2 = "Neon"
local A_3 = 
{
	[1] = "LeftEar", 
}
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
while _G.Cop do
local A_1 = "RightEar"
local A_2 = Color3.new(0, 0, 900)
local A_3 = "Advanced"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "LeftEar"
local A_2 = Color3.new(900, 0, 0)
local A_3 = "Advanced"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
wait(.5)
local A_1 = "RightEar"
local A_2 = Color3.new(900, 0, 0)
local A_3 = "Advanced"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
local A_1 = "LeftEar"
local A_2 = Color3.new(0, 0, 900)
local A_3 = "Advanced"
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3)
wait(.5)
end
end,false)
local Button = Section.NewButton("Horns+Ears",function()
local R = game:GetService("ReplicatedStorage")
local MK1, AC = R.MasterKey, R.Accessories
local fluff = {}
for _,v in next,game:service'Players'.LocalPlayer.Character:children()do
    if v:IsA'BasePart'and (v.Name:find'Dragon'or v.Name:find'Ear'or table.find(fluff,v.Name))then
        MK1:FireServer("Fluff", v.Name, 0) --   |  1 - invisible  |  0 - visible  | 
    elseif v.Name=='EarFluff'or v.Name=='Claws'or v.Name:find'Paw'or v.Name=='Pads' then
        MK1:FireServer('Fluff', v.Name, 1)
    end
end

local R = game:GetService("ReplicatedStorage")
local MK1, AC = R.MasterKey, R.Accessories
for _,v in next,game:service'Players'.LocalPlayer.Character:children()do
    if v:IsA'BasePart'and (v.Name=='EarFluff'or v.Name=='Claws'or v.Name:find'Paw'or v.Name=='Pads')then
        MK1:FireServer("Fluff", v.Name, 1)
    end
end
end)
function playerCheck(p)
	if type(p)=='boolean'or p == nil then return false end
	if game:GetService('Players'):FindFirstChild(p)then
		return game:GetService('Players'):FindFirstChild(p)
	end
end
local function findPlayer(name)
	for _,p in next,game:GetService('Players'):GetPlayers()do
		local pn = string.lower(p.Name)
		local pd = string.lower(p.DisplayName)
		if (string.sub(name,1,#name)==string.sub(pn,1,#name) or string.sub(name,1,#name)==string.sub(pd,1,#name)) then
			return p
		end
	end
	return false
end
local NAME,USER = '',nil
local plr = Section.Newtextbox('Player Name',function(self,value)
	local find = findPlayer(value)
	if find then
		NAME,USER = find.Name,find
		self.Text = find.Name
	else
		self.Text = 'User not found'
	end
end)
local copyWolfVars = {HairF = {["Long"] = '1.1634',["Spiky"] = '0.53845',["Swiped Back"] = '0.71497',["Punk"] = '0.57207',["Lonely Woof"] = '1.0990',["Ewooftional"] = '1.0871',["Braided"] = '1.3539',["Scene"] = '0.94984',["Curly"] = '1.1623',["Long straight"] = '1.1057',["Bed Head"] = '1.2428',["Emo-Punk"] = '0.74069',["Spiky Punk"] = '0.54955',["Short Spiky"] = '1.4760',["Long Spiky"] = '1.4688',["Sidecut"] = '1.2984',["Long Sidecut"] = '0.74951',["Extreme-Edge"] = '1.1373'},TorsoF = {["Swords"] = '2.3725',["Cape"] = '1.6089',["Guitar"] = '1.7366',["Medic"] = '0.2127',["Flower"] = '1.1194',["Rope"] = '1.2306',["RippedShirt"] = '1.1532',["Bags"] = '1.2729',["SwordSet1"] = '0.21984',["SwordSet2"] = '3.3593',["Sword1"] = '0.24967',["Sword2"] = '0.080584',["Chains"] = '1.2260',["Leaves"] = '1.473',["Backpack"] = '1.2158',["Scars"] = '0.73279'},FeetF = {["Slider Bracelets"] = '0.49548',["Cross Bracelets"] = '0.48346',["Winter Boots"] = '0.56080',["Leaves"] = '0.6',["Double Bracelets"] = '0.36447'},fluffs = {'ChestFluff','BackFluff','EarFluff','JawFluff','TailFluff','LegFluff','Fat','ChubbyCheeks'}}
local VARS = {
	_fKEY = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151".."\153",
	_tKEY = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD",}
Section.NewButton('Copy Wolf',function()
	local _acesory = game:GetService('ReplicatedStorage').Accessories
	local _maKEY = game:GetService('ReplicatedStorage').MasterKey
	local _maKEY2 = game:GetService('ReplicatedStorage').MasterKey2
	local plr = playerCheck(NAME)
	if plr then
		coroutine.resume(coroutine.create(function()
			local char = plr.Character or false
			local spchar = game:GetService('Players').LocalPlayer.Character or false
			local head = char and char:FindFirstChild('Head') or false
			local sphead = spchar and spchar:FindFirstChild('Head') or false
			local nmt = head and head:FindFirstChild('NameTag') or false
			local spnmt = sphead and sphead:FindFirstChild('NameTag') or false
			local mnt = nmt and nmt:FindFirstChild('Main') or false
			local spmnt = spnmt and spnmt:FindFirstChild('Main') or false
			if spchar and sphead and char and head then
				local function arg(a,b,v)
					if a==1 then
						return unpack{[1] = "customize",[2] = {[1] = v.Name},[3] = v.Color,[4] = "Body"}
					elseif a==2 then
						return unpack{[1] = v,[2] = b,[3] = VARS._tKEY}
					elseif a==3 then
						return unpack{[1] = "Material",[2] = v.Material,[3] = {[1] = v.Name}}
					end
				end
				_acesory:FireServer("remove",'HairF')
				_acesory:FireServer("remove",'TorsoF')
				_acesory:FireServer("remove",'FeetF')task.wait()
				_maKEY2:FireServer("LeavePack")
				if(mnt and mnt:FindFirstChild('Pack') and mnt:FindFirstChild('Pack').Text~='No Pack')then
					task.delay(.4,function()
						local args = {
							[1] = "CreatePack",
							[2] = mnt:FindFirstChild('Pack')and mnt:FindFirstChild('Pack').Text..''or false
						}
						if(mnt:FindFirstChild('Pack')and mnt:FindFirstChild('Pack').Text:sub(1,8)=='[ALPHA] ')then
							args[2] = args[2]:sub(8,#args[2])..''
						end
						_maKEY2:FireServer(unpack(args))
					end)
				end
				if(mnt and mnt:FindFirstChild('Username'))then
					_maKEY:FireServer("ChangeName", mnt:FindFirstChild('Username')and mnt:FindFirstChild('Username').Text or false, VARS._fKEY)
				end
				if(mnt and mnt:FindFirstChild('Description'))then
					_maKEY:FireServer("ChangeDesc", mnt:FindFirstChild('Description')and mnt:FindFirstChild('Description').Text or false, VARS._fKEY)
				end
				if not mnt then task.wait(.1)
					_maKEY:FireServer("ChangeName", string.rep('HERE\nBYTE\n',200), VARS._fKEY)
					_maKEY:FireServer("ChangeDesc", string.rep('HERE\nBYTE\n',200), VARS._fKEY)
					_maKEY2:FireServer("CreatePack", string.rep('e\n\n',15))
				end
				if char:FindFirstChild("RightWing3") and char:FindFirstChild("RightWing3").Transparency == 0 then
					_maKEY:FireServer(arg(2,0,'Wings'))
				else _maKEY:FireServer(arg(2,1,'Wings'))end
				if char:FindFirstChild("OceanPrimary") and char:FindFirstChild("OceanPrimary").Transparency == 0 then
					_maKEY:FireServer(arg(2,0,'Ocean'))
				else _maKEY:FireServer(arg(2,1,'Ocean'))end
				if char:FindFirstChild("DragonThird") and char:FindFirstChild("DragonThird").Transparency == 0 then
					_maKEY:FireServer(arg(2,0,'Dragon'))
				else _maKEY:FireServer(arg(2,1,'Dragon'))end
				if char:FindFirstChild('HairF')then
					for c,v in next,char:FindFirstChild('HairF'):children()do
						if v:IsA('BasePart')then
							for b,a in next,copyWolfVars.HairF do
								if tostring(v.Size.X):sub(1,#a) == a then
									_acesory:FireServer('HairF',b)task.wait(.1)
									_maKEY:FireServer("Accessories",v.Color)
									_maKEY:FireServer("AccessoryMaterial",v.Material,"HairF")break
								end
							end
						end
					end
				end
				if char:FindFirstChild('TorsoF')then
					for c,v in next,char:FindFirstChild('TorsoF'):children()do
						if v:IsA('BasePart')or v.Name:find('Color1')then
							for b,a in next,copyWolfVars.TorsoF do
								if tostring(v.Size.X):sub(1,#a) == a then
									task.wait(.25)
									_acesory:FireServer('TorsoF',b)task.wait(.1)
									_maKEY:FireServer("Accessories",v.Color)
									_maKEY:FireServer("AccessoryMaterial",v.Material,"TorsoF")break
								end
							end
						end
					end
				end
				if char:FindFirstChild('FeetF')then
					for c,v in next,char:FindFirstChild('FeetF'):children()do
						if v:IsA('BasePart')or v.Name:find('Hat')then
							for b,a in next,copyWolfVars.FeetF do
								if tostring(v.Size.X):sub(1,#a) == a then
									task.wait(.25)
									_acesory:FireServer('FeetF',b)task.wait(.1)
									_maKEY:FireServer("Accessories",v.Color)
									_maKEY:FireServer("AccessoryMaterial",v.Material,"FeetF")break
								end
							end
						end
					end
				end
				for _,f in next, char:children()do
					if table.find(copyWolfVars.fluffs,f.Name)then
						if f:IsA('BasePart')then
							if f.Transparency==0 then
								_maKEY:FireServer("Fluff", f.Name, 0)
							else _maKEY:FireServer("Fluff", f.Name, 1)end
						end
					end
				end
				for _,v in next, char:GetChildren()do
					if v:IsA('BasePart')then
						_maKEY:FireServer("customize", {[1] = v.Name}, v.Color, "Body")
						_maKEY:FireServer("Material", v.Material, {[1] = v.Name})
					end
				end
			end
		end))
	end
end)
local enableSeats = Section.NewButton('Enable Sit',function()
    if USER then
        for i,v in pairs(USER.Character:GetChildren()) do
            if v:IsA('Seat') then
                v.Disabled = false
            end
        end
    end
end)
local Button = Section.NewButton("Female",function()
	local args = {[1] = "Female"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Male",function()
	local args = {[1] = "Male"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("File 1",function()
	local args = {[1] = "LoadFile1Colours",[2] = "1",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
local Button = Section.NewButton("File 2",function()
	local args = {[1] = "LoadFile1Colours",[2] = "2",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
local Button = Section.NewButton("File 3",function()
	local args = {[1] = "LoadFile1Colours",[2] = "3",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
local Button = Section.NewButton("Save 1",function()
	local args = {[1] = "SaveFile1Colours",[2] = "1",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
local Button = Section.NewButton("Save 2",function()
	local args = {[1] = "SaveFile1Colours",[2] = "2",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
local Button = Section.NewButton("Save 3",function()
	local args = {[1] = "SaveFile1Colours",[2] = "3",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
local Button = Section.NewButton("Explorer",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Syr0nix/DEX-Synapse-Edition/main/DEX'))();
end)
local Button = Section.NewButton("Syr0nix Custom",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Syr0nix/Syr0nix-Customs/main/Syr0nix%20Customs'))();
end)
local Button = Section.NewButton("Block Me",function()
	for _,v in next,game.Players.LocalPlayer.Character:children()do
		if v:IsA'BasePart'and v.Name~='HumanoidRootPart'then
			game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
		elseif v:IsA'BasePart'and v.Name=='HumanoidRootPart'then
			game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 0)
		end
	end
end)
local Tab = Window.NewTab("presets")
local Section = Tab.NewSection("presets")
local Button = Section.NewButton("ghost wolf",function()
	local char = game:GetService('Players').LocalPlayer.Character
	for i,v in pairs(char:GetChildren()) do
		if (v.Name == 'HumanoidRootPart' or v:IsA('Seat') or v.Name:find'Tooth' or v.Name == 'JawWeldPart' or v.Name:find'Toungue') then
			game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
		elseif v:IsA('BasePart') and v.Transparency == 0  then
			game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, .8)
		end
	end
end)
_G.Rainbowwings = false
local EnabledToggle = Section.NewToggle("Rainbow wings",function(bool)
	if _G.Rainbowwings then
		_G.Rainbowwings = false
		return
	else
		_G.Rainbowwings = true
	end	
		local Mat = "Neon"
	local SecondaryArgs={[1]="Material",[2]=Mat,[3]={[1]="DragonThird",[2]="DragonPrimary",[3]="OceanPrimary",[4]="Nose",[5]="EyeColor",}}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(SecondaryArgs))
	while _G.Rainbowwings do
		task.wait()
			local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
			mk1:FireServer("customize", {[1] = "EyeColor",[2] = "Nose",[3] = "DragonPrimary",[4] = "DragonThird",[5] = "OceanPrimary", },Color3.new(RBW_COL.R,RBW_COL.G,RBW_COL.B),"Body")
	end
	
end,false)
local Button = Section.NewButton("all neon",function()
    local Mat = "Neon"
    local Hair = {[1] = "AccessoryMaterial",[2] = Mat,[3] = "HairF"}
    local Torso = {[1] = "AccessoryMaterial",[2] = Mat,[3] = "TorsoF"}
    local Legs = {[1] = "AccessoryMaterial",[2] = Mat,[3] = "FeetF"}
    local SecondaryArgs={[1]="Material",[2]=Mat,[3]={[1]="DragonSecondary",[2]="OceanSecondary",[3]="ChubbyCheeks",[4]="Fat",[5]="EarFluff",[6]="JawFluff",[7]="ChestFluff",[8]="LegFluff",[9]="Eyebrow1",[10]="Eyebrow2",[11]="Secondary",[12]="Jaw",[13]="RightShoulder",[14]="RightLowerLeg",[15]="RightLowerArm",[16]="RightLeg",[17]="RightFootPaw",[18]="LeftArm",[19]="LeftArmPaw",[20]="LeftCarpal",[21]="LeftFootPaw",[22]="LeftLeg",[23]="LeftLowerArm",[24]="LeftLowerLeg",[25]="LeftShoulder",[26]="RightArm",[27]="RightArmPaw",[28]="RightCarpal",[29]="DragonThird"}}
    local PrimaryArgs={[1]="Material",[2]=Mat,[3]={[1]="DragonPrimary",[2]="OceanPrimary",[3]="BackFluff",[4]="TailFluff",[5]="LeftWingStart",[6]="LeftWing2",[7]="LeftWing3",[8]="RightWingStart",[9]="RightWing2",[10]="RightWing3",[11]="EyeLid",[12]="Torso",[13]="Tail1",[14]="Tail2",[15]="Tail3",[16]="Tail5",[17]="Tail6",[18]="RightThigh",[19]="RightEar",[20]="EyeLid",[21]="Head",[22]="Hip",[23]="LeftEar",[24]="LeftThigh",[25]="Muzzle",[26]="Neck",[27]="NeckReal",[28]="Nose",}}
    --
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(Hair))
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(Torso))
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(Legs))
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(SecondaryArgs))
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(PrimaryArgs))
end)
local Button = Section.NewButton("Neon Toungue",function()
	--Made by syr0nix
	local args = {[1] = "Material",[2] = "Neon",[3] = {[29] = "Toungue1",[30] = "Toungue2"}}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Tab = Window.NewTab("Objects")
local Section = Tab.NewSection("Lazy Ass")
local Button = Section.NewButton("Raw Venison",function()
	local items = {['Raw Venison'] = workspace.ItemOnes['Raw Venison'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Venison')
end)
local Button = Section.NewButton("Raw Porkchop",function()
	local items = {['Raw Porkchop'] = workspace.ItemOnes['Raw Porkchop'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Porkchop')
end)
local Button = Section.NewButton("Raw Chicken Leg",function()
	local items = {['Raw Chicken Leg'] = workspace.ItemOnes['Raw Chicken Leg'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Chicken Leg')
end)
local Button = Section.NewButton("Raw Chicken Breast",function()
	local items = {['Raw Chicken Breast'] = workspace.ItemOnes['Raw Chicken Breast'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Chicken Breast')
end)
local Button = Section.NewButton("Raw Rabbit",function()
	local items = {['Raw Rabbit'] = workspace.ItemOnes['Raw Rabbit'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Rabbit')
end)
local Button = Section.NewButton("Raw Beef",function()
	local items = {['Raw Beef'] = workspace.ItemOnes['Raw Beef'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Beef')
end)
local Button = Section.NewButton("Duck",function()
	local items = {['Duck'] = workspace.ItemOnes['Duck'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Duck')
end)
local Button = Section.NewButton("Football",function()
	local items = {['Football'] = workspace.ItemOnes['Football'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Football')
end)
local Button = Section.NewButton("Fish",function()
	local items = {['fish'] = workspace.ItemOnes['Raw Fish'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('fish')
end)
local Button = Section.NewButton("Ball",function()
	local items = {['Ball'] = workspace.ItemOnes['Ball'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Ball')
end)
local Button = Section.NewButton("Torch",function()
	local items = {['Torch'] = workspace.GroupedItems.Torch.Handle,}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Torch')
end)
local Button = Section.NewButton("Bone",function()
	local items = {['Bone'] = workspace.GroupedItems.Bone}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Bone')
end)
local Button = Section.NewButton("TeddyBear",function()
	local items = {['TeddyBear'] = workspace.GroupedItems.TeddyBear}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('TeddyBear')
end)
local Button = Section.NewButton("Stick",function()
	local items = {['Stick'] = workspace.GroupedItems.Stick}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Stick')
end)
local Button = Section.NewButton("Bunny",function()
	local items = {['Bunny'] = workspace.Bunnies.Bunny['Hit'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Bunny')
end)
local Tab = Window.NewTab("Toggles")
local Section = Tab.NewSection("wana be sick")
_G.rbweyes = false
local EnabledToggle = Section.NewToggle("Rainbow Eyes",function(bool)
	if _G.rbweyes then
		_G.rbweyes = false
		return
	else
		_G.rbweyes = true
	end
	local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
	while _G.rbweyes do
		task.wait()
		local args = {"customize",{ [10] = "EyeColor" },Color3.new(RBW_COL.R,RBW_COL.G,RBW_COL.B),"Body"}
		mk1:FireServer(unpack(args))
	end
end,false)
hsv = Color3.fromHSV
_G.rbwtag = false
local EnabledToggle = Section.NewToggle("Rainbow Tag",function(bool)
	if _G.rbwtag then
		_G.rbwtag = false
		return
	else
		_G.rbwtag = true
	end
	local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
	while _G.rbwtag do
		task.wait()
		local h,s,v = RBW_COL:ToHSV()
		local args = {[1] = "ChangeColor",[2] = {hsv(h,s,v).R,hsv(h,s,v).G,hsv(h,s,v).B},[3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151".."\153"}
		mk1:FireServer(unpack(args))
	end
end,false)
_G.faderbw = false
local EnabledToggle = Section.NewToggle("Rainbow Fade",function(bool)
	if _G.faderbw then
		_G.faderbw = false
		return
	else
		_G.faderbw = true
	end
	local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
	local spd = 4
	while _G.faderbw do
		for i = 0,1,0.001*spd do
			if _G.faderbw == false then return end
			col = Color3.fromHSV(i,1,1)
			local args = {[1] = "ChangeColor",[2] = {col.G,col.B,col.B},[3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151".."\153"}
			mk1:FireServer(unpack(args))
			wait()
		end
		for i = 0,1,0.001*spd do
			if _G.faderbw == false then return end
			col = Color3.fromHSV(i,1,1)
			local args = {[1] = "ChangeColor",[2] = {col.B,col.B,col.G},[3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151".."\153"}
			mk1:FireServer(unpack(args))
			wait()
		end
		for i = 0,1,0.001*spd do
			if _G.faderbw == false then return end
			col = Color3.fromHSV(i,1,1)
			local args = {[1] = "ChangeColor",[2] = {col.r,col.B,col.R},[3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151".."\153"}
			mk1:FireServer(unpack(args))
			wait()
		end
	end
end,false)
_G.rbwparti = false
local EnabledToggle = Section.NewToggle("Rainbow Particles",function(bool)
	if _G.rbwparti then
		_G.rbwparti = false
		return
	else
		_G.rbwparti = true
	end
	local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
	while _G.rbwparti do
		task.wait()
		local args = {[1] = "ColorParticle",[2] = RBW_COL}
		mk1:FireServer(unpack(args))
	end
end,false)
_G.rbwwolf = false
local EnabledToggle = Section.NewToggle("Rainbow wolf",function(bool)
	if _G.rbwwolf then
		_G.rbwwolf = false
		return
	else
		_G.rbwwolf = true
	end
	local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
	while _G.rbwwolf do
		task.wait()
		local args = {[1] = "customize",[2] = {[1] = "LeftArm",[2] = "LeftShoulder",[3] = "Pads",[4] = "LeftArmPaw",[5] = "LeftLowerArm",[6] = "RightArm",[7] = "RightFootPaw",[8] = "LeftLeg",[9] = "LeftThigh",[10] = "LeftFootPaw",[11] = "Tail3",[12] = "Tail1",[13] = "Eyebrow1",[14] = "Eyebrow2",[15] = "Tail2",[16] = "Nose",[17] = "LeftEar",[18] = "Head",[19] = "InsideEars",[20] = "RightEar",[21] = "RightThigh",[22] = "Hip",[23] = "Muzzle",[24] = "Tail5",[25] = "RightShoulder",[26] = "Torso",[27] = "EyeLid",[28] = "Jaw",[29] = "RightArmPaw",[30] = "RightLeg",[31] = "LeftLowerLeg",[32] = "RightLowerLeg",[33] = "LeftWingStart",[34] = "RightWing3",[35] = "LeftWing3",[36] = "RightWingStart",[37] = "LeftWing2",[38] = "RightWing2",[39] = "RightLowerArm",[40] = "Secondary",[41] = "BackFluff",[42] = "ChestFluff",[43] = "EarFluff",[44] = "JawFluff",[45] = "LegFluff",[46] = "TailFluff",[47] = "Fat",[48] = "Claws",[49] = "EyeColor",[50] = "Pupils",[51] = "Gum",[52] = "lash",[53] = "Toungue1",[54] = "Toungue2",[55] = "Tooth",[56] = "Neck",[57] = "White",[58] = "JawWeldPart",[59] = "Back",[60] = "UpperTooth",[61] = "DragonThird",[62] = "DragonClaws",[63] = "DragonSecondary",[64] = "OceanPrimary",[65] = "OceanSecondary",[66] = "DragonPrimary"},[3] = RBW_COL,[4] = "Body"}
		mk1:FireServer(unpack(args))
	end
end,false)
_G.rbwhair = false
local EnabledToggle = Section.NewToggle("Rainbow Hair",function(bool)
	if _G.rbwhair then
		_G.rbwhair = false
		return
	else
		_G.rbwhair = true
	end
	local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
	while _G.rbwhair do
		task.wait()
		local args = {[1] = "Accessories",[2] = RBW_COL}
		mk1:FireServer(unpack(args))
	end
end)
_G.MonoChromeFade = false
local EnabledToggle = Section.NewToggle("Mono Fade tag",function(bool)
	if _G.MonoChromeFade then
		_G.MonoChromeFade = false
		return
	else
		_G.MonoChromeFade = true
	end
	local RS = game:service('ReplicatedStorage')
	local mk1 = RS:FindFirstChild('MasterKey')
	local spd = 6
	while _G.MonoChromeFade do
		for i = 0,1,0.001*spd do
			col = Color3.fromHSV(i,1,1)
			local args = {[1] = "ChangeColor",[2] = {col.R,col.R,col.R},[3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151".."\153"}
			mk1:FireServer(unpack(args))
			wait()
		end
	end
end)
_G.particlefade = false
-- settings
-- COLOR1 and COLOR2 is RGB colors, so find some site for RGB colors and replace 0,0,0 or 1,1,1 to colors what you want
-- but don't touch () and any other things, only numbers!!!
-- 0,0,0 - black
-- 255,255,255 - white
-- will fade from white to blue, cause first color is white
local COLOR1 = Color3.fromRGB(255,255,255) -- first color
local COLOR2 = Color3.fromRGB(0,0,0) -- second color
local SPEED = 1
-- .1 / .2 / .3 tho numbers, just without 0, like 0.3

-- additional variables
local Remote = game:GetService('ReplicatedStorage'):FindFirstChild('MasterKey')
local KEY = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151".."\153"
local first_color = Instance.new('Color3Value') -- first value
first_color.Value = COLOR1
local second_color = Instance.new('Color3Value') -- second value
first_color.Value = COLOR2
local current_color = Instance.new('Color3Value') -- fading value
current_color.Value = first_color.value
local TweenService = game:GetService('TweenService') -- get tween service

local EnabledToggle = Section.NewToggle("particlefade",function(bool)
	if _G.particlefade then
		_G.particlefade = false
		return
	else
		_G.particlefade = true
	end
	while _G.particlefade do 
		task.wait()
		-- starts loop, until _G.particlefade will equals false
		-- for this fade script to make it with speed I recommend u put EasingStyle.Linear
		if current_color.Value == second_color.Value then -- check if curr color is second to start fade to first color
			TweenService:Create(current_color,TweenInfo.new(SPEED,Enum.EasingStyle.Linear),{Value = first_color.Value}):play()
		elseif current_color.Value == first_color.Value then -- same but here first color to second
			TweenService:Create(current_color,TweenInfo.new(SPEED,Enum.EasingStyle.Linear),{Value = second_color.Value}):play()
		end
		Remote:FireServer("ColorParticle", current_color.Value) -- fire remote to server, change color of particle
	end -- end loop and start again
end)
local Tab = Window.NewTab("Teleports")
local Section = Tab.NewSection("Forest Biome")
local Button = Section.NewButton("Forest Biome",function()
	local args = {[1] = "Spawn",[2] = "Forest Biome"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Pup Adoption",function()
	local args = {[1] = "Spawn",[2] = "Adoption"}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("School",function()
	local args = {[1] = "Spawn",[2] = "School"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Store",function()
	local args = {[1] = "Spawn",[2] = "Store"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Jail",function()
	local args = {[1] = "Spawn",[2] = "Jail"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Camp",function()
	local args = {[1] = "Spawn",[2] = "Camp"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Cafe",function()
	local args = {[1] = "Spawn",[2] = "Caf\195\169"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Section = Tab.NewSection("Redwood Biome")
local Button = Section.NewButton("Redwood Biome",function()
	local args = {[1] = "Spawn",[2] = "Redwood Biome"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Restaurant",function()
	local args = {[1] = "Spawn",[2] = "Restaurant"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Medic Centre",function()
	local args = {[1] = "Spawn",[2] = "Medic Centre"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Section = Tab.NewSection("Snow Biome")
local Button = Section.NewButton("Snow Biome",function()
	local args = {[1] = "Spawn",[2] = "Snow Biome"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Ice Lake",function()
	local args = {[1] = "Spawn",[2] = "Ice Lake"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Ice Bath",function()
	local args = {[1] = "Spawn",[2] = "Ice Bath"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Section = Tab.NewSection("Beach Biome")
local Button = Section.NewButton("Beach Biome",function()
    local args = {[1] = "Spawn",[2] = "Beach Biome"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Volcano",function()
	local args = {[1] = "Spawn",[2] = "Volcano"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local ImageButton = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
ImageButton.Parent = game.CoreGui.Library
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0, 0, 0, 354)
ImageButton.Size = UDim2.new(0, 31, 0, 100)
ImageButton.Image = "rbxassetid://14665528185"
UIAspectRatioConstraint.Parent = ImageButton
UIAspectRatioConstraint.AspectRatio = 0.310
local function open()
	game:GetService("CoreGui").Library.Main.Visible = true	
end
local function close()
	game:GetService("CoreGui").Library.Main.Visible = false
end
ImageButton.MouseButton1Click:Connect(open)
ImageButton.MouseButton2Click:Connect(close)

print "unuiuxue#6291 is gay and you suck this nuts ;0 and peace mad lol (also syro is bad!11!!)"

print "hah you all suck nutz!!111!!!!111! - Colby"
