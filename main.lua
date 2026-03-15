local f = fs.open("userData/name.txt","r")
local playerName = f.readAll()
f.close()
term.clear()
term.setCursorPos(1,1)

-- Basalt 2 Generated Code
local basalt = require("basalt")
local requestScreen = nil

-- Create main frame
local main = basalt.createFrame()
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
goToRequests:onClick(function (self)
    main.setVisible(false)
    requestScreen(true)
end)

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
    requestScreen = main:addFrame()
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
    local element7 = requestScreen:addList()
        :setPosition(2, 2)
        :setSize(14, 18)
        :setItems({"Spruce Oak Logs", "Maple Logs"})

-- Start the UI

requestScreen.setVisible(false)
basalt.run()
