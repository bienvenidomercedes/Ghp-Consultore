# PowerShell Static File Web Server
$port = 3000
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:${port}/")

try {
    $listener.Start()
    Write-Output "Web server started on http://localhost:${port}/"
    Write-Output "Press Ctrl+C in terminal (or kill the task) to stop the server."
} catch {
    Write-Error "Failed to start server on port ${port}: $_"
    exit 1
}

# Keep running until stopped
while ($listener.IsListening) {
    try {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response
        
        $path = $request.Url.LocalPath
        if ($path -eq "/") {
            $path = "/index.html"
        }
        
        # Resolve file path and ensure it stays inside the current directory
        $currentDir = Get-Location
        $filePath = [System.IO.Path]::GetFullPath((Join-Path $currentDir $path))
        
        # Basic security check: ensure resolved path starts with current directory path
        if (-not $filePath.StartsWith($currentDir.Path)) {
            $response.StatusCode = 403
            $bytes = [System.Text.Encoding]::UTF8.GetBytes("403 Forbidden")
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
            $response.Close()
            continue
        }
        
        if (Test-Path $filePath -PathType Leaf) {
            $bytes = [System.IO.File]::ReadAllBytes($filePath)
            
            # Determine content type based on extension
            $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
            switch ($ext) {
                ".html" { $contentType = "text/html; charset=utf-8" }
                ".css"  { $contentType = "text/css; charset=utf-8" }
                ".js"   { $contentType = "text/javascript; charset=utf-8" }
                ".png"  { $contentType = "image/png" }
                ".jpg"  { $contentType = "image/jpeg" }
                ".jpeg" { $contentType = "image/jpeg" }
                ".svg"  { $contentType = "image/svg+xml" }
                ".ico"  { $contentType = "image/x-icon" }
                ".json" { $contentType = "application/json; charset=utf-8" }
                default { $contentType = "application/octet-stream" }
            }
            
            $response.ContentType = $contentType
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
            Write-Output "$(Get-Date -Format 'HH:mm:ss') - 200 - $($request.HttpMethod) - $($request.Url.PathAndQuery)"
        } else {
            $response.StatusCode = 404
            $bytes = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
            Write-Output "$(Get-Date -Format 'HH:mm:ss') - 404 - $($request.HttpMethod) - $($request.Url.PathAndQuery)"
        }
        $response.Close()
    } catch {
        Write-Output "Error handling request: $_"
    }
}
