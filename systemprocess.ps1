# Script Name:                     Powershell Logs
# Author:                          Kevin Williams
# Date of latest revision:         11/3/2023
# Purpose:                         System Process 
# Additional Sources:              https://chat.openai.com/c/56b9c70c-9819-40a0-8d2c-864cc5d5fcd4

# Script

# Print all active processes ordered by highest CPU time consumption
Get-Process | Sort-Object -Property CPU -Descending | Format-Table -AutoSize

# Print all active processes ordered by highest Process Identification Number (PID)
Get-Process | Sort-Object -Property Id -Descending | Format-Table -AutoSize

# Print the top five active processes ordered by highest Working Set (WS(K))
Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5 | Format-Table -AutoSize

# Start a browser process and open a URL
Start-Process -FilePath "https://owasp.org/www-project-top-ten/" -Wait

# Start Notepad ten times using a for loop
1..10 | ForEach-Object {
    Start-Process -FilePath "notepad.exe"
}

# Close all instances of Notepad
Get-Process | Where-Object { $_.ProcessName -eq "notepad" } | ForEach-Object {
    Stop-Process -Id $_.Id
}

# Kill a specific process by its PID (Process Identification Number)
$processToKill = Get-Process -Name "MicrosoftEdge" # Change to "chrome" if using Google Chrome
if ($processToKill) {
    $processToKill | ForEach-Object {
        Stop-Process -Id $_.Id
    }
}
