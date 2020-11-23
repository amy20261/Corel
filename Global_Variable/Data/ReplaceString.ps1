Get-ChildItem 'C:\Corel\Global_Variable\Data\*.CSV' -Recurse | ForEach {
(Get-Content $_ | ForEach { $_ -replace 'ESDCDTS2019', 'ESDCDTS2020' }) |
Set-Content $_
}
