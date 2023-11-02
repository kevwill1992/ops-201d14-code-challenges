# Script Name:                     Windows Batch Scripting
# Author:                          Kevin Williams
# Date of latest revision:         11/1/2023
# Purpose:                         
# Additional Sources:              https://chat.openai.com/c/9cc38572-e3a7-4df4-bf54-f2b3f41d4783


1. @echo off: This line prevents the echoing of commands to the console, making the script output cleaner.

2. setlocal enabledelayedexpansion: This enables delayed variable expansion, allowing you to use variables within loops or conditional blocks.

3. set /p sourcePath=Enter the source folder path:: This line prompts the user to enter the source folder path and stores the input in the sourcePath variable.

4. set /p destinationPath=Enter the destination folder path:: Similarly, this line prompts the user to enter the destination folder path and stores the input in the destinationPath variable.

5. if not exist "!sourcePath!\" (: This conditional statement checks whether the source folder exists. If it doesn't, it displays an error message and exits the script using goto :eof.

6. if not exist "!destinationPath!\" (: This conditional statement checks whether the destination folder exists. If it doesn't, it displays an error message and exits the script using goto :eof.

7. robocopy "!sourcePath!" "!destinationPath!" /E: This line runs the robocopy command with the source and destination paths provided by the user. The /E flag tells robocopy to copy subdirectories and empty directories.

8. if errorlevel 8 (: This conditional statement checks the exit code of robocopy. If it's 8 or higher, it means there were errors during the copy operation.

9. echo Error: ROBOCOPY encountered errors during the copy operation.: If there were errors, this line displays an error message.

10. ) else (: If there were no errors, this part of the conditional block is executed.

11. echo Copy operation completed successfully.: This line indicates that the copy operation was successful.

12. :end: This is a label used to mark the end of the script.

13. endlocal: This command ends the local environment, and any variables set within the setlocal block are no longer available.