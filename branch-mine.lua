

function minePlayerTunnel(len)
    for i = 1, step, len do
        digAndMine()
    end

    digAndMineUp()
    turnAround()

    for i = 1, step, len do
        digAndMine()
    end

    digAndMineDown()
    turnAround()
end

function digAndMine()
    while turtle.detect() do
        turtle.dig()
        turtle.forward()
    end
end

function digAndMineUp()
    while turtle.detect() do
        turtle.digUp()
        turtle.up()
    end
end

function digAndMineDown()
    while turtle.detect() do
        turtle.digDown()
        turtle.down()
    end
end

function turnAround()
    turtle.turnRight()
    turtle.turnRight()
end

minePlayerTunnel(5)