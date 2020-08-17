-- not finish
computer_id = 27
rednet.open("right")
print("open rednet")
height = 0
width = 0
 
function mysplit (inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str)
    end
    return t
end
 
while height == 0 do
    id, message = rednet.receive()
    if id == computer_id then
        spMS = mysplit(message, ",")
        height = spMS[1]
        width = spMS[2]
        end
    end
print("Set hight/width")
print(height)
print(width)
print("start")
 
function loadFuel ()
    local mc_stack = 64
    turtle.select(1)
    local fuel_count = turtle.getItemCount()
    local fueltoload = mc_stack - fuel_count
    turtle.suckUp(fueltoload)     
end
 
function checkFuel ()
    local fuelinturtle = turtle.getFuelLevel()
    turtle.select(1)
    if fuelinturtle < turtle.getFuelLimit() / 4 then
       while fuelinturtle < turtle.getFuleLimt() / 2:
           turlte.refule(1)           
           fuelinturtle = turtle.getFuelLevel()
           end
        end
end
 
function unloadInventory ()
    unload_slot = 2
    while unload_slot <= 16 do
        turtle.select(unload_slot)
        turtle.dropUp()
        unload_slot = unload_slot + 1
        end
end
 
 
loadFuel()
