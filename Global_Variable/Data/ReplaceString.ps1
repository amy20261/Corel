Get-ChildItem 'C:\Corel\Global_Variable\Data\*.CSV' -Recurse | ForEach {
(Get-Content $_ | ForEach { $_ -replace 'ESDPSP2020', 'ESDPSP2021' }) |
Set-Content $_
}
