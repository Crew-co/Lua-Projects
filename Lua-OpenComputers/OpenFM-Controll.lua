local component = require("component")
fm = component.openfm_radio

repeat
station = io.read()
    if station == "SS" then
    os.sleep(1)
    os.execute("clear")
        io.write("Set The Station URL: ")
        station = io.read()
        os.sleep(1)
        fm.stop()
        fm.setURL(station)
        fm.play()
    elseif station == "pause" then
        fm.stop()
    elseif station == "play" then
        fm.play()
    elseif station == "vol" then
        if vol == "v" then
        os.sleep(1)
        os.execute("clear")
            io.write("To Set the Volume type a Number 1-9: ")
            vol = io.read()
            fm.setVol(vol)
        else print("It cant go that high")
    end
    elseif station == "exit" then 
        os.exit()
    print("Byeeee")
    end
until false
