<#
.SYNOPSIS
    Obtain the directory of the current script.
.LINK
    https://gallery.technet.microsoft.com/scriptcenter/Get-ScriptDirectory-cbc423e1
#>
Function Get-ScriptDirectory {
    If ($hostinvocation -ne $null) {
        Split-Path $hostinvocation.MyCommand.Path
    } Else {
        Split-Path $Script:MyInvocation.MyCommand.Path
    }
}
