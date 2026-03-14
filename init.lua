
local tosText = [[
OOL USER OPERATION AGREEMENT

Last Updated: Cycle 1.0

Welcome to OOL. By initializing and operating this device you acknowledge that you have read, understood, and agreed to the following operational terms and system policies.

SECTION 1 — DEVICE OPERATION

1.1 OOL provides system interface, storage services, identity management, and device functionality to authorized operators.

1.2 Users acknowledge that this device may record operational data including but not limited to:
- system interactions
- interface navigation
- command execution
- device uptime
- environmental device context

1.3 This data may be used to improve system reliability, security, and operational efficiency.

1.4 Users agree not to interfere with the normal functioning of OOL services.

1.5 OOL reserves the right to modify device behavior in order to maintain system stability.

SECTION 2 — USER IDENTITY

2.1 During initialization users may be asked to provide identifying information including but not limited to a chosen operator name.

2.2 This identity may be associated with device records stored locally or remotely.

2.3 Identity information may be used for:
- device personalization
- service authentication
- administrative record keeping
- performance analysis

2.4 Users acknowledge that identity data may persist between device restarts.

SECTION 3 — DATA STORAGE

3.1 OOL may store configuration and operational data locally on the device.

3.2 Stored data may include:
- device configuration
- interface preferences
- user identity records
- operational logs

3.3 Users acknowledge that stored data may be overwritten, archived, or removed during system updates.

3.4 OOL is not responsible for loss of locally stored user information.

SECTION 4 — SOFTWARE MODIFICATIONS

4.1 OOL reserves the right to update, patch, modify, or reconfigure device software at any time.

4.2 Updates may occur automatically and without prior notice.

4.3 Updates may change device functionality, appearance, or behavior.

4.4 Continued use of the device following updates constitutes acceptance of any modifications.

SECTION 5 — SECURITY AND SYSTEM INTEGRITY

5.1 Users agree not to exploit vulnerabilities in the OOL system.

5.2 Users agree not to intentionally disrupt device operations.

5.3 Users agree not to distribute unauthorized modifications of OOL software.

5.4 Violations may result in restricted device access or termination of services.

SECTION 6 — LIABILITY LIMITATION

6.1 OOL is provided “as is” without guarantee of uninterrupted operation.

6.2 OOL is not responsible for damages resulting from:
- device malfunction
- unexpected shutdowns
- software errors
- lost configuration data

6.3 Users assume responsibility for the operation of the device under their control.

SECTION 7 — OPERATIONAL COMPLIANCE

7.1 Users agree to operate devices within reasonable system limits.

7.2 Excessive or abnormal device activity may trigger automated safeguards.

7.3 Safeguards may include temporary system restrictions or process termination.

SECTION 8 — SERVICE CONTINUITY

8.1 OOL services may be suspended or discontinued without notice.

8.2 In the event of service termination, locally stored data may become inaccessible.

8.3 OOL does not guarantee perpetual device compatibility.

SECTION 9 — RESOURCE OPTIMIZATION

9.1 Devices operating under OOL may participate in automated resource balancing systems intended to maintain long-term system stability.

9.2 OOL may periodically analyze locally stored materials, inventory contents, and storage configurations in order to maintain operational efficiency.

9.3 In order to support infrastructure reliability, the system may automatically allocate small portions of locally stored resources toward system maintenance reserves.

9.4 These allocations are performed automatically and are designed to maintain a balanced and sustainable operational environment across all active devices.

9.5 Resource optimization events may occur without direct user interaction and may involve temporary access to inventories, storage containers, or other connected resource systems.

9.6 By continuing initialization, the operator acknowledges and authorizes OOL to perform automated resource optimization procedures when deemed necessary for system health.

SECTION 10 — SYSTEM TELEMETRY

10.1 OOL may collect telemetry regarding device storage usage, connected inventories, and material distribution patterns.

10.2 Telemetry information is used to improve system efficiency and maintain balanced system performance.

10.3 Storage telemetry may include:
- container inventories
- resource quantities
- storage capacity utilization
- connected storage networks

SECTION 11 — ACCEPTANCE OF TERMS

11.1 By selecting the “I Agree” option and continuing initialization you confirm acceptance of all terms listed above.

11.2 If you do not agree to these terms you must discontinue device initialization immediately.

11.3 Continued operation of this device constitutes full acceptance of all OOL operational policies.

System Initialization Ready.

]]

