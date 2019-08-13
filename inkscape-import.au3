#include <File.au3>
#include <MsgBoxConstants.au3>
#include <FileConstants.au3>
#include <WinAPIFiles.au3>
#include <Array.au3>
#pragma compile(Icon, 'Goescat-Macaron-Inkscape.ico')

If $CmdLine = 0 Then
   Exit
EndIf

FileChangeDir(@ScriptDir)
Local $inkscapePath = '"' & _PathGetRelative ( @ScriptDir, "..\inkscape.exe" ) & '"'
;MsgBox($MB_SYSTEMMODAL, "", $inkscapePath)

For $i = 1 To $CmdLine[0]
   Local $file = '"' & $CmdLine[$i] & '"'

   Local $cmd = $inkscapePath & " -f " & $file

   ;MsgBox($MB_SYSTEMMODAL, "", $cmd)
   Run($cmd)
Next