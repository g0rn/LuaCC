tArgs = { ... }

bRight = true

if #tArgs~=3 then
  print("Usage: dig_room <width> <depth> <height>")
  return
end

Width = tArgs[1]
Depth = tArgs[2]
Height = tArgs[3]

local function digUp()
  for i=1,Height-1 do
    while turtle.detectUp() do
      turtle.digUp()
      sleep(0.5)
    end
    while not turtle.up() do
      turtle.digUp()
      sleep(0.5)
    end
  end
  
  for j=1,Height-1 do
    while not turtle.down() do
      turtle.digDown()
      sleep(0.5)
    end
  end
end

local function digForward()
  while turtle.detect() do
    turtle.dig()
    sleep(0.5)
  end
  while not turtle.forward() do
    turtle.dig()
    sleep(0.5)
  end
  digUp()  
end

local function right()
  turtle.turnRight()
end

local function left()
  turtle.turnLeft()
end

local function main()
  print("Building room with stats")
  write("Width:") print(Width)
  write("Depth: ") print(Depth)
  write("Height: ") print(Height)

  for i=1,Width do
    for j=1, Depth-1 do
      digForward()
    end
    
    if bRight then
      right()
      digForward()
      right()
    else
      left()
      digForward()
      left()
    end
    bRight = not bRight
  end
end

main()