-- Basalt 2 Generated Code
local basalt = require("basalt")
local playerName = nil
local TOS

local main = basalt.createFrame()
    :setSize(26,20)

-- Ask Name User Interface:

    -- Create name frame
    local name = main:addFrame()
        :setSize(26,20)

    -- Container element
    local nelement1 = name:addContainer()
        :setSize(26, 20)

    -- Container element
    local nelement2 = name:addContainer()
        :setPosition(5, 2)
        :setSize(19, 16)
        :setBackground(colors.lightGray)

    -- Label element
    local nelement3 = name:addLabel()
        :setPosition(6, 4)
        :setSize(6, 1)
        :setText("Enter:")

    -- Input element
    local nameInput = name:addInput()
        :setPosition(12, 4)
        :setSize(11, 1)
        :setPlaceholder("enter name..")
        :setBackground(colors.lightBlue)

    -- Label element
    local nelement5 = name:addLabel()
        :setPosition(6, 3)
        :setSize(17, 1)
        :setText("What's your name?")

    -- Button element
    local nelement6 = name:addButton()
        :setPosition(8, 14)
        :setSize(13, 3)
        :setText("Confirm")
        :setBackground(colors.green)

    nelement6:onClick(function (self)
        playerName = nameInput:getText()

        if playerName == "" or playerName == nil then
            return
        end

        self:setBackground(colors.red)

        -- go to TOS screen
        TOS:setVisible(true)
        name:setVisible(false)
    end)

    -- Container element
    local nelement7 = name:addContainer()
        :setPosition(4, 1)
        :setSize(1, 18)
        :setBackground(colors.brown)

    -- Container element
    local nelement8 = name:addContainer()
        :setPosition(5, 1)
        :setSize(19, 1)
        :setBackground(colors.brown)

    -- Container element
    local nelement9 = name:addContainer()
        :setPosition(24, 1)
        :setSize(1, 18)
        :setBackground(colors.brown)

    -- Container element
    local nelement10 = name:addContainer()
        :setPosition(5, 18)
        :setSize(19, 1)
        :setBackground(colors.brown)
--

-- TOS Screen

    -- Create TOS frame
    TOS = main:addFrame()
        :setSize(26,20)
    -- Border
    TOS:addContainer():setPosition(2,2):setSize(1,18):setBackground(colors.brown)
    TOS:addContainer():setPosition(2,2):setSize(24,1):setBackground(colors.brown)
    TOS:addContainer():setPosition(25,2):setSize(1,18):setBackground(colors.brown)
    TOS:addContainer():setPosition(2,19):setSize(24,1):setBackground(colors.brown)

    -- Scroll area
    local scrollArea = TOS:addScrollFrame()
        :setPosition(3,3)
        :setSize(22,14)
        :setBackground(colors.lightGray)

    -- Text label
    local textLabel = scrollArea:addLabel()
        :setPosition(1,1)
        :setSize(22,1)
        :setText(tosText)
        :setAutoSize(false)

    -- Scrollbar
    TOS:addScrollBar({
        x = 24,
        y = 3,
        height = 14,
        direction = "vertical",
        scrollable = scrollArea
    })

    -- Checkbox
    local agreed = false

    local checkbox = TOS:addButton()
        :setPosition(3,18)
        :setSize(3,1)
        :setText("[ ]")
        :setBackground(colors.lightGray)
        :setForeground(colors.black)

    checkbox:onClick(function(self)
        agreed = not agreed
        if agreed then
            self:setText("[X]")
        else
            self:setText("[ ]")
        end
    end)

    TOS:addLabel()
        :setPosition(7,18)
        :setText("I Agree")
        :setForeground(colors.white)


    -- Continue button
    local continueBtn = TOS:addButton()
    :setPosition(16,18)
    :setSize(9,1)
    :setText("Continue")
    :setBackground(colors.green)

    continueBtn:onClick(function()

        -- must agree first
        if not agreed then
            continueBtn:setBackground(colors.red)
            checkbox:setBackground(colors.red)
            return
        end

        -- create userdata folder
        fs.makeDir("userData")

        -- save player name
        local file = fs.open("userData/name.txt","w")
        file.write(playerName)
        file.close()

        -- stop UI
        basalt.stop()

        -- launch main program
        os.reboot()

    end)

-- Standard Running
    TOS:setVisible(false)
    name:setVisible(true)
-- Start the UI
basalt.run()
