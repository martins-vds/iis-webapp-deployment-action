Param(
    [Parameter(Mandatory = $true,Position=0)]
    [string]$AppPools
) 

$AppPools.Split(',') | ForEach-Object {
    if(![string]::IsNullOrWhiteSpace($_)){
        Write-Host "Stopping application pool '$_'..."
        Stop-WebAppPool -name $_        
    }
}