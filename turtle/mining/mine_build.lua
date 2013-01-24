local function placeWall()
  turtle.placeDown()
  turtle.up()
  turtle.placeDown()
  turtle.up()
  turtle.placeDown()
end

local function left()
  turtle.turnLeft()
end

local function right()
  turtle.turnRight()
end

local function goForward()
  while not turtle.forward() do
    turtle.dig()
  end
end

local function up()
  turtle.up()
end

local function down()
  turtle.down()
end

local function buildWall(length)
  while turtle.down() do
  end
  up()
  for i=1,length do
    placeWall()
    goForward()
    down()
    down()
  end
end

local function buildRoof()
  up()
  up()
  turtle.placeDown()
  goForward()
  right()
  
end

left()
goForward()
buildWall(1)
right()
buildWall(4)
right()
buildWall(4)
right()
buildWall(4)
right()
buildWall(2)


buildRoof()
