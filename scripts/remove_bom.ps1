$path='C:\Users\Jedid\djangogirls\blog\templates\blog\post_list.html'
$text = [System.IO.File]::ReadAllText($path)
$text = $text.TrimStart([char]0xFEFF)
$enc = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($path, $text, $enc)
Write-Output 'rewritten without BOM'
