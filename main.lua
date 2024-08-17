
fuel_slot = 16
torch_slot = 15
fuel_id = 263
target_fuel = 1000
fuel_level = 0

dx,dy,dz = 0
quarry()

function fuel_once()
    turtle.select(fuel_id)
    local passed, error = turtle.refuel()
    if passed then
        fuel_level = turtle.getFuelLevel()
        print(("Refuel_Level: %d"):format(fuel_level))
    else
        print("Kein Fuel in Slot 16")
    end
end
function fuel_up()
    while fuel_level < target_fuel do
        fuel_once()
    end
end

function quarry()
    fuel_up()
end

