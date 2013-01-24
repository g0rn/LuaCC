tArgs = { ... }

bRight = true

nCurSlot = 1

if #tArgs ~= 2 then
  print("usage: build_floor <width> <depth>")
  return
end

local function placeItem()
  for i=2,16 do
    turtle.select(i)
    turtle.transferTo(1)
    if turtle.getItemSpace(1)==0 then break end
  end
  
  turtle.select(1)
  if turtle.getItemCount(1)<=1 then
    return false
  end
      
  if turtle.detectDown() then
    turtle.digDown()
  end
  
  turtle.placeDown()
  
  return true
end

local function goForward()
  while not turtle.forward() do
    turtle.dig()
  end
end

local function left()
  turtle.turnLeft()
end

local function right()
  turtle.turnRight()
end

Width = tArgs[1]
Depth = tArgs[2]

for i = 1,Width do
  for j = 1,Depth-1 do
    while not placeItem() do
      sleep(0.5)
    end
    goForward()
  end
  
  if bRight then
    right()
    placeItem()
    goForward()
    placeItem()
    right()
  else
    left()
    placeItem()
    goForward()
    placeItem()
    left()
  end 
  
  bRight = not bRight
end
