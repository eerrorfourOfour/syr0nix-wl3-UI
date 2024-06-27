local UILib = Instance.new("ScreenGui")
UILib.Parent = game.CoreGui

local NotificationContainer = Instance.new("TextLabel")
NotificationContainer.Text = ""
NotificationContainer.Size = UDim2.new(0, 200, 0, 50)
NotificationContainer.Position = UDim2.new(0, 100, 100, -50)
NotificationContainer.BackgroundColor3 = UILibrary.TabSelectedColor
NotificationContainer.ZIndex = 2
UILib.Parent:AddChild(NotificationContainer)

-- Rest of your script
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local PrjName = "MyProject"
local HideKey = 17 -- Key code for hiding the menu
local UILibrary = {
    TabColor = BrickColor.new("Really red"),
    TabTextColor = Color3.new(1, 1, 1),
    TabSelectedColor = BrickColor.new("Bright blue"),
    TabSelectedTextColor = Color3.new(0, 0, 0)
}

local Tabs = {}
local CurrentTab = 1
local CurrentTabFrame
local TabHeaderFrame
local TabContainer
local NotificationContainer

-- Create the UI library
local UILib = Instance.new("ScreenGui")
UILib.Parent = game.CoreGui

-- Create the tab container
TabContainer = Instance.new("ScrollingFrame")
TabContainer.Name = "TabContainer"
TabContainer.BackgroundColor3 = UILibrary.TabColor
TabContainer.Size = UDim2.new(0, 250, 0, 500)
UILib.Parent:AddChild(TabContainer)

-- Create the notification container
NotificationContainer = Instance.new("TextLabel")
NotificationContainer.Text = ""
NotificationContainer.Size = UDim2.new(0, 200, 0, 50)
NotificationContainer.Position = UDim2.new(0, 100, 100, -50)
NotificationContainer.BackgroundColor3 = UILibrary.TabSelectedColor
NotificationContainer.ZIndex = 2
UILib.Parent:AddChild(NotificationContainer)

-- Create the tab header frame
TabHeaderFrame = Instance.new("Frame")
TabHeaderFrame.Name = "TabHeaderFrame"
TabHeaderFrame.BackgroundColor3 = UILibrary.TabColor
TabHeaderFrame.Size = UDim2.new(0, 250, 0, 30)
TabHeaderFrame.Position = UDim2.new(0, -250, -50, -30)
TabHeaderFrame.ZIndex = 2
UILib.Parent:AddChild(TabHeaderFrame)

-- Create the tab loader
local TabsLoader = Instance.new("ScreenGui")
TabsLoader.Name = "TabsLoader"
TabsLoader.Parent = UILib

-- Define the tabs
local function createTab(name)
    local newTabFrame = Instance.new("Frame")
    newTabFrame.Name = name
    newTabFrame.BackgroundColor3 = UILibrary.TabColor
    newTabFrame.Size = UDim2.new(0, 250, 0, 30)
    newTabFrame.Position = UDim2.new(0, -250, -50 + (CurrentTab * (30 + UILibrary.TabSpacing)), -30)
    newTabFrame.ZIndex = CurrentTab == #Tabs ? -1 : 1

    local newTabButtonLabel = Instance.new("TextLabel")
    newTabButtonLabel.Name = "newTabButtonLabel"
    newTabButtonLabel.TextScaled = true
    newTabButtonLabel.TextColor3 = UILibrary.TabTextColor
    newTabButtonLabel.BackgroundColorTransparency = 1
    newTabButtonLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY

    newTabFrame.Parent:AddChild(newTabButtonLabel)

    local function toggleTab()
        for i, v in pairs(Tabs) do
            if v ~= name then
                v.Frame.Visible = false
            else
                v.Frame.Visible = true
            end
        end

        CurrentTabChanged()
    end

    newTabButtonLabel.MouseButton1Down:Connect(toggleTab)

    return { name=name, Frame=newTabFrame }
end

-- Create the notification system
function showNotification(text)
    NotificationContainer.Text=text
end

-- Function to change the current tab when a tab is clicked
function CurrentTabChanged()
    if CurrentTab == #Tabs then
        CurrentTabFrame.Visible=false;
        CurrentTabIndex -=1;
        if CurrentTabIndex <= #Tabs then
            CurrentTabIndex +=1;
        else if CurrentTabIndex < #Tabs then 
            CurrentTabIndex +=1;
        end;
        CurrentTabIndex-=(CurrentTabIndex-#Tabs);
        end;
        end;

if CurrentTabIndex > #Tabs then return; end;
CurrentTabIndex=math.min(CurrentTabIndex,#Tabs);
if CurrentTabIndex < #Tabs then 
else if #Tabs <=#Tables then 
else return; 
end;
end;
for i=1,#Tabs do 
if i~=CurrentTabIndex then 
elseif i > #Tables then return; end;
end;
end;
for i=1,#Tables do 
if i~=CurrentTabIndex then 
else i=-i; end;
end;
end;
end;

function hide()
if GUI.InputBegan:connect(function(input) if input.KeyCode==Enum.KeyCode[HideKey] then UI.Container.Visible=false; end; end); hide end;

-- Create the tabs and initialize them

for i=1,#PrjName do 
     local tab=createTable();
     table.insert(Tabs,{name=PrjName[i],frame=tab.Frame})
     table.insert(TabContainer:children,Tabs[i].frame);
     table.insert(TabHeaderFrame.children,Tabs[i].frame);
     table.insert(TabsLoader.children,Tabs[i].frame);
   end;

   for i=1,#PrjName do 
     local tab=Tabs[i];
     local label=tab.frame.findFirstChild("TextButtonLabel");
     label.Text=PrjName[i];
   end;

   function update()
       for i=1,#PrjName do 
         local tab=Tabs[i];
         if i==CurrentTabIndex then 
           tab.frame.BackgroundColor3=UILibrary.TabSelectedColor;
           tab.frame.BorderSizePixel=4; else 
           tab.frame.BackgroundColor3=UILibrary.TabColor; 
           tab.frame.BorderSizePixel=0; end;
       end;
   end;

   function KeyPressed(input) if input.KeyCode==Enum.KeyCode[HideKey] then UI.Container.Visible=false; else return; end; end;

   -- Start updating every second

   while wait() do update(); end;
