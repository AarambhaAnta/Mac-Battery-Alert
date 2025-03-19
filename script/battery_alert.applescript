-- Function to check battery percentage and charging status
on checkBattery()
    try
        -- Get battery percentage
        set batteryInfo to do shell script "pmset -g batt | grep -o '[0-9]*%' | head -1"
        set batteryPercentage to text 1 through -2 of batteryInfo -- Remove the "%" symbol
        set batteryPercentage to batteryPercentage as integer -- Convert to number

        -- Get power status
        set powerStatus to do shell script "pmset -g batt"

        -- If plugged in and above 85%, notify to unplug
        if powerStatus contains "AC Power" then
            if batteryPercentage > 85 then
                display notification "?? Battery is at" & batteryPercentage & "% and is connected to charger. Consider unplugging to prevent overcharging. ??" with title "Battery Status"
            end if
        else if batteryPercentage < 30 then
            -- If unplugged and low battery, notify
            display notification "?? Battery is low! Please charge soon. (Current: " & batteryPercentage & "%) ??" with title "Battery Warning"
        end if

    on error errMsg
        do shell script "echo 'Error: " & errMsg & "' >> ~/Library/Logs/BatteryScriptError.log"
    end try
end checkBattery

-- Main loop
repeat
    checkBattery()
    delay 900 -- Wait for 15 minutes
end repeat
