-- Basalt 2 Generated Code
local basalt = require("basalt")

-- Create main frame
local main = basalt.createFrame()
    :setSize(26, 20)

-- Container element
local element1 = main:addContainer()
    :setSize(26, 20)

-- Label element
local element2 = main:addLabel()
    :setPosition(6, 3)
    :setSize(17, 1)
    :setText("What's your name?")

-- Label element
local element3 = main:addLabel()
    :setPosition(6, 4)
    :setSize(6, 1)
    :setText("Enter:")

-- Input element
local element4 = main:addInput()
    :setPosition(12, 4)
    :setSize(11, 1)
    :setPlaceholder("BurgerBob")
    :setBackground(colors.lightBlue)

-- Button element
local element5 = main:addButton()
    :setPosition(8, 14)
    :setSize(12, 3)
    :setText("Confirm")
    :setBackground(colors.green)

-- Start the UI
basalt.autoUpdate()
