local retryDelay = 0.5

function left()
    turtle.turnLeft()
end

function right()
    turtle.turnRight()
end

function digForward()
    if turtle.detect() then
        while not turtle.dig() do
            sleep(retryDelay)
        end
        return true
    else
        return false
    end
end

function digUp()
    if turtle.detectUp() then
        while not turtle.digUp() do
            sleep(retryDelay)
        end
        return true
    else
        return false
    end
end

function digDown()
    if turtle.detectDown() then
        while not turtle.digDown() do
            sleep(retryDelay)
        end
        return true
    else
        return false
    end
end

function forward()
    while not turtle.forward() do
        if turtle.detect() then return false end
        sleep(retryDelay)        
    end
    
    return true
end

function back()
    while not turtle.back() do
        sleep(retryDelay)
    end

    return true
end

function down()
    while not turtle.down() do
        if turtle.detectDown() then return false end
        sleep(retryDelay)
    end

    return true
end

function up()
    while not turtle.up() do
        if turtle.detectUp() then return false end
        sleep(retryDelay)
    end

    return true
end

function moveDigForward()
    while not forward() do
        digForward()
    end
end

function moveDigUp()
    while not up() do
        digUp()
    end
end

function moveDigDown()
    while not down() do
        digDown()
    end
end