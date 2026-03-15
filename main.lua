local f = fs.open("userData/name.txt","r")
local playerName = f.readAll()
f.close()
term.clear()
term.setCursorPos(1,1)

-- Basalt 2 Generated Code
local basalt = require("basalt")
local requestScreen = nil

-- Create main frame

local mainFrame = basalt.createFrame()
    :setSize(26, 20)

local main = mainFrame:addFrame()
    :setSize(26, 20)

-- Container element
local element1 = main:addContainer()
    :setSize(26, 20)
    :setBackground(colors.lightGray)

-- Container element
local border0 = main:addContainer()
    :setSize(1, 20)
    :setBackground(colors.brown)

-- Container element
local border1 = main:addContainer()
    :setSize(26, 1)
    :setBackground(colors.brown)

-- Container element
local border2 = main:addContainer()
    :setPosition(1, 20)
    :setSize(26, 1)
    :setBackground(colors.brown)

-- Container element
local border3 = main:addContainer()
    :setPosition(26, 1)
    :setSize(1, 20)
    :setBackground(colors.brown)

-- Label element
local element6 = main:addLabel()
    :setPosition(2, 2)
    :setSize(24, 1)
    :setText("Hello ".. playerName.. ",")

-- Button element
local goToRequests = main:addButton()
    :setPosition(8, 5)
    :setSize(12, 3)
    :setText("Requests")
    :setBackground(colors.cyan)


-- Button element
local element8 = main:addButton()
    :setPosition(8, 10)
    :setSize(12, 3)
    :setText("Donations")
    :setBackground(colors.cyan)

-- Button element
local element9 = main:addButton()
    :setPosition(7, 15)
    :setSize(14, 3)
    :setText("Contributions")
    :setBackground(colors.cyan)

-- Request Screen
local items = {
    "Spruce Logs",
    "Oak Logs",
    "Maple Logs",
    "Birch Logs",
    "Jungle Logs",
    "Acacia Logs"
}

    -- Create main frame
    requestScreen = mainFrame:addFrame()
        :setSize(26, 20)
    
    -- Container element
    local element1 = requestScreen:addContainer()
        :setSize(26, 20)
    
    -- Container element
    local element2 = requestScreen:addContainer()
        :setSize(1, 20)
        :setBackground(colors.brown)
    
    -- Container element
    local element3 = requestScreen:addContainer()
        :setPosition(26, 1)
        :setSize(1, 20)
        :setBackground(colors.brown)
    
    -- Container element
    local element4 = requestScreen:addContainer()
        :setSize(26, 1)
        :setBackground(colors.brown)
    
    -- Container element
    local element5 = requestScreen:addContainer()
        :setPosition(1, 20)
        :setSize(26, 1)
        :setBackground(colors.brown)
    
    -- Container element
    local element6 = requestScreen:addContainer()
        :setPosition(2, 2)
        :setSize(24, 18)
        :setBackground(colors.lightGray)
    
    -- List element
    local list = requestScreen:addList()
        :setPosition(3, 6)
        :setSize(22, 12)
        :setSelectedBackground(colors.green)
        :setBackground(colors.black)
        :setForeground(colors.white)
    
    -- Button element
    local element8 = requestScreen:addButton()
        :setPosition(17, 19)
        :setSize(8, 1)
        :setText("Request")
        :setBackground(colors.green)
    
    -- Input element
    local searchBar = requestScreen:addInput()
        :setPosition(11, 5)
        :setSize(14, 1)
        :setPlaceholder("type here...")
        :setBackground(colors.black)
        :setPlaceholderColor(colors.lightGray)
    
    -- Label element
    local element10 = requestScreen:addLabel()
        :setPosition(3, 5)
        :setText("Search:")
    

    goToRequests:onClick(function (self)
        main:setVisible(false)
        requestScreen:setVisible(true)
    end)

    local function updateList(filter)

        list:clear()
    
        for _,item in ipairs(items) do
            if filter == nil or filter == "" then
                list:addItem(" "..item)
    
            elseif string.find(string.lower(item), string.lower(filter)) then
                list:addItem(" "..item)
            end
        end

    end
    updateList()

    searchBar:onStateChange(function(self, value)
        updateList(value)
    end)

-- Start the UI

requestScreen:setVisible(false)
basalt.run()
