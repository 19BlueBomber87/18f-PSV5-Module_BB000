function BB-S20_Create_Mega_Module 
{
    Param
    (
    [Parameter(Mandatory=$true,Position=0)]
    $Folder_Containg_ps1_scripts,
    [Parameter(Mandatory=$true,Position=1)]
    [string]$Parent_psm1_Name
    ) 
    "#18f-PSV5-Beginner-Module0.Psm1" | Out-File $Parent_psm1_Name
  
    cls
        foreach ($Quake in (Dir $Folder_Containg_ps1_scripts).PsPath)
        {
        Write-Verbose -Message "$Quake
        Merging_This_File_Into_C:\Kruse\18f-Parent_File_MM_0.psm1.  Ctrl-c to cancel" -Verbose *>&1
        Start-Sleep -Milliseconds 500
        cls
        Add-Content -Path $Parent_psm1_Name -Value $(Get-Content $Quake) 
        }
Write-Verbose -Message "_Files_Merged_" -Verbose *>&1
notepad $Parent_psm1_Name
Write-Verbose -Message "[$Parent_psm1_Name]
[<@:D_Has_Been_Created_<@:D]
Want to import the Module?" -Verbose *>&1
$DJ = Read-Host "Enter Yes Or No"
        if ($DJ -ne "Yes")
        {
        Write-Verbose -Message "[$Parent_psm1_Name]
        [Was_Not_imported]" -Verbose *>&1
        }
        else
        {
        Import-Module (dir $Parent_psm1_Name).PsPath -Verbose *>&1
        }
        
}
#
