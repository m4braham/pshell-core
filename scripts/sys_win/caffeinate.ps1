param($minutes = 36000)

Write-Output "Caffeinating for $minutes minutes..."

$myshell = New-Object -com "Wscript.Shell"

$interval = 10 # seconds
$loops = 60 * $minutes / $interval

for ($i = 0; $i -lt $loops; $i++) {
  $progressPercent = 100 * $i / $loops
  $secondsRemaining = ($loops - $i) * $interval
  $status = "Infusing keystrokes... {0,4:n1}%" -f $progressPercent
  Write-Progress -Activity "Caffeinate" -Status $status -SecondsRemaining $secondsRemaining -PercentComplete $progressPercent
  Start-Sleep -Seconds $interval
  $myshell.sendkeys("{NUMLOCK}")
  $myshell.sendkeys("{NUMLOCK}")
}
