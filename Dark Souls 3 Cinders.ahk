AppDataLocation := A_AppData . "\DarkSoulsIII"
GameLocation := "D:\Steam\steamapps\common\DARK SOULS III\Game"
SavegameName := "011000010b4557f8"

; Create Mode-File if not already there
if (not FileExist(AppDataLocation . "\Mode")){
	FileAppend, Base, %AppDataLocation%\Mode
}

; Read Mode-File
file := FileOpen(AppDataLocation . "\Mode", "r")
mode := file.ReadLine()

; Move files
if (mode == "Base"){ ;Activate Cinders
	FileCreateDir, %AppDataLocation%\Base
	FileMoveDir, %AppDataLocation%\%SavegameName%, %AppDataLocation%\Base\%SavegameName%
	
	FileMoveDir, %AppDataLocation%\Cinders\%SavegameName%, %AppDataLocation%\%SavegameName%
	FileRemoveDir, %AppDataLocation%\Cinders
	
	FileDelete, %AppDataLocation%\Mode
	FileAppend, Cinders, %AppDataLocation%\Mode
} else if (mode == "Cinders") {
	FileCreateDir, %AppDataLocation%\Cinders
	FileMoveDir, %AppDataLocation%\%SavegameName%, %AppDataLocation%\Cinders\%SavegameName%
	
	FileMoveDir, %AppDataLocation%\Base\%SavegameName%, %AppDataLocation%\%SavegameName%
	FileRemoveDir, %AppDataLocation%\Base
	
	FileDelete, %AppDataLocation%\Mode
	FileAppend, Base, %AppDataLocation%\Mode
} else {
	MsgBox, Your Mode-file is not configured properly
	ExitApp
}

; (De)activate dinput8.dll
if (mode == "Base"){
	FileMove, %GameLocation%\dinput8.dll.deactivated, %GameLocation%\dinput8.dll
} else if (mode = "Cinders"){
	FileMove, %GameLocation%\dinput8.dll, %GameLocation%\dinput8.dll.deactivated
} else {
	MsgBox, Your Mode-file is not configured properly
	ExitApp
}

; Feedback to the user
if (mode = "Base"){
	MsgBox, Switched to Cinders
} else {
	MsgBox, Switched to Basegame
}