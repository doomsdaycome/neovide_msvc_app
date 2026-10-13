Set shell = CreateObject("WScript.Shell")
script = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName) & "\neovide-msvc.bat"
shell.Run """" & script & """", 0, False
