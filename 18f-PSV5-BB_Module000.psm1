#18f-PSV5-Beginner-Module0.Psm1
<#help write-host -full#>

Function BB-S0_ABC_123{
$alphabet = for ($test = 0; $test -lt 26; $test++)
{
    [char](65 + $test)
}
Write-host "Easy as ABC_123" -BackgroundColor Magenta -ForegroundColor White
Write-Host "Counting from 1 to 9 (in seconds):  "-BackgroundColor Green -ForegroundColor Black
Write-Host "Followed by the Alaphabet" -BackgroundColor Yellow -ForegroundColor Black
Write-Host "Followed by 36-47" -BackgroundColor Red -ForegroundColor Black
Write-Host -NoNewline "Begin: " -BackgroundColor Magenta -ForegroundColor White
foreach($second in 1..10)
{
  Write-Host –NoNewLine "${second} " -BackgroundColor Green -ForegroundColor Black
  Start-Sleep –Seconds 1
}
foreach ($al in $alphabet)
{
  Write-Host –NoNewLine  "${al} " -BackgroundColor Yellow -ForegroundColor Black
  Start-Sleep –Seconds 1
}
foreach($second in 36..47)
{
  Write-Host –NoNewLine  "${second} " -BackgroundColor Red -ForegroundColor White
  Start-Sleep –Seconds 1
}
Write-Host "
EASY AS ABC_123!!!!!!" -BackgroundColor Magenta -ForegroundColor White
}
<# BlueBomber
AKA
Mark K.
2-11-2018#>
<#help write-host -full#>

Function BB-S2_Name_Date{
function Name-Date 
{$BB = "MarkK.";$stardate = "2018-11-29" 
$bb;$stardate
cls
if ($BB -eq "MarkK.")
{
Write-Host -NoNewline "WelcomeBack $BB"  -BackgroundColor Red -ForegroundColor White
Write-Host -NoNewline "STARDATE: $StarDate" -BackgroundColor Yellow -ForegroundColor Black
Write-Host "PSVersion:"($PSVersionTable).PSVersion.Major`t`t`t`t -BackgroundColor Magenta -ForegroundColor White
}
}
Name-Date
}#end
<#help write-progress -full#>
<#help write-progress -full | out-file -FilePath "C:\Users\A19mk\Desktop\kruse\Help write-progress.txt" -NoClobber #$<3 = D.J.##>
<#C:\Users\A19mk\Desktop\kruse\Help write-progress.txt#>
<#Get-Alias -Definition Get-ChildItem#Can't find write host alias#>
<#(gcm Write-Progress).Parameters#>
<#This Is Example 2 of the write-progress help file#>
function BB-S3_WP_X1 {
$TFTSP_FWH_S3 = Get-Content C:\Users\A19mk\Documents\18f-PS5-Posted\Git_Posts\18f-PS5-Beginner-Script3-Loading-Write_Progress_Xample2.ps1
$BB = "MarkK.";$StarDate = "2018-11-4" 
$bb;$stardate
$DJ = "<3<3<3"
Clear-Host
function Name-Date 
{
if ($BB -eq "MarkK.")
{
Write-Host -NoNewline "WelcomeBack $BB"`t`t  -BackgroundColor Red -ForegroundColor White
Write-Host -NoNewline "STARDATE: $Stardate"`t -BackgroundColor Yellow -ForegroundColor Blue
Write-Host "PSVersion:"($PSVersionTable).PSVersion.Major`t -BackgroundColor Magenta -ForegroundColor White
}
}
Clear-Host
#
$bb;$stardate;$DJ;Name-Date
#CLS
<#####This Example is from the "Write-Progress" Help File Example 2#####>
$ProgressPreference = "Continue"
Name-Date
Function Load-Status
{
for($O_Loop = 1; $O_Loop -lt 100; $O_Loop++ )
    {
    Write-Progress -Activity Updating -Status '$bb Progress->' -PercentComplete $O_Loop -CurrentOperation OuterLoop
    
   for($I_Loop = 70; $I_Loop -lt 100; $I_Loop++ )
    {
    Write-Progress -Id 1 -Activity Updating -Status '$StarDate Progress' -PercentComplete $I_Loop -CurrentOperation InnerLoop
    } 
Write-Host
    }
    }
Load-Status
<#Load-Status is now a function#>
$C = Read-Host "HEY DOWN HERE!!!!!!!! Would You like more Loading"
If ($C -eq "Yes")
{
Load-Status
$bb;$StarDate;$dj
Name-Date
}
else
{
Clear-Host
$bb;$StarDate;$dj
Name-Date
}
#cls

}#end
#Read-host logic example and stop-process and renaming
<#Create 100 folders inside a folder BREAK Finsih Creating All Folders BREAK CREATE All The TXT file Break Delete it all#>
<#Remove-Item -Path "c:\ps-test\test.txt", "c:\ps-test\Logs\test.log"#><#???#>
<#There isn't any "any key"!!!#>
function BB-S5_Folder_X1 {
$TFTSP_FWH_S5 =Get-Content C:\Users\A19mk\Documents\18f-PS5-Posted\Git_Posts\18f-PS5-Beginner-Script5-Creates_100_folders-100_Custom_txt_files.ps1
Clear-Host
Read-Host "Creating Folders Example
PRESS 'ANY KEY' To Begin"
$M="Physical Layer";$E="DataLink Layer";$G="Network Layer";$A="Transport Layer";$L="Session Layer";$I="Presentation Layer";$N="Application Layer";$K="We Are Powershell"
Remove-Item C:\users\A19mk\Desktop\Kruse\MasterFolder -Recurse
New-Item -ItemType "Directory" -Path C:\Users\A19mk\Desktop\Kruse\MasterFolder
New-Item -ItemType "file" -Path "C:\Users\A19mk\Desktop\Kruse\MasterFolder\MyfirstFile.txt" -Value "Ok Lets make 10 folders, 
100 folders inside those 
and a text file in each folder. 
100 files total
For this example we will create this in the
C:\Users\A19mk\Desktop\Kruse\MasterFolder\ 'Directory'"
Clear-Host
Read-Host "Aftery we input 'ANY KEY'
The Script created the 'C:\Users\A19mk\Desktop\Kruse\MasterFolder' Directory
The Script created a file named MyFirsTextFile
Lets Open Our First Text File
PRESS 'ANY KEY'"
Clear-Host
NOTEPAD "C:\Users\A19mk\Desktop\Kruse\MasterFolder\MyfirstFile.txt"
#Created Master Folder
Read-Host "Lets look at the master folder to see my first text file
and also to watch the process
press any key to contine"
Clear-Host
Stop-Process -Name Notepad
Explorer "C:\users\A19mk\Desktop\kruse\MasterFolder"
#Number of files you need
Read-Host "Now We will Create the folders
Press Any Key"

ForEach ($Folder in 1..100) <#1..10|Foreach-object#>
{
New-Item -ItemType "Directory" -Path "C:\Users\A19mk\Desktop\Kruse\MasterFolder\#$folder Folder"
}
ForEach ($Folder in 1..100)
{
New-Item -Path "C:\Users\A19mk\Desktop\Kruse\MasterFolder\#$folder Folder" -Name "#$Folder Text File.txt" -ItemType "file" -Value "THIS IS FILE #$Folder
Inside of the $Folder(th) folder

$M
$E
$G
$A
$L
$I
$N

$K" 
#New-Item -Path "C:\Kruse\PS5\TESTING" -Name "Text" -ItemType "file" -Value "$TYM $TYM $MK $FH "
}
Clear-Host
Read-Host "Prove that we acomplished creating files and folder.
Use the mouse to open some files and folders
Press any key to continue"

}#end
#Logic to create 100 folder in 10 folders
#Logic to create files in all 1000 files

