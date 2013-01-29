MODEM_SIDE = "top"
RS_SIDE = "back"

rednet.open(MODEM_SIDE)

while true do
    id, cmd = rednet.receive()
    if cmd == "1" then
        rs.setBundledOutput(RS_SIDE, colors.black)
    elseif cmd == "2" then
        rs.setBundledOutput(RS_SIDE, colors.blue)
    elseif cmd == "3" then
        rs.setBundledOutput(RS_SIDE, colors.brown)
    elseif cmd == "4" then
        rs.setBundledOutput(RS_SIDE, colors.cyan)
    elseif cmd == "5" then
        rs.setBundledOutput(RS_SIDE, colors.gray)
    elseif cmd == "6" then
        rs.setBundledOutput(RS_SIDE, colors.green)
    elseif cmd == "7" then
        rs.setBundledOutput(RS_SIDE, colors.lightBlue)
    elseif cmd == "8" then
        rs.setBundledOutput(RS_SIDE, colors.lightGray)
    elseif cmd == "9" then
        rs.setBundledOutput(RS_SIDE, colors.lime)
    elseif cmd == "10" then
        rs.setBundledOutput(RS_SIDE, colors.magenta)
    elseif cmd == "11" then
        rs.setBundledOutput(RS_SIDE, colors.orange)
    elseif cmd == "12" then
        rs.setBundledOutput(RS_SIDE, colors.pink)
    elseif cmd == "13" then
        rs.setBundledOutput(RS_SIDE, colors.purple)
    elseif cmd == "14" then
        rs.setBundledOutput(RS_SIDE, colors.red)
    elseif cmd == "15" then
        rs.setBundledOutput(RS_SIDE, colors.white)
    elseif cmd == "16" then
        rs.setBundledOutput(RS_SIDE, colors.yellow)
    end
end