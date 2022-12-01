$path = $args[0]
$type = $args[1]
$from = $args[2]
$to = $args[3]
$output = $args[4]

Get-ChildItem -Path $path -Force -Recurse -ev AccessErrors -ea silent `
| Select @{N="Owner";E={ (Get-Acl $_.FullName).Owner }}, Fullname, Length, LastAccessTime, LastWriteTime, CreationTime `
| ? {$_.$type -gt $from -AND $_.$type -lt $to} `
| Export-Csv -Path $output -NoTypeInformation
