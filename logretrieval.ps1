# Script Name:                     Powershell Logs
# Author:                          Kevin Williams
# Date of latest revision:         11/2/2023
# Purpose:                         Log Retrieval 
# Additional Sources:              https://chat.openai.com/c/873d5502-3fa0-4be8-bb7d-5a8119759da0

# Script

# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-WinEvent -LogName System -MaxEvents 0 | Where-Object { $_.TimeCreated -ge (Get-Date).AddDays(-1) } | Format-Table -AutoSize | Out-File "$env:USERPROFILE\Desktop\last_24.txt"

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.
Get-WinEvent -LogName System -MaxEvents 0 | Where-Object { $_.LevelDisplayName -eq "Error" } | Format-Table -AutoSize | Out-File "$env:USERPROFILE\Desktop\errors.txt"

# Print to the screen all events with ID of 16 from the System event log.
Get-WinEvent -LogName System -MaxEvents 0 | Where-Object { $_.Id -eq 16 } | Format-Table -AutoSize

# Print to the screen the most recent 20 entries from the System event log.
Get-WinEvent -LogName System -MaxEvents 20 | Format-Table -AutoSize

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed.
Get-WinEvent -LogName System -MaxEvents 500 | Format-Table -AutoSize
