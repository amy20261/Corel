Get-ChildItem 'C:\Corel\Global_Variable\Data\*.CSV' -Recurse | ForEach {
(Get-Content $_ | ForEach { $_ -replace 'PTR2019', 'PTR2021' }) |
Set-Content $_
}
