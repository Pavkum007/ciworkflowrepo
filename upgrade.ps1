param ($windowsversion)
write-host $windowsversion
mkdir C:\$windowsversion
try{
    Get-WindowsImage -ImagePath 'C:\da'
}
catch{Write-Output $_ | Out-File -FilePath D:\test.txt -Append}
