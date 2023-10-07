# Define the target URL
$targetURL = "https://raw.githubusercontent.com/linhk9/linhk9.github.io/main/win/winutil.ps1"

# Send a 301 (permanent) redirect response
[Microsoft.AspNetCore.Http.StatusCodes]::MovedPermanently

# Set the Location header to the target URL
$headers = @{
    "Location" = $targetURL
}

# Output the headers to perform the redirect
$headers.GetEnumerator() | ForEach-Object {
    "$($_.Key): $($_.Value)"
}
