GROUND_SLOT=2
WOOD_SLOT = 1

turn = { [true] = "right", [false] = "left"}
bTurn = true
bNeedDrop = false

local tArgs = { ... }

if #tArgs~=2 then
  print("Usage: chop <width> <depth>")
  return
end

Width = tArgs[1]
Depth = tArgs[2]

local function isWood()
  turtle.select(WOOD_SLOT)
  return turtle.compare()
end

local function isGround()
  turtle.select(GROUND_SLOT)
  return turtle.compare()
end

local function isWoodUp()
  turtle.select(WOOD_SLOT)
  return turtle.compareUp()
end

local function isWoodDown()
  turtle.select(WOOD_SLOT)
  return turtle.compareDown()
end

local function chopTree()
  turtle.dig()
  turtle.forward()
  while isWoodUp() do
    turtle.digUp()
    turtle.up()
  end
  
  while not turtle.detectDown() do
    turtle.down()
  end
  
  while isWoodDown() do
    turtle.digDown()
    turtle.down()
  end
end

local function goForward()

  while not turtle.forward() do
    if isWood() then
      chopTree()
    end
    
    while turtle.detect() do
        if not turtle.up() then
          if turtle.getItemCount(16)==0 then
            turtle.select(16)
            bNeedDrop = true
          end
          while turtle.detectUp() do
            turtle.digUp()
          end
          if bNeedDrop then
            turtle.dropDown(16)
            bNeedDrop = false
            turtle.select(1)
          end
        end
        if isWood() then
          chopTree()
        end
    end
  end
  while not turtle.detectDown() do
    turtle.down()
  end
end

for i=1,Width do
  for j=1,Depth do
    goForward()
  end
  shell.run("go",turn[bTurn])
  goForward()
  shell.run("go",turn[bTurn])
  bTurn = not bTurn
end
