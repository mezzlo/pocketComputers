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
local main = mainFrame.addFrame()
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

    -- Create main frame
    requestScreen = mainFrame:addFrame()
        :setSize(26, 20)

    -- Container element
    local element11 = requestScreen:addContainer()
        :setSize(26, 20)

    -- Container element
    local element22 = requestScreen:addContainer()
        :setSize(1, 20)
        :setBackground(colors.brown)

    -- Container element
    local element33 = requestScreen:addContainer()
        :setPosition(26, 1)
        :setSize(1, 20)
        :setBackground(colors.brown)

    -- Container element
    local element44 = requestScreen:addContainer()
        :setSize(26, 1)
        :setBackground(colors.brown)

    -- Container element
    local element55 = requestScreen:addContainer()
        :setPosition(1, 20)
        :setSize(26, 1)
        :setBackground(colors.brown)

    -- Container element
    local element66 = requestScreen:addContainer()
        :setPosition(2, 2)
        :setSize(24, 18)
        :setBackground(colors.lightGray)

    -- List element
    local element77 = requestScreen:addList()
        :setPosition(2, 2)
        :setSize(14, 18)
        :setItems({"Spruce Oak Logs", "Maple Logs"})

    goToRequests:onClick(function (self)
        main:setVisible(false)
        requestScreen:setVisible(true)
    end)

-- Start the UI

requestScreen:setVisible(false)
basalt.run()
