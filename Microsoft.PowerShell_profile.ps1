# Location is $PSHOME\Microsoft.PowerShell_profile.ps1

# Directory Aliases
function cd_repos { cd C:\Users\kev10076\Repos }
Set-Alias -Name cdre -Value cd_repos  

function cd_qapyunit { cd C:\qatest\pyunit }
Set-Alias -Name cdpy -Value cd_qapyunit

function git_status { git status }
Set-Alias -Name gst -Value git_status

# Git Aliases
function git_checkout([string]$branchname) 
{ git checkout $branchname }
Set-Alias -Name gch -Value git_checkout

function git_merge([string]$branchname) 
{ git merge $branchname }
Set-Alias -Name gme -Value git_merge

function git_branchv { git branch -v }
Set-Alias -Name gbv -Value git_branchv

function git_push { git push }
Set-Alias -Name gpu -Value git_push

function git_pushsetupstream([string]$branchname) 
{ git push --set-upstream origin $branchname }
Set-Alias -Name gpusu -Value git_pushsetupstream

function git_checkoutb([string]$branchname) 
{ git checkout -b $branchname }
Set-Alias -Name gchb -Value git_checkoutb

function git_add-u_comm([string]$message) 
{ git add -u; git commit -m $message }
Set-Alias -Name gaducom -Value git_add-u_comm

function git_merge-dev() 
{ git checkout master; git merge dev; git push; git checkout dev }
Set-Alias -Name gmedev -Value git_merge-dev