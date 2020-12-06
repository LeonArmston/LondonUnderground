using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# Interact with query parameters or the body of the request.
$name = $Request.Query.LineName
if (-not $name) {
    $name = $null
}

try
{
    if ($name) 
    {
        Write-Output "LineName is $name"
        $request = Invoke-WebRequest -Uri "https://api.tfl.gov.uk/Line/Mode/tube,dlr,overground,tflrail,tram/Status"
        $convertToObject = $request.Content | ConvertFrom-Json
        $filter = $convertToObject | Where-Object{$_.name -eq $name}
        $body = ConvertTo-Json -InputObject $filter
    }
    else
    {
        Write-Output "No Query LineName Specified (Return All Lines)"
        $request = Invoke-WebRequest -Uri "https://api.tfl.gov.uk/Line/Mode/tube,dlr,overground,tflrail/Status"
        $body = $Request.Content
    }
}
Catch
{
    Write-Output $_.Exception.Message
}



# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = [HttpStatusCode]::OK
    Body = $body
})
