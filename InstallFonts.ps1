$FONTS = 0x14
$Path="./fonts"
$FontItem = Get-Item -Path $Path
$FontList = Get-ChildItem -Path "$FontItem\*" -Include ('*.fon','*.otf','*.ttc','*.ttf')
$objShell = New-Object -ComObject Shell.Application
$objFolder = $objShell.Namespace($FONTS)
$Fontdir = dir $Path
$username = $env:USERNAME
  
foreach($File in $FontList) {
    if(!($file.name -match "pfb$")) {
        $try = $true
        $installedFonts = @(Get-ChildItem C:\Users\$username\AppData\Local\Microsoft\Windows\Fonts | Where-Object {$_.PSIsContainer -eq $false} | Select-Object basename)
        $name = $File.baseName
    
        foreach($font in $installedFonts) {
            $font = $font -replace "_", ""
            $name = $name -replace "_", ""
            if ($font -match $name)
            {
                $try = $false
            }
        }
        if ($try) {
            $objFolder.CopyHere($File.fullname)
        }
    }
}