param($minutes = 36000)

Write-Output "Caffeinating for $minutes minutes..."

$myshell = New-Object -com "Wscript.Shell"

for ($i = 0; $i -lt $minutes; $i++) {
  Write-Output "Sleeping for 60 seconds... zzZ"
  Start-Sleep -Seconds 60
  Write-Output "Zzz Caffein booster"
  $myshell.sendkeys(".")
}
