local tArgs = { ... }

nCurTunnel = 1
nStep = 6
nMoved = 0
nFirst = 4
nTorch = 0

local function placeTorch()
--  turtle.select(2)
--  turtle.placeDown()
--  turtle.select(1)
  turtle.digDown()
end

local function left()
  turtle.turnLeft()
end

local function right()
  turtle.turnRight()
end

local function goForward(length)
  for i=1,length do
    while not turtle.forward() do
      turtle.dig()
      sleep(1)
    end
  end
end

local function turnBack()
  turtle.turnRight()
  turtle.turnRight()
end

local function gotoDig()
  local nMoveTo = nFirst + (nCurTunnel-1)*6
  goForward(nMoveTo)
  right()
end

local function gotoBase()
  right()
  local nMoveTo = nFirst +(nCurTunnel-1)*6
  goForward(nMoveTo)
  turnBack()
end

local function digForward()
  --turtle.dig()
  while not turtle.forward() do
    turtle.dig()
  end
  --turtle.digDown()
end

local function checkForTorch()
  nTorch = nTorch + 1
  if nTorch >= nStep then
    nTorch = 0
    placeTorch()
  end
end


local function Dig()
  local nLength = nCurTunnel*nStep
  
  for i=1,nLength do
    digForward()
    checkForTorch()    
  end
  
  left()
  digForward()
  digForward()
  digForward()
  placeTorch()
  nTorch = 0
  left()
  
  for i=1,nLength do
    digForward()
    checkForTorch()
  end
  turtle.digDown()
  
  for i=1,nLength do
    digForward()
    checkForTorch()
  end
  
  right()
  digForward()
  digForward()
  digForward()
  placeTorch()
  nTorch = 0
  right()
  
  for i=1,nLength do
    digForward()
    checkForTorch()
  end
end

local function unload()
  shell.run("drop_all","")
end

if #tArgs~=1 then
  print("usage: mine_main <tunnels number>")
  return
end

gotoDig()
for j=1,tArgs[1] do
  --gotoDig()
  turtle.digDown()
  Dig()
  nCurTunnel = nCurTunnel +1
  --gotoBase()
  --unload()
 end
gotoBase()
unload()
