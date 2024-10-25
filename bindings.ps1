# bindings.ps1

$bindings = @()

Get-Content .env.local | ForEach-Object {
    $line = $_.Trim()
    if (-not $line.StartsWith("#") -and $line.Length -gt 0) {
        $name, $value = $line -split '=', 2
        $value = $value.Trim('"')
        $bindings += "--binding $name=$value"
    }
}

$bindingsString = $bindings -join ' '
Write-Output $bindingsString