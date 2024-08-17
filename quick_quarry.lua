
fuel_slot = 16
torch_slot = 15
fuel_id = 263
target_fuel = 1000
fuel_level = 0

function fuel_once()
    turtle.select(fuel_slot)
    local passed, error = turtle.refuel()
    if passed then
        fuel_level = turtle.getFuelLevel()
        print(("Refuel_Level: %d"):format(fuel_level))
        return true
    else
        print("Kein Fuel in Slot 16")
        return false
    end
end
function fuel_up()
    while fuel_level < target_fuel do
        assert(fuel_once())
    end
end
function deposit()
    for i = 1, 16, 1 do
        if turtle.drop() == false then
            turtle.up()
            z = z + 1 
        end
    end
    for i = 0, z, 1 do
        turtle.down()
    end
    turtle.right()
    turtle.right()
end
function quarry()
    for i = 0, 60, 1 do
        for i = 0, 16, 1 do
            for i = 0, 16, 1 do
                turtle.dig()
                turtle.forward
            end
            turtle.right()
            turtle.dig
            turtle.forward()
            turtle.right()
            for i = 0, 16, 1 do
                turtle.dig()
                turtle.forward
            end
            turtle.left()
            turtle.dig()
            turtle.forward()
            turtle.left()
        end
    end
end
