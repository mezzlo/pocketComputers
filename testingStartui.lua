-- Basalt 2 Generated Code
local basalt = require("basalt")

-- Create main frame
local main = basalt.createFrame()
    :setSize(26, 20)

-- Container element
local element1 = main:addContainer()
    :setSize(26, 20)

-- Container element
local element2 = main:addContainer()
    :setPosition(5, 2)
    :setSize(19, 16)
    :setBackground(colors.lightGray)

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

-- Label element
local element5 = main:addLabel()
    :setPosition(6, 3)
    :setSize(17, 1)
    :setText("What's your name?")

-- Button element
local element6 = main:addButton()
    :setPosition(8, 14)
    :setSize(13, 3)
    :setText("Confirm")
    :setBackground(colors.green)

-- Container element
local element7 = main:addContainer()
    :setPosition(4, 1)
    :setSize(1, 18)
    :setBackground(colors.brown)

-- Container element
local element8 = main:addContainer()
    :setPosition(5, 1)
    :setSize(19, 1)
    :setBackground(colors.brown)

-- Container element
local element9 = main:addContainer()
    :setPosition(24, 1)
    :setSize(1, 18)
    :setBackground(colors.brown)

-- Container element
local element10 = main:addContainer()
    :setPosition(5, 18)
    :setSize(19, 1)
    :setBackground(colors.brown)

-- Start the UI
basalt.run()
