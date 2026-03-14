local f = fs.open("userData/name.txt","r")
local playerName = f.readAll()
f.close()
term.clear()
term.setCursorPos(1,1)

-- Basalt 2 Generated Code
local basalt = require("basalt")

-- Create main frame
local main = basalt.createFrame()
    :setSize(26, 20)

-- Container element
local element1 = main:addContainer()
    :setSize(26, 20)
    :setBackground(colors.green)

-- Label element
local element2 = main:addLabel()
    :setPosition(6, 7)
    :setSize(5, 1)
    :setText("Hello")

-- Label element
local element3 = main:addLabel()
    :setPosition(12, 7)
    :setSize(15, 1)
    :setText(playerName)

-- Start the UI
basalt.run()