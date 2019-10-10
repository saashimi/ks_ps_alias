# Place in $PSHOME\Microsoft.PowerShell_profile.ps1

# Directory alisases
function cd_repos { cd C:\Users\kev10076\Repos }
Set-Alias -Name cdre -Value cd_repos  

function cd_qapyunit { cd C:\qatest\pyunit }
Set-Alias -Name cdpy -Value cd_qapyunit

# Github Alisases
function git_status { git status }
Set-Alias -Name gst -Value git_status

function git_checkout { git checkout }
Set-Alias -Name gch -Value git_checkout

function git_branchv { git branch -v }
Set-Alias -Name gbv -Value git_branchv

function git_push { git push }
Set-Alias -Name gpu -Value git_push

function git_checkoutb([string]$branchname) 
{
    git checkout -b $branchname
}
Set-Alias -Name gbv -Value gitcheckoutb

function git_add-u_comm([string]$message) 
{
    git add -u; git commit -m $message
}
Set-Alias -Name gaducom -Value git_add-u_comm