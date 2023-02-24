Param(
    [Parameter(Mandatory = $true,Position=0)]
    [string]$AppPools
) 

$AppPools.Split(',') | ForEach-Object {
    if(![string]::IsNullOrWhiteSpace($_)){
        Write-Host "Starting application pool '$_'..."
        Start-WebAppPool -name $_     
    }
}