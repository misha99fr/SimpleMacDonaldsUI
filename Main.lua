local GUI = require("GUI")
local system = require("System")

local workspace, window, menu = system.addWindow(GUI.filledWindow(1, 1, 50, 16, 0xFFF5180D))

local layout = window:addChild(GUI.layout(1, 1, window.width, window.height, 1, 1))

local label = layout:addChild(GUI.label(1, 1, 25, 1, 0xFFFFFF, "Welcome to MCdonalds, You want to order"))

local button1 = layout:addChild(GUI.button(1, 1, 11, 1, 0x4B4B4B, 0xFFFFFF, 0x0, 0xFFFFFF, "Cheesburger"))
button1.onTouch = function()
  window:remove()
  local order = os.time()
  GUI.alert("Hello, you ordered cheesburger,\nOrder number: " .. order)
end

local button2 = layout:addChild(GUI.button(1, 1, 8, 1, 0x4B4B4B, 0xFFFFFF, 0x0, 0xFFFFFF, "Fries"))
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
