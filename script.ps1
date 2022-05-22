$path = $args[0]
$from = $args[1]
$to = $args[2]
$output = $args[3]

Get-ChildItem -Path $path -Force -Recurse -ev AccessErrors -ea silent `
| Select @{N="Owner";E={ (Get-Acl $_.FullName).Owner }}, Fullname, Length, LastAccessTime, LastWriteTime, CreationTime `
| ? {$_.lastwritetime -gt $from -AND $_.lastwritetime -lt $to} `
| Export-Csv -Path  $output -NoTypeInformation -encoding UTF8
