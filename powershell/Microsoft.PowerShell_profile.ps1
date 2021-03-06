# Location is $PSHOME\Microsoft.PowerShell_profile.ps1

# Import Posh Git module
Import-Module posh-git

# Directory Aliases
function cd_repos { cd C:\Users\kev10076\Repos }
Set-Alias -Name cdre -Value cd_repos  

function cd_qapyunit { cd C:\qatest\pyunit }
Set-Alias -Name cdpy -Value cd_qapyunit

function cd_source { cd C:\Users\kev10076\source\repos }
Set-Alias -Name cdsrc -Value cd_source

function cd_pro { cd E:\git\ArcGISPro }
Set-Alias -Name cdpro -Value cd_pro

# Create Resources Symlink
function make_symlink_toolbox {
    Copy-Item 'C:\Program Files\ArcGIS\Pro\Resources\ArcToolBox' -Destination 'E:\git\Copied_TBX' -Recurse
    Remove-Item 'C:\Program Files\ArcGIS\Pro\Resources\ArcToolBox' -Recurse -Force
    New-Item -ItemType SymbolicLink -Path 'C:\Program Files\ArcGIS\Pro\Resources\ArcToolBox' -Target E:\git\ArcGISPro\Resources\ArcToolBox
}
Set-Alias -Name symtool -Value make_symlink_toolbox

# Restore Toolbox
function res_toolbox {
    (Get-Item 'C:\Program Files\ArcGIS\Pro\Resources\ArcToolBox').Delete()
    Copy-Item 'E:\git\Copied_TBX\ArcToolBox' -Destination 'C:\Program Files\ArcGIS\Pro\Resources' -Recurse -Force
    Remove-Item 'E:\git\Copied_TBX\ArcToolBox' -Recurse -Force
}
Set-Alias -Name restool -Value res_toolbox 

# Git Aliases
function git_status { git status }
Set-Alias -Name gst -Value git_status

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

function git_pull { git pull }
Set-Alias -Name gpl -Value git_pull

function git_diff { git diff }
Set-Alias -Name gdi -Value git_diff

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