local tArgs = { ... }

if #tArgs ~= 1 then
  return
end

local function digToLevel()
  for i=1,tArgs[1] do
    turtle.digDown()
    turtle.down()
  end

  turtle.turnLeft()
  turtle.up()
  turtle.dig()
  turtle.forward()
  turtle.turnRight()
  turtle.digUp()
  turtle.digDown()
end

local function digForward()
  turtle.dig()
  turtle.forward()
  turtle.digUp()
  turtle.digDown()
end


digToLevel()
for i=1,4 do
  for j=1,3 do
    digForward()
    turtle.down()
    if not turtle.detectDown() then
      turtle.placeDown()
    end
    turtle.up()
  end
  turtle.turnRight()
  turtle.turnRight()
  for q=1,3 do
    turtle.forward()
  end
  turtle.turnLeft()
  digForward()
  turtle.turnLeft()
end
