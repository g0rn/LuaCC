tArgs = { ... }

bUseTorches = true

moved = 0
first = true
nCount = 0
nMax = 3

if #tArgs~=1 then
  print("usage: mine_tunnel <length>")
  return
end

local function placeTorch()
  if bUseTorches then
    turtle.select(2)
    turtle.placeDown()
    turtle.select(1)
  end
end

local function digForward()
  turtle.dig()
  sleep(0.5)
  while turtle.detect() do
    turtle.dig()
    sleep(0.5)
  end
  while not turtle.forward() do
    turtle.dig()
    sleep(0.5)
  end
  turtle.digDown()
end

for i=1,tArgs[1] do
  digForward()
  turtle.down()
  if not turtle.detectDown() then
    turtle.placeDown()
  end
  turtle.up()
  
  moved = moved + 1
  nCount = nCount + 1
  
  if nCount>=nMax then
    nCount = 0
    placeTorch()
    if first == true then
      first = false
      nMax = 6
    end
  end
end

turtle.turnRight()
turtle.turnRight()

for i=1,moved do
  turtle.forward()
end
