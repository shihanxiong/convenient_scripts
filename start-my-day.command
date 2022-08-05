osascript -e 'tell app "Terminal"
   activate
   tell application "System Events" to keystroke "t" using command down
   do script "cd ~/dev/platform/dashboard && yarn webpack" in front window
   delay 5

   tell application "System Events" to keystroke "t" using command down
   delay 0.2
   do script "cd ~/dev/platform/dashboard && bin/rails s" in front window

   tell application "System Events" to keystroke "t" using command down
   delay 0.2
   do script "cd ~/dev/platform/api && bin/rails s" in front window
end tell'
