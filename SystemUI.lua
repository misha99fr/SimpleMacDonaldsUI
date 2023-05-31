component = require("component")
term = require("term")
math = require("math")

component.gpu.setResolution(50, 16)
term.clear()

while true do
  io.write("Welcome to Mcdonalds, What do you want to order or you can type 'exit' to quit: \n")
  io.write("Type 1 for Cheesburger, type 0 for Fries ")
  local input = io.read()
  if input == "exit" then
    break
  end
  if tonumber(input) == 1 then
    print("Thank you for ordering Cheesburger")
    local order = math.random(1000000)
    print("Thank you\nOrder number: " .. order)
    break
  else
    local order = math.random(1000000)
    print("Thank you\nOrder number: " .. order)
    break
  end
end