<#Notes
Get-Process -Name e*
#If ($File -eq 0, $File -lt 100, $File++)
New-Item -ItemType "file" -Path "C:\kruse\PS5\yo.txt", "C:\Kruse\yo.txt" -Value "MK"
Remove-Item -Path "C:\kruse\PS5\yo.txt", "C:\Kruse\yo.txt" 
Write-Error -Message ERROR
$A = write-output $PSVersionTable 
New-Item -Path $profile -ItemType "file" -Force
#>

Cls
function BB-S7_BB_Hash{
$BB="MarkK.";$SD="2018-11-29";$PSV5="PowerShellVersion5";$XamplePurpose="Learn, Share and Document";$DJ="Save The Puppies! <3<3<3";$SP="<@:)";$TY="ThankYou For Your Help :)";$MK="UAA Alum, CMC Alum, CNT Student, PowerShell Enthusiast";$TFTSP_FWH="Founder of: The Foundation to Save The Puppies From Write-Host";$Mission="Spread Joy Through Learning PS5";$TFW="ThanksForWatching"
$MyFirstHashTableIsMyDigitalSignature=[Ordered]@{Name="Name: $BB";MarkK="MarkK.:$MK";Date="StarDate: $SD";PSVersion="PowerShellVersionUsed: $PSV5";
Xample="Prupose: $XamplePurpose";Thanks="$TY";TFTSP_FWH="$TFTSP_FWH";Mission="$mission";DJ="$DJ";TFW="$TFW";SP="$SP"}

Function Blue-Bomber
{
ForEach ($BlueBombersInfo in $MyFirstHashTableIsMyDigitalSignature) 
{
    Write-Verbose -Message ($BlueBombersInfo).Name      -Verbose 6>&1
    Write-Verbose -Message ($BlueBombersInfo).MarkK     -Verbose 5>&1
    Write-Verbose -Message ($BlueBombersInfo).Date      -Verbose 4>&1
    Write-Verbose -Message ($BlueBombersInfo).PSVersion -Verbose 3>&1
    Write-Verbose -Message ($BlueBombersInfo).Xample    -Verbose 2>&1
    Write-Verbose -Message ($BlueBombersInfo).Thanks    -Verbose *>&1
    Write-Verbose -Message ($BlueBombersInfo).TFTSP_FWH -Verbose 2>&1
    Write-Verbose -Message ($BlueBombersInfo).Mission   -Verbose 3>&1
    Write-Verbose -Message ($BlueBombersInfo).DJ        -Verbose 4>&1
    Write-Verbose -Message ($BlueBombersInfo).TFW       -Verbose 5>&1
    Write-Verbose -Message ($BlueBombersInfo).SP        -Verbose 6>&1
}
}

Blue-Bomber

}#end
#Help about_Hash

Function BB-S7_Hash_x2{
cls
#help About_Hash_Tables#help *verbose*
$BB="MarkK.";$SD="2018-11-9";$JL="!!To-Save-Puppies!!"
$BlueBomber=[Ordered]@{Name__1="Name: $BB";Date__2="Date: $SD";Cause_4="Please Help:$JL"}
Cls
Function Name-Date_Cause
{
ForEach ($Blue in $BlueBomber)
{
    Write-Verbose -Message ($Blue).Name__1 -Verbose 6>&1
    Write-Verbose -Message ($Blue).Date__2 -Verbose 5>&1
    Write-Verbose -Message ($Blue).Cause_4 -Verbose 4>&1
}
}
cls
Name-Date_Cause
$BlueBomber.Name__1
$BlueBomber.Date__2
$BlueBomber.Cause_4
}
#The purpose of this exercise is learning not efficiency

