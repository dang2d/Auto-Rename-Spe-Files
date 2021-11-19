#cs ----------------------------------------------------------------------------

 AutoRename Version: 2.0.1.2
 Author:         Dang Nguyen

 Description:
	Auto Rename Spe Files.

#ce ----------------------------------------------------------------------------

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#NoTrayIcon
#Region ### START Koda GUI section ### Form=
Global $MainForm = GUICreate("Auto Rename Spe Files - FIVI", 372, 134, -1, -1)
Global $MenuFile = GUICtrlCreateMenu("File")
Global $MenuAbout = GUICtrlCreateMenuItem("About", $MenuFile)
Global $MenuExit = GUICtrlCreateMenuItem("Exit", $MenuFile)
GUISetIcon("C:\Users\DANG\OneDrive\Helmut Fischer\MKT\Helmut Fischer.ico", -1)
GUISetFont(12, 400, 0, "Be Vietnam Pro")
Global $Label1 = GUICtrlCreateLabel("Coll[...]_N", 16, 16, 86, 30)
Global $Label2 = GUICtrlCreateLabel("Coll[...]_N", 13, 63, 86, 30)
Global $InputOld = GUICtrlCreateInput("1", 120, 16, 121, 32)
Global $InputNew = GUICtrlCreateInput("3", 120, 59, 121, 32)
Global $ButtonStart = GUICtrlCreateButton("Start", 264, 16, 75, 73, $BS_DEFPUSHBUTTON)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\..\..\..\Helmut Fischer\MKT\Helmut Fischer.ico
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Comment=Made by Dang
#AutoIt3Wrapper_Res_Description=Made by Dang
#AutoIt3Wrapper_Res_Fileversion=2.0.1.2
#AutoIt3Wrapper_Res_ProductName=Auto Rename Spe Files
#AutoIt3Wrapper_Res_CompanyName=FIVI
#AutoIt3Wrapper_Res_LegalCopyright=Dang
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $MenuAbout
			MsgBox(64 + 262144,"Thông tin phiên bản","Auto Rename Spe Files V2" & @CRLF & "Made by Dang")
		Case $MenuExit
			Exit
		Case $ButtonStart
			Local $path = @ScriptDir & "\"
			Local $oFile = GUICtrlRead($InputOld)
			Local $oName = "Coll" & $oFile & "_N" ; Exp: Coll1_N
			Local $nFile = GUICtrlRead($InputNew)
			Local $nName = "Coll" & $nFile & "_N" ; Exp: Coll3_n
			Local $search = FileFindFirstFile("*" & $oName & "*") ; "*Coll1_N*"
			While 1
				Local $oFileName = FileFindNextFile($search)
				If @error Then ExitLoop
				Local $nFileName = StringReplace($oFileName,$oName,$nName)
				FileMove($path & $oFileName,$path & $nFileName,0)
			WEnd
			If $search == -1 Then
				Sleep(500)
				MsgBox(16 + 262144,"Lỗi","Không tìm thấy tên file phù hợp")
			Else
				Sleep(1000)
				MsgBox(64 + 262144,"Done","Đã hoàn thành đổi tên file")
			EndIf
			FileClose($search)
	EndSwitch
WEnd
