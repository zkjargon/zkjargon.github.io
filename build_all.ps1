# PowerShell script for Windows environments
Get-ChildItem -Path "po" -Filter "*.po" | ForEach-Object {
    $lang_code = $_.BaseName
    $env:MDBOOK_BOOK__LANGUAGE = $lang_code
    mdbook build -d "book\$lang_code"
}

Write-Host "All language versions have been built successfully."