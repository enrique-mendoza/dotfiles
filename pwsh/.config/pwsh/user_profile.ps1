# Set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Oh My Posh!
$omp_config = "$env:POSH_THEMES_PATH\robbyrussell.omp.json"
oh-my-posh init pwsh --config $omp_config | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# FNM
fnm env --use-on-cd | Out-String | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Alias
Set-Alias -Name .. -Value cdAlias

Set-Alias -Name ls -Value lsAlias
Set-Alias -Name l -Value lAlias
Set-Alias -Name la -Value laAlias 
Set-Alias -Name lt -Value ltAlias

Set-Alias -Name vim -Value nvim
Set-Alias -Name g -Value git
Set-Alias -Name grep -Value findstr
Set-Alias -Name tig -Value 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias -Name less -Value 'C:\Program Files\Git\usr\bin\less.exe'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function cdAlias { cd .. }
function lsAlias { ls --group-directories-first }
function lAlias { ls -l }
function laAlias { ls -a }
function ltAlias { ls --tree }