function BB-S8_Object_Array_X1_ADMINreq{
$TFTSP_FWH_S8 = Get-Content C:\Users\A19mk\Documents\18f-PS5-Posted\Git_Posts\18f-PSV5-Beginner-Script-10-ForEach-Example.ps1
function OBject-Demo_X1{
Write-Verbose -Message "Propose: Learn, Share and Document
Goals:
[1]Display information about how objects work the PowerShell Console
[2]Design and share a script that will aid in learning by illustrating how the commands work Get-Eventlog, Read-Host, Write-Verbose and creating functions are the main focus of the exercise
This whole 'Program' is two functions:
This if for beginners like me so if your advanced don't bother" -Verbose *>&1
}
function Show-Possible_Input_For_Get-eventlog_-Logname
{
write-verbose -Message " The following list displays all the ‘Input’ options you can enter for the -LogName 'Parameter' of the Get-EventLog Command" -Verbose *>&1
$logNamesParameterList = (Get-EventLog -logname *)
($logNamesParameterList).log | Format-list * | Out-File C:\Kruse\18f-BB_EL-Verbose-3.txt
$a = Get-Content -Raw C:\Kruse\18f-BB_EL-Verbose-3.txt
write-verbose -Message ($A) -Verbose *>&1
Remove-Item C:\Kruse\18f-BB_EL-Verbose-3.txt
write-verbose -Message "Wow that is neat How do I do that?" -Verbose *>&1
}
function Show-How_I_used_write-Verbose_to-Display_Iputs_For_The_Event-Log_Parameter_-Logname
{
Write-Verbose -Message "When I enter [Get-EventLog -LogName *] Powershell returns an 'Array of Objects';
The 'Objects' are the 'Row' entries; The ‘Properties’ are the ‘Column’ entries;
In this case Powershell returned 7 objects;
The input for the -LogName 'Parameter' can be any of the 'Log' ‘Column’ ‘Properties’;
In this case the 'Log' ‘Column’ ‘Property’ entries (application, security, ect.) are also 'objects' themselves,  each will have its own 'Property' set;
[Note: each of those 'Property' sets could also be 'Objects': 'A dream within dream with...in..a...dream??J/k';
Now breathe :)
When you enter [Get-EventLog -Logname Application];
This is key--->You are commanding PowerShell to return the 'Array' of 'Objects' that the 'Application Property' represents<---This is key;
In this case each 'Object' has more properties than what PowerShell displays by default;
However powershell was designed to return the most relevant data;
In this case Powershell only displays 5 ‘Property’ types[Max(K) Retain, OverflowAction, Entries and Log]
It reads like this:  The Event-Log 'System', has 2,337 'Entries' and a 'Max(k)' of 20,480 [note: That output is for my machine, you will get something different than on yours]" -Verbose *>&1
Get-EventLog -LogName *
Write-Verbose -Message "Now we are going to return all of the 'Properties' for all 7 'Objects
We are going to reformat this output by 'PIPING' the output of the [Get-EventLog -LogName *] to the command [Format-list *]'
Note: [Select-Object *] can be used in place of [Format-List]" -Verbose *>&1
Read-Host "Ready to get the see all the ‘Properties’ for each Press any key to continue"
cls
Get-EventLog -LogName * | Format-List * | More
Write-Verbose -Message "Looks Kind of Messy :(
If you notice there is a 'Log Property' and a 'LogDisplayName Property'
LogDisplayName       : Hardware Events
Log                  : HardwareEvents
We are after the 'Log' Property.  This gives us the input for the -LogName 'Parameter' of the [Get-EventLog] Command
If you use: 'Hardware Events' in the -LogName 'Parameter' The command will fail because of the space between hardware and events
" -Verbose *>&1
Write-Verbose -Message "Ok Lets Clean up the Data :)" -Verbose 6>&1
Read-Host "Press any key to continue[3]"
Get-EventLog * | Sort-Object log | Select-Object log
Write-Verbose -Message "Wow That's pretty cool!
I don't really like the ‘Log’ on top of each object though
Lets get rid of them" -Verbose 6>&1
Read-Host "Press any key to continue[4]"
cls
(Get-EventLog *).Log
Write-Verbose -Message "DANG that's really neat!
How we achieved this is by wrapping the command [Get-EventLog -LogName *] in () like this;
(Get-EventLog -LogName*).Log
After we wrap the command in parentheses, we type a 'period' outside the rightmost parenthese;
This is key---->At this point you could simply press tab and you will cycle through all properties<---This is key
We will now type '.Log' outside the rightmost parthesee
Now For the tricky part

We are going to take this output, and use [Write-Verbose] to display it
Here is how I did it. 
There is more the one way to skin the cat in PowerShell
The purpose of this exercise is learning not efficiency
NOW LET'S GET THE OUTPUT OF THE VERBOSE COMMAND TO DISPLAY THIS!!!" -Verbose 6>&1
Read-Host "Press any key to continue [5]"
cls
(Get-EventLog -LogName *).log | Out-File C:\Kruse\18f-BB_EL-Verbose-1.txt
$VerboseMessage = Get-Content C:\Kruse\18f-BB_EL-Verbose-1.txt
Write-Verbose -Message "$VerboseMessage" -Verbose 6>&1
Remove-Item -Path C:\Kruse\18f-BB_EL-Verbose-1.txt
Clear-Variable VerboseMessage
Write-Verbose -Message "Wait a minute its sideways!?!?
Get-content has a 'Parameter called -Raw.  When we use it, the message in the verbose command matches .txt file output'" -Verbose 6>&1
Read-Host "Press any key to continues"
cls
(Get-EventLog -LogName *).log | format-list * | Out-File C:\Kruse\18f-BB_EL-Verbose-1.txt
$VerboseMessage = Get-Content -Raw C:\Kruse\18f-BB_EL-Verbose-1.txt
Write-Verbose -Message "$VerboseMessage" -Verbose 6>&1
Clear-Variable VerboseMessage
Write-Verbose -Message "Yhaoo we did it! This is how:" -Verbose *>&1
read-host "Press any key to continue[6]"
Write-Verbose -Message "The following explains how we achieved our goal
(Get-EventLog -LogName *).log | Format-List * | Out-File C:\Kruse\18f-BB_EL-Verbose-1.txt
By Setting the variable VerboseMessage = Get-Content -Path C:\Kruse\18f-BB_EL-Verbose-1.txt" -Verbose 6>&1
Write-Verbose -Message "We used [Out-file] to save the output of the [(Get-EventLog -LogName *).log in a .txt file]
Then we set the variable $VerboseMesage equal to [Get-Content -path 'C:\Kruse\18f-BB_EL-Verbose-1.txt'
Now we will enter $verbose message into the [Write Verbose] command

This way if I want something different, I can use a different property name after the rightmost parthense of the (Get-EventLog -LogName *)
I only have to change a few characters and I get a different 'Property' set
Now we will return the 'Log Property' and the 'LogDisplayName Property'
Note: I remove the .txt file and the directory I created after the Verbose message is Deleted" -Verbose 6>&1
Read-Host "Press any key to continue[7]"
(Get-EventLog -LogName *).log | Out-File C:\Kruse\18f-BB_EL-Verbose-1.txt
(Get-EventLog -LogName *).LogDisplayName | Out-File C:\Kruse\18f-BB_EL-Verbose-2.txt
$VerboseMessage1 = Get-Content -Raw C:\Kruse\18f-BB_EL-Verbose-1.txt
$VerboseMessage2 = Get-Content -Raw C:\Kruse\18f-BB_EL-Verbose-2.txt
Write-Verbose -Message "LogParameter:
$VerboseMessage1
LogDisplayNameParameter:
$VerboseMessage2" -Verbose 6>&1
Remove-Item -Path C:\Kruse\18f-BB_EL-Verbose-1.txt
Remove-Item -Path C:\Kruse\18f-BB_EL-Verbose-2.txt
}
cls
Read-Host "Start This Example By Pressing Any Key[1]"
cls


Show-Possible_Input_For_Get-eventlog_-Logname
Read-Host "Here Is how I achieved showing input for Get-EventLog -Logname in a verbose message
Press Any Key To continue [2]"
cls
Show-How_I_used_write-Verbose_to-Display_Iputs_For_The_Event-Log_Parameter_-Logname
Write-Verbose -Message " The script is designed to remove the .txt files and the directorys "
Write-Verbose "Thanks for watching" -Verbose *>&1
Read-Host "End"
cls

#Show-Possible_Input_For_Get-eventlog_-Logname
#https://support.microsoft.com/en-us/help/12445/windows-keyboard-shortcuts

}

function BB-S11_AUTO_ForEach{


#############################################################VerboseTable
$X_1=Write-Verbose -Message "Most people understand simple examples like this one
We Start Small and work our way up" -Verbose *>&1
$X_2=Write-Verbose -Message "This Example is the exact same as the previous examples except
I added more Objects and used more of the ForEach Object I.  Observe the time stamps changing
" -Verbose *>&1
$X_3=Write-Verbose -Message "This Example is Identical to Example[3] however at the end of the ForEach statement,
I use read-host to pause the ForEach Loop
CLS is there to keep everything clean and makes a need transition by
getting rid of the previous objects properties creates a neat screen effect by only
displaying one object at at time" -Verbose *>&1
$X_4= {Write-Verbose -Message "Replacing Read-Host with start-sleep, I now have automated the process
To run in time interval I choose.  For this Example I am using 3 seconds" -Verbose *>&1}
$X_5=Write-Verbose -Message "Now we move on to trying this with WMI information
in this example The ForEach main object(UAA) was set to Get-EventLog -LogName Application  -Newest 12 " -Verbose *>&11
##############################################################
##learning ForEach
#Get-EventLog -LogName Application -InstanceId 10021, 916 -Newest 1 | format-list *
cls
Read-Host "Press any key to start"
$A=1;$B=2;$C=3;
$ABC = $A,$B,$C
cls
ForEach ($D in $ABC)
{
Write-Verbose -Message "$D Happiness_For_Mega_Man" -Verbose *>&1
}
Clear-Variable A, B, C
$X_1
Read-Host "Press any key to start example [1]"
#############################################################Example_[1]#####################################################################################################
$A=1;$B=2;$C=3;
$ABC = $A,$B,$C
cls
ForEach ($D in $ABC)
{
$BB=(Get-Date).Hour
$BB_1=(Get-Date).Minute
$BB_2=(Get-Date).Second
$BB_3=(Get-Date).Millisecond
Write-Verbose -Message "$D Happiness_For_Mega_Man
--------------------------------------------------------------------------------[$BB]Hours
--------------------------------------------------------------------------------[$BB_1]Minutes
--------------------------------------------------------------------------------[$BB_2]Seconds
--------------------------------------------------------------------------------($BB_3].Millisecond" -Verbose *>&1
}
Write-Verbose -Message "This Example is the same as the first except for now I have
included Time Stamps by using the Date-Time commands" -Verbose *>&1
ReaD-Host "Press any key to start example[2]"
#############################################################Example_[2]###################################################################################BreaksAreSweet#####################
Clear-Variable A, B, C
Clear-Host
$a=0
$b=1
$C=2
$D=3
$E=4
$F=5
$G=6
$H=7
$A_B_C = $A, $B, $C, $D, $E, $F, $H
$H=7
ForEach ($I in $A_B_C)
{
$BB=(Get-Date).Hour
$BB_1=(Get-Date).Minute
$BB_2=(Get-Date).Second
$BB_3=(Get-Date).Millisecond
Write-Verbose -Message "-----------------------------------------This Is Example $I---------------------------------" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "This_Is_Example_[$F]" -Verbose *>&1
Write-Verbose -Message "$A, $B, $C" -Verbose *>&1
Write-Verbose -Message "$A" -Verbose *>&1
Write-Verbose -Message "$B" -Verbose *>&1
Write-Verbose -Message "$C" -Verbose *>&1
Write-Verbose -Message "
$A,$B,$C
$B
$C
" -Verbose *>&1
Write-Verbose "_End_Of_Example [$I]
-------------------------------------[$I]--Example END----------------------------------------------------------------------breaksAresweet----------------
--------------------------------------------------------------------------------[$BB]Hours
--------------------------------------------------------------------------------[$BB_1]Minutes
--------------------------------------------------------------------------------[$BB_2]Seconds
--------------------------------------------------------------------------------($BB_3].Millisecond
" -Verbose *>&1
}
$X_2
ReaD-Host "Press any key to start example[3]"
#############################################################Example [3]###################################################################################BreaksAreSweet#####################
Clear-Variable A, B, C, D, E, F, G, H
Clear-Host
$a=0
$b=1
$C=2
$D=3
$E=4
$F=5
$G=6
$H=7
$A_B_C = $A, $B, $C, $D, $E, $F, $G, $H
ForEach ($I in $A_B_C)
{$BB=(Get-Date).Hour
$BB_1=(Get-Date).Minute
$BB_2=(Get-Date).Second
$BB_3=(Get-Date).Millisecond
Write-Verbose -Message "-----------------------------------------This Is Example $I---------------------------------" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "$A" -Verbose *>&1
Write-Verbose -Message "$A, $B, $C" -Verbose *>&1
Write-Verbose -Message "$B" -Verbose *>&1
Write-Verbose -Message "$C" -Verbose *>&1
Write-Verbose -Message "
$A,$B,$C
$B
$C
" -Verbose *>&1
Write-Verbose "_End_Of_Example [$I]
-------------------------------------[$I]--Example END----------------------------------------------------------------------breaksAresweet----------------
--------------------------------------------------------------------------------[$BB]Hours
--------------------------------------------------------------------------------[$BB_1]Minutes
--------------------------------------------------------------------------------[$BB_2]Seconds
--------------------------------------------------------------------------------($BB_3].Millisecond
" -Verbose *>&1
Read-Host "To_See_The_Next_Data _Set Press_Any_Key"
cls
}
$X_3
ReaD-Host "Press any key to start example[4]"
#############################################################Example [4]###################################################################################BreaksAreSweet#####################
Clear-Variable A, B, C
Clear-Host
$a=0
$b=1
$C=2
$D=3
$E=4
$F=5
$G=6
$H=7
$A_B_C = $A, $B, $C, $D, $E, $F, $G, $H

ForEach ($I in $A_B_C)
{
$BB=(Get-Date).Hour
$BB_1=(Get-Date).Minute
$BB_2=(Get-Date).Second
$BB_3=(Get-Date).Millisecond
Write-Verbose -Message "-----------------------------------------This Is Example $I---------------------------------" -Verbose *>&1
Write-Verbose -Message "This_Is_Example_[$F]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "$A, $B, $C" -Verbose *>&1
Write-Verbose -Message "$A, $B, $C" -Verbose *>&1
Write-Verbose -Message "$A" -Verbose *>&1
Write-Verbose -Message "$B" -Verbose *>&1
Write-Verbose -Message "$C" -Verbose *>&1
Write-Verbose -Message "
$A,$B,$C
$B
$C
" -Verbose *>&1
Write-Verbose "_End_Of_Example [$I]
-------------------------------------[$I]--Example END----------------------------------------------------------------------breaksAresweet----------------
--------------------------------------------------------------------------------[$BB]Hours
--------------------------------------------------------------------------------[$BB_1]Minutes
--------------------------------------------------------------------------------[$BB_2]Seconds
--------------------------------------------------------------------------------($BB_3].Millisecond
" -Verbose *>&1
Write-Verbose "_End_Of_Example [$I]
--------------------------------------------------------------------------------------------------------[$I]--Example END------------------------------------------------------------------
" -Verbose *>&1
#Read-Host "END"
Start-Sleep 3
cls
}
$X_3
#############################################################Example [5]###################################################################################BreaksAreSweet#####################
Clear-Variable A, B, C, D, E, F, G, H
Cls
$UAA = Get-EventLog -LogName Application  -Newest 12
cls
ForEach ($M_W_K in $UAA)
{
$BB=(Get-Date).Hour
$BB_1=(Get-Date).Minute
$BB_2=(Get-Date).Second
$BB_3=(Get-Date).Millisecond
($M_W_K).timeGenerated | Format-List * | Out-File C:\Kruse\Verbose\18f-ForEach.txt
$M_W= Get-Content -Raw C:\Kruse\Verbose\18f-ForEach.txt
cls
Write-Verbose "$M_W" -Verbose *>&1
Sleep 2

}

$X_4
Read-Host "Thanks For Helping Me Progress At Powershell <@:)"
cls



}#end


function BB-S11_AUTO_ForEach{


#############################################################VerboseTable
$X_1=Write-Verbose -Message "Most people understand simple examples like this one
We Start Small and work our way up" -Verbose *>&1
$X_2=Write-Verbose -Message "This Example is the exact same as the previous examples except
I added more Objects and used more of the ForEach Object I.  Observe the time stamps changing
" -Verbose *>&1
$X_3=Write-Verbose -Message "This Example is Identical to Example[3] however at the end of the ForEach statement,
I use read-host to pause the ForEach Loop
CLS is there to keep everything clean and makes a need transition by
getting rid of the previous objects properties creates a neat screen effect by only
displaying one object at at time" -Verbose *>&1
$X_4= Write-Verbose -Message "Replacing Read-Host with start-sleep, I now have automated the process
To run in time interval I choose.  For this Example I am using 2 seconds" -Verbose *>&1
<#$X_5=Write-Verbose -Message "Now we move on to trying this with WMI information
in this example The ForEach main object(UAA) was set to Get-EventLog -LogName Application  -Newest 12 " -Verbose *>&11#>
##############################################################
##learning ForEach
#Get-EventLog -LogName Application -InstanceId 10021, 916 -Newest 1 | format-list *
cls
Read-Host "Press any key to start"
$A=1;$B=2;$C=3;
$ABC = $A,$B,$C
cls
ForEach ($D in $ABC)
{
Write-Verbose -Message "$D Happiness_For_Mega_Man" -Verbose *>&1
}
Clear-Variable A, B, C
$X_1
Read-Host "Press any key to start example [1]"
#############################################################Example_[1]#####################################################################################################
$A=1;$B=2;$C=3;
$ABC = $A,$B,$C
cls
ForEach ($D in $ABC)
{
$BB=(Get-Date).Hour
$BB_1=(Get-Date).Minute
$BB_2=(Get-Date).Second
$BB_3=(Get-Date).Millisecond
Write-Verbose -Message "$D Happiness_For_Mega_Man
--------------------------------------------------------------------------------[$BB]Hours
--------------------------------------------------------------------------------[$BB_1]Minutes
--------------------------------------------------------------------------------[$BB_2]Seconds
--------------------------------------------------------------------------------($BB_3].Millisecond" -Verbose *>&1
}
Write-Verbose -Message "This Example is the same as the first except for now I have
included Time Stamps by using the Date-Time commands" -Verbose *>&1
ReaD-Host "Press any key to start example[2]"
#############################################################Example_[2]###################################################################################BreaksAreSweet#####################
Clear-Variable A, B, C
Clear-Host
$a=0
$b=1
$C=2
$D=3
$E=4
$F=5
$G=6
$H=7
$A_B_C = $A, $B, $C, $D, $E, $F, $H
$H=7
ForEach ($I in $A_B_C)
{
$BB=(Get-Date).Hour
$BB_1=(Get-Date).Minute
$BB_2=(Get-Date).Second
$BB_3=(Get-Date).Millisecond
Write-Verbose -Message "-----------------------------------------This Is Example $I---------------------------------" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "This_Is_Example_[$F]" -Verbose *>&1
Write-Verbose -Message "$A, $B, $C" -Verbose *>&1
Write-Verbose -Message "$A" -Verbose *>&1
Write-Verbose -Message "$B" -Verbose *>&1
Write-Verbose -Message "$C" -Verbose *>&1
Write-Verbose -Message "
$A,$B,$C
$B
$C
" -Verbose *>&1
Write-Verbose "_End_Of_Example [$I]
-------------------------------------[$I]--Example END----------------------------------------------------------------------breaksAresweet----------------
--------------------------------------------------------------------------------[$BB]Hours
--------------------------------------------------------------------------------[$BB_1]Minutes
--------------------------------------------------------------------------------[$BB_2]Seconds
--------------------------------------------------------------------------------($BB_3].Millisecond
" -Verbose *>&1
}
$X_2
ReaD-Host "Press any key to start example[3]"
#############################################################Example [3]###################################################################################BreaksAreSweet#####################
Clear-Variable A, B, C, D, E, F, G, H
Clear-Host
$a=0
$b=1
$C=2
$D=3
$E=4
$F=5
$G=6
$H=7
$A_B_C = $A, $B, $C, $D, $E, $F, $G, $H
ForEach ($I in $A_B_C)
{$BB=(Get-Date).Hour
$BB_1=(Get-Date).Minute
$BB_2=(Get-Date).Second
$BB_3=(Get-Date).Millisecond
Write-Verbose -Message "-----------------------------------------This Is Example $I---------------------------------" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "$A" -Verbose *>&1
Write-Verbose -Message "$A, $B, $C" -Verbose *>&1
Write-Verbose -Message "$B" -Verbose *>&1
Write-Verbose -Message "$C" -Verbose *>&1
Write-Verbose -Message "
$A,$B,$C
$B
$C
" -Verbose *>&1
Write-Verbose "_End_Of_Example [$I]
-------------------------------------[$I]--Example END----------------------------------------------------------------------breaksAresweet----------------
--------------------------------------------------------------------------------[$BB]Hours
--------------------------------------------------------------------------------[$BB_1]Minutes
--------------------------------------------------------------------------------[$BB_2]Seconds
--------------------------------------------------------------------------------($BB_3].Millisecond
" -Verbose *>&1
Read-Host "To_See_The_Next_Data _Set Press_Any_Key"
cls
}
$X_3
ReaD-Host "Press any key to start example[4]"
#############################################################Example [4]###################################################################################BreaksAreSweet#####################
Clear-Variable A, B, C
Clear-Host
$a=0
$b=1
$C=2
$D=3
$E=4
$F=5
$G=6
$H=7
$A_B_C = $A, $B, $C, $D, $E, $F, $G, $H

ForEach ($I in $A_B_C)
{
$BB=(Get-Date).Hour
$BB_1=(Get-Date).Minute
$BB_2=(Get-Date).Second
$BB_3=(Get-Date).Millisecond
Write-Verbose -Message "-----------------------------------------This Is Example $I---------------------------------" -Verbose *>&1
Write-Verbose -Message "This_Is_Example_[$F]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]-[$I]" -Verbose *>&1
Write-Verbose -Message "$A, $B, $C" -Verbose *>&1
Write-Verbose -Message "$A, $B, $C" -Verbose *>&1
Write-Verbose -Message "$A" -Verbose *>&1
Write-Verbose -Message "$B" -Verbose *>&1
Write-Verbose -Message "$C" -Verbose *>&1
Write-Verbose -Message "
$A,$B,$C
$B
$C
" -Verbose *>&1
Write-Verbose "_End_Of_Example [$I]
-------------------------------------[$I]--Example END----------------------------------------------------------------------breaksAresweet----------------
--------------------------------------------------------------------------------[$BB]Hours
--------------------------------------------------------------------------------[$BB_1]Minutes
--------------------------------------------------------------------------------[$BB_2]Seconds
--------------------------------------------------------------------------------($BB_3].Millisecond
" -Verbose *>&1
Write-Verbose "_End_Of_Example [$I]
--------------------------------------------------------------------------------------------------------[$I]--Example END------------------------------------------------------------------
" -Verbose *>&1
#Read-Host "END"
Start-Sleep 2
cls
}
$X_3
#############################################################Example [5]###################################################################################BreaksAreSweet#####################
<#Clear-Variable A, B, C, D, E, F, G, H
Cls
$UAA = Get-EventLog -LogName Application  -Newest 12
cls
ForEach ($M_W_K in $UAA)
{
$BB=(Get-Date).Hour
$BB_1=(Get-Date).Minute
$BB_2=(Get-Date).Second
$BB_3=(Get-Date).Millisecond
($M_W_K).timeGenerated | Format-List * | Out-File C:\Kruse\Verbose\18f-ForEach.txt
$M_W= Get-Content -Raw C:\Kruse\Verbose\18f-ForEach.txt
cls
Write-Verbose "$M_W" -Verbose *>&1
Sleep 2

}#>#>

$X_4
Read-Host "Thanks For Helping Me Progress At Powershell <@:)"
cls



}#end

#Now we will only get the output for the Get-WmiObject -Class Win32_B* Objects
#I added in the write-verbose command to let me know how far along in the process I am

Function BB-S12_X2_BList{
(gwmi -List *win32_B*).name | Out-File C:\Kruse\WMI_Win32_Blist.txt

$wmi_Blist = get-content C:\Kruse\WMI_Win32_Blist.txt

Function Get-WMI32_B_Output
{
Foreach ($W in $WMI_Blist)
{
$BB = (Get-Date).DateTime
"-----------------------------------$BB------------------------------------------------------<@:)"
"----------OUTPUT--------Get-WmiObject -Class $W------output--------------------------------------"
"------------------------------------$BB------------------------------------------------------<@:)"
"------------------------------------------------------------------------------Notice how the time stamp changes"
"----------------------------------------------------------------------------($BB).hour------($BB).Minute-----($BB).second--------------------------------------------------------"
gwmi $w | format-list *
"-------------------------------end of wmi win32_$w output----------------------------------------------------------Ilovebrakes"






"-------------------------------end of wmi win32_$w output----------------------------------------------------------Ilovebrakes








"

Write-Verbose -Message "Get-WmiObject -Class $W 
 $BB Status: Complete
 <@:)
 ----------------------------------------------------------------------------" -Verbose 6>&1
}
}
Cls

Get-WMI32_B_Output | Out-File C:\Kruse\wmiBlist.txt
notepad C:\Kruse\wmiBlist.txt

}

#HAVE To Be Logged in as Administrator
Function BB-S14_SVCHOST_TDAY_Admin_Required{
Remove-Item C:\Kruse\18f-SVC_HOST_INFO.txt
cls
function Get-SVCHOST_COMMANDLINE_WMI_WIN32_PROCESS_Property
{
    "SVC_HOST_INFO" | Out-File C:\Kruse\SVC_HOST_INFO.txt
    (Get-Process svchost).Id | out-file c:\kruse\18f-svchost.txt
    $id_SVCHOST = get-content c:\kruse\18f-svchost.txt
    
        foreach ($JH in $id_SVCHOST)
        {
        $BB= Get-Date
        $DJ = Get-WmiObject win32_process -Filter "ProcessId = $JH"
            Write-Verbose -Message "----------------$BB----------------------" -Verbose 6>&1
            Write-Verbose -Message "----------------SVHOST ID= $JH-------------------------" -Verbose 6>&1
            $DJ.CommandLine
            Write-Verbose -Message "----------------Happy_Turkey_Day_<@:D---------------------
            " -Verbose 6>&1
        Add-Content C:\kruse\18f-SVC_HOST_INFO.txt -Value "----------------$BB----------------------", "----------------SVHOST ID= $JH-------------------------", $DJ.commandline, "----------------Happy_Turkey_Day_<@:D---------------------","-"
            Start-Sleep -Milliseconds 175
            cls
        }
}
       
cls

Get-SVCHOST_COMMANDLINE_WMI_WIN32_PROCESS_Property 
notepad C:\Kruse\18f-SVC_HOST_INFO.txt
}#End BB_S14_SVC
 #$= {
#Write-Verbose -Message $A_YodaByte.M -Verbose *>&1;
#Write-Verbose -Message $A_YodaByte.A; $A_YodaByte.y; $A_YodaByte.x; $A_YodaByte.T; $A_YodaByte.H; $A_YodaByte.E; $A_YodaByte.w; ; $A_YodaByte.F; $A_YodaByte.O; $A_YodaByte.R; $A_YodaByte.C; $A_YodaByte.E2; $A_YodaByte.I; $A_YodaByte.B1; $A_YodaByte.E2; $A_YodaByte.N; $A_YodaByte.Y; $A_YodaByte.O1; $A_YodaByte.U; $A_YodaByte.G}
#$A_YodaByte.M; $A_YodaByte.A; $A_YodaByte.y; $A_YodaByte.x; $A_YodaByte.T; $A_YodaByte.H; $A_YodaByte.E; $A_YodaByte.w; ; $A_YodaByte.F; $A_YodaByte.O; $A_YodaByte.R; $A_YodaByte.C; $A_YodaByte.E2; $A_YodaByte.I; $A_YodaByte.B1; $A_YodaByte.E2; $A_YodaByte.N; $A_YodaByte.Y; $A_YodaByte.O1; $A_YodaByte.U; $A_YodaByte.G}
#Read-Host "Want to see what a Yoda-Byte Looks Like?"
function BB-S9_Jedi_Quiz{
Function Yoda-Byte
{
cls
Read-Host "[DO OR DO NOT THERE IS NO TRY]
Press any key to continue:
But there isn't 'Any' 'AnyKey'"
$A_YodaByte=[Ordered]@{M="M"; A="A"; Y="Y"; x ="+"; T="T"; H="H"; E="E"; W ="+"; F="F"; O="R"; C="C";E1="E"; I="+"; B1="B"; E2="E";N="+";Y1="Y";O1="O"; U="U"; G="<@:)"}
$A_YodaByte.values | Out-File C:\Kruse\A_YodatByte.txt
$A_YodaByte.values | Out-File C:\Kruse\A_YodatByte_1.txt
$A_YodaByte.values
Write-Verbose -Message "MayTheForceBeWithYou
Are You 'Sith'?
or
Are You 'JEDI' " -Verbose *>&1
$Solo = Read-Host "???:"
$Lando = Get-Content -raw "C:\Kruse\A_YodatByte.txt"
$Chewy = Get-Content "C:\Kruse\A_YodatByte_1.txt"
if ($Solo -eq "Jedi" )
{
Write-Verbose -Message $Lando -Verbose *>&1
Write-Verbose -Message "MayTheForceBeWithYou" -Verbose *>&1
Write-Verbose -Message "$Chewy" -Verbose *>&1
}
elseif ($Solo -eq "Sith" )
{
Write-Verbose -Message "The Foce Is Not With You" -Verbose *>&1
}
elseif ($solo -ne {"Jedi" -and "Sith"} )
{
Write-Verbose -Message "You have to choose. Jedi Or Sith" -Verbose *>&1
$ThereIsAnotherSkyWalker = Read-Host "Try Again?"
}
If ($ThereIsAnotherSkyWalker -eq "Yes")
{
Write-Verbose -Message "Restarting: Are you a Sith Or Jedi Quiz" -Verbose *>&1
Read-Host "Press Any Key To Continue"
Yoda-Byte
Clear-Variable ThereIsAnotherSkyWalker
}
elseif ($ThereIsAnotherSkyWalker -ne "Yes")
{
Write-Verbose -Message ""
cls
}
}
#$A_YodaByte.y; $A_YodaByte.x; $A_YodaByte.T; $A_YodaByte.H; $A_YodaByte.E; $A_YodaByte.w; ; $A_YodaByte.F; $A_YodaByte.O; $A_YodaByte.R; $A_YodaByte.C; $A_YodaByte.E2; $A_YodaByte.I; $A_YodaByte.B1; $A_YodaByte.E2; $A_YodaByte.N; $A_YodaByte.Y; $A_YodaByte.O1; $A_YodaByte.U; $A_YodaByte.G}
#$YodaByte = {
#Write-Verbose -Message $A_YodaByte.M -Verbose *>&1;
#Write-Verbose -Message $A_YodaByte.A; $A_YodaByte.y; $A_YodaByte.x; $A_YodaByte.T; $A_YodaByte.H; $A_YodaByte.E; $A_YodaByte.w; ; $A_YodaByte.F; $A_YodaByte.O; $A_YodaByte.R; $A_YodaByte.C; $A_YodaByte.E2; $A_YodaByte.I; $A_YodaByte.B1; $A_YodaByte.E2; $A_YodaByte.N; $A_YodaByte.Y; $A_YodaByte.O1; $A_YodaByte.U; $A_YodaByte.G}
#$A_YodaByte.M; $A_YodaByte.A; $A_YodaByte.y; $A_YodaByte.x; $A_YodaByte.T; $A_YodaByte.H; $A_YodaByte.E; $A_YodaByte.w; ; $A_YodaByte.F; $A_YodaByte.O; $A_YodaByte.R; $A_YodaByte.C; $A_YodaByte.E2; $A_YodaByte.I; $A_YodaByte.B1; $A_YodaByte.E2; $A_YodaByte.N; $A_YodaByte.Y; $A_YodaByte.O1; $A_YodaByte.U; $A_YodaByte.G}
#Read-Host "Want to see what a Yoda-Byte Looks Like?"
Function Yoda-Byte
{
cls
Read-Host "[DO OR DO NOT THERE IS NO TRY]
Press any key to continue:
But there isn't 'Any' 'AnyKey'"
$A_YodaByte=[Ordered]@{M="M"; A="A"; Y="Y"; x ="+"; T="T"; H="H"; E="E"; W ="+"; F="F"; O= "O"; R = "R"; C="C";E1="E"; I="+"; B1="B"; E2="E";N="+";W1="W";I1="I";T1="T"; H1="H"; Y1="+";Y3="Y";O4="O";U7="U"; G="<@:)"}
$A_YodaByte.values | Out-File C:\Kruse\A_YodatByte.txt
$A_YodaByte.values | Out-File C:\Kruse\A_YodatByte_1.txt
$A_YodaByte.values
Write-Verbose -Message "MayTheForceBeWithYou
Are You 'Sith'?
or
Are You 'JEDI' " -Verbose *>&1
$Solo = Read-Host "???:"
$Lando = Get-Content -raw "C:\Kruse\A_YodatByte.txt"
$Chewy = Get-Content "C:\Kruse\A_YodatByte_1.txt"
if ($Solo -eq "Jedi" )
{
Write-Verbose -Message $Lando -Verbose *>&1
Write-Verbose -Message "MayTheForceBeWithYou" -Verbose *>&1
Write-Verbose -Message "$Chewy" -Verbose *>&1
notepad C:\Kruse\A_YodatByte.txt
notepad C:\Kruse\A_YodatByte_1.txt
notepad C:\Kruse\A_YodatByte.txt
notepad C:\Kruse\A_YodatByte_1.txt
notepad C:\Kruse\A_YodatByte.txt
notepad C:\Kruse\A_YodatByte_1.txt
notepad C:\Kruse\A_YodatByte.txt
notepad C:\Kruse\A_YodatByte_1.txt
notepad C:\Kruse\A_YodatByte.txt
notepad C:\Kruse\A_YodatByte_1.txt
notepad C:\Kruse\A_YodatByte.txt
notepad C:\Kruse\A_YodatByte_1.txt
}
elseif ($Solo -eq "Sith" )
{
Write-Verbose -Message "The Foce Is Not With You" -Verbose *>&1
$ThereIsAnotherSkyWalker = Read-host "Try Again?"
}
elseif ($solo -ne {"Jedi" -and "Sith"} )
{
Write-Verbose -Message "You have to choose. Jedi Or Sith" -Verbose *>&1
$ThereIsAnotherSkyWalker = Read-Host "Try Again?"
}
If ($ThereIsAnotherSkyWalker -eq "Yes")
{
Write-Verbose -Message "Restarting: Are you a Sith Or Jedi Quiz" -Verbose *>&1
Read-Host "Press Any Key To Continue"
Yoda-Byte
}
else
{
Write-Verbose -Message "INVALID_ENTRY_SHUTTING_DOWN" -Verbose *>&1
Read-Host "Good_BYE_:)
TFTSP_FWH"
}
}
Yoda-Byte
}
#$A_YodaByte.y; $A_YodaByte.x; $A_YodaByte.T; $A_YodaByte.H; $A_YodaByte.E; $A_YodaByte.w; ; $A_YodaByte.F; $A_YodaByte.O; $A_YodaByte.R; $A_YodaByte.C; $A_YodaByte.E2; $A_YodaByte.I; $A_YodaByte.B1; $A_YodaByte.E2; $A_YodaByte.N; $A_YodaByte.Y; $A_YodaByte.O1; $A_YodaByte.U; $A_YodaByte.G}
