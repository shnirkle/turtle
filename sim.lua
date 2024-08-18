fuel = 0
trgt_fuel = 1000
pos = vector.new(x,y,z)

function dig_forward()
    if fuel < 0 then
        return false
    elseif turtle.detect() then
        turtle.dig()
    end
    turtle.forward()
    fuel = fuel - 1
    return true
end

function fuel_once()
    turtle.refuel()
end

function fuel_up()
    while fuel <= trgt_fuel do
        fuel_once()
    end
end

function set_pos_gps()
    local x, y, z = gps.locate()
    pos = vector.new(x,y,z) 
end

function excavate_layer(l)
    
    fuel_up()
    for j = 0, l/2, 1 do
        for i = 0, l-1, 1 do
            dig_forward()
        end
        turtle.right()
        dig_forward()
        turtle.right()
        for i = 0, l-1, 1 do
            dig_forward()
        end
        turtle.left()
        dig_forward()
    end
end

function main()
    set_pos_gps()
    fuel_up()
end

excavate_layer()