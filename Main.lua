local GUI = require("GUI")
local system = require("System")

local workspace, window, menu = system.addWindow(GUI.filledWindow(1, 1, 50, 16, 0xE1E1E1))

local layout = window:addChild(GUI.layout(1, 1, window.width, window.height, 1, 1))

local textbox = layout:addChild(GUI.input(1, 1, 25, 1, 0xFFFFFF, 0x000000, 0xC3C3C3, 0xFFFFFF, 0x000000, "", "Wat do u want to order:"))

local button1 = layout:addChild(GUI.button(1, 1, 8, 1, 0x4B4B4B, 0xFFFFFF, 0x0, 0xFFFFFF, "1"))
button1.onTouch = function()
  window:remove()
  local order = os.time()
  GUI.alert("Hello, you ordered cheesburger,\nOrder number: " .. order)
end

local button2 = layout:addChild(GUI.button(1, 1, 8, 1, 0x4B4B4B, 0xFFFFFF, 0x0, 0xFFFFFF, "0"))
button2.onTouch = function()
  window:remove()
  local order = os.time()
  GUI.alert("Hello, you ordered fries, \n Your Order number: " .. order)
end

local button3 = layout:addChild(GUI.button(1, 1, 8, 1, 0x4B4B4B, 0xFFFFFF, 0x0, 0xFFFFFF, "Exit"))
button3.onTouch = function()
  window:remove()
end

workspace:draw()
