
fuel_slot = 16
torch_slot = 15
fuel_id = 263
target_fuel = 1000
fuel_level = 0

curr_Dir = "f"
dx,dy,dz = 0


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

function quarry()
    fuel_up()
end

function return()
    move_to(0,0,0)
end
function move_to(x,y,z) 
    if dx > 0 then
        move_b(dx)
    else 
        move_f(dx * -1)
    end
    if dy > 0 then
        move_l(dy)
    else 
        move_r(dy * -1)
    end

function move(dir, amount)
    if "f" then
        set_Dir("f")
        for i = 0, amount, 1 do
            turtle.forward
        end
    elseif "b" then
        set_Dir("b")
        for i = 0, amount, 1 do
            turtle.forward
        end
    elseif "l" then
        set_Dir("b")
        for i = 0, amount, 1 do
            turtle.forward
        end
    elseif "r" then
        set_Dir("b")
        for i = 0, amount, 1 do
            turtle.forward
        end
    elseif "u" then
        set_Dir("b")
        for i = 0, amount, 1 do
            turtle.forward
        end
    elseif "d" then
        set_Dir("b")
        for i = 0, amount, 1 do
            turtle.forward
        end
    end
end