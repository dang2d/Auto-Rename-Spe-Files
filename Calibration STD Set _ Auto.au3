#cs ----------------------------------------------------------------------------

 Tool Version: 1.0.0.0
 Author:         Dang Nguyen

 Tool Function:
	Auto input the values of standard set.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <msgboxconstants.au3>
#NoTrayIcon
#Region ### START Koda GUI section ### Form=
Global $MainForm = GUICreate("Calibration STD. Set AUTO - FIVI", 421, 135, -1, -1)
Global $MenuFile = GUICtrlCreateMenu("File")
Global $MenuAbout = GUICtrlCreateMenuItem("About", $MenuFile)
Global $MenuExit = GUICtrlCreateMenuItem("Exit", $MenuFile)
GUISetIcon("C:\Users\DANG\OneDrive\Helmut Fischer\MKT\Helmut Fischer.ico", -1)
GUISetFont(12, 400, 0, "Be Vietnam Pro")
Global $Label = GUICtrlCreateLabel("Choose the correct product", 24, 16, 376, 45)
GUICtrlSetFont(-1, 20, 400, 0, "Be Vietnam Pro")
Global $GoldJewelry = GUICtrlCreateRadio("Gold Jewelry", 24, 70, 129, 25)
Global $GoldGlobal = GUICtrlCreateRadio("Gold Global", 160, 70, 129, 25)
Global $RhJewelry = GUICtrlCreateRadio("Rh/Jewelry", 290, 70, 129, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=C:\Users\DANG\OneDrive\Helmut Fischer\MKT\Helmut Fischer.ico
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Comment=Made by Dang
#AutoIt3Wrapper_Res_Description=Made by Dang
#AutoIt3Wrapper_Res_Fileversion=1.3.2.1
#AutoIt3Wrapper_Res_ProductName=Auto Input Calibration std Set
#AutoIt3Wrapper_Res_CompanyName=FIVI
#AutoIt3Wrapper_Res_LegalCopyright=Dang
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

Global Const $config = @ScriptDir & "\CONFIG.ini"

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $MenuFile
		Case $MenuAbout
			MsgBox(64 + 262144,"Thông tin phiên bản","Tool tự động input giá trị tấm chuẩn" & @CRLF & "Made by Dang")
		Case $MenuExit
			Exit
		Case $GoldJewelry
			Local $check_file = FileExists($config)
			If $check_file Then
				For $i = 1 to 20
					Local $std = "STD" & $i
					Gold_Jewelry()
				Next
			Else
				MsgBox(16 + 262144,"Lỗi","Không tìm thấy file CONFIG")
			EndIf
		Case $GoldGlobal
			Local $check_file = FileExists($config)
			If $check_file Then
				For $i = 1 to 20
					Local $std = "STD" & $i
					Gold_Global()
				Next
			Else
				MsgBox(16 + 262144,"Lỗi","Không tìm thấy file CONFIG")
			EndIf
		Case $RhJewelry
			Local $check_file = FileExists($config)
			If $check_file Then
				For $i = 1 to 20
					Local $std = "STD" & $i
					Rh_Jewelry()
				Next
			Else
				MsgBox(16 + 262144,"Lỗi","Không tìm thấy file CONFIG")
			EndIf
	EndSwitch
WEnd

; Function move - Begin
Func movedown()
	Sleep(100)
	Send("{DOWN}")
	Sleep(100)
EndFunc
Func moveup()
	Sleep(100)
	Send("{UP}")
	Sleep(100)
EndFunc
Func moveright()
	Sleep(100)
	Send("{RIGHT}")
	Sleep(100)
EndFunc
; Function move - End

Func Gold_Jewelry()
	Local $Label = IniRead($config,$std,"Label","")
	Local $Au = IniRead($config,$std,"Au","")
	Local $Ag = IniRead($config,$std,"Ag","")
	Local $Cu = IniRead($config,$std,"Cu","")
	Local $Zn = IniRead($config,$std,"Zn","")
	Local $Ni = IniRead($config,$std,"Ni","")
	Local $Pd = IniRead($config,$std,"Pd","")
	Local $Cd = IniRead($config,$std,"Cd","")
	Local $Fe = IniRead($config,$std,"Fe","")
	Local $uAu = IniRead($config,$std,"uAu","")
	Local $uAg = IniRead($config,$std,"uAg","")
	Local $uCu = IniRead($config,$std,"uCu","")
	Local $uZn = IniRead($config,$std,"uZn","")
	Local $uNi = IniRead($config,$std,"uNi","")
	Local $uPd = IniRead($config,$std,"uPd","")
	Local $uCd = IniRead($config,$std,"uCd","")
	Local $uFe = IniRead($config,$std,"uFe","")
	$ask = MsgBox(1 + 262144,"","Tấm chuẩn " & $i & " - " & $Label)
	If $ask = $idcancel Then
		Return
	EndIf
	Send($Au)
	movedown()
	Send($Ag)
	movedown()
	Send($Cu)
	movedown()
	Send($Zn)
	movedown()
	Send($Ni)
	movedown()
	Send($Pd)
	movedown()
	Send($Cd)
	movedown()
	Send($Fe)
	moveright()
	Send($uFe)
	moveup()
	Send($uCd)
	moveup()
	Send($uPd)
	moveup()
	Send($uNi)
	moveup()
	Send($uZn)
	moveup()
	Send($uCu)
	moveup()
	Send($uAg)
	moveup()
	Send($uAu)
	MsgBox(0 + 262144,"","Nhập label")
	Send($Label)
	Sleep(2000)
EndFunc

Func Gold_Global()
	Local $Label = IniRead($config,$std,"Label","")
	Local $Au = IniRead($config,$std,"Au","")
	Local $Ag = IniRead($config,$std,"Ag","")
	Local $Cu = IniRead($config,$std,"Cu","")
	Local $Zn = IniRead($config,$std,"Zn","")
	Local $Ni = IniRead($config,$std,"Ni","")
	Local $Pd = IniRead($config,$std,"Pd","")
	Local $Cd = IniRead($config,$std,"Cd","")
	Local $Fe = IniRead($config,$std,"Fe","")
	Local $Pt = IniRead($config,$std,"Pt","")
	Local $Sn = IniRead($config,$std,"Sn","")
	Local $Pb = IniRead($config,$std,"Pd","")
	Local $Cr = IniRead($config,$std,"Cr","")
	Local $Mo = IniRead($config,$std,"Mo","")
	Local $Co = IniRead($config,$std,"Co","")
	Local $Rh = IniRead($config,$std,"Rh","")
	Local $Ru = IniRead($config,$std,"Ru","")
	Local $In = IniRead($config,$std,"In","")
	Local $Ir = IniRead($config,$std,"Ir","")
	Local $W = IniRead($config,$std,"W","")
	Local $Bi = IniRead($config,$std,"Bi","")
	Local $Mn = IniRead($config,$std,"Mn","")
	Local $Ga = IniRead($config,$std,"Ga","")
	Local $uAu = IniRead($config,$std,"uAu","")
	Local $uAg = IniRead($config,$std,"uAg","")
	Local $uCu = IniRead($config,$std,"uCu","")
	Local $uZn = IniRead($config,$std,"uZn","")
	Local $uNi = IniRead($config,$std,"uNi","")
	Local $uPd = IniRead($config,$std,"uPd","")
	Local $uCd = IniRead($config,$std,"uCd","")
	Local $uFe = IniRead($config,$std,"uFe","")
	Local $uPt = IniRead($config,$std,"uPt","")
	Local $uSn = IniRead($config,$std,"uSn","")
	Local $uPb = IniRead($config,$std,"uPd","")
	Local $uCr = IniRead($config,$std,"uCr","")
	Local $uMo = IniRead($config,$std,"uMo","")
	Local $uCo = IniRead($config,$std,"uCo","")
	Local $uRh = IniRead($config,$std,"uRh","")
	Local $uRu = IniRead($config,$std,"uRu","")
	Local $uIn = IniRead($config,$std,"uIn","")
	Local $uIr = IniRead($config,$std,"uIr","")
	Local $uW = IniRead($config,$std,"uW","")
	Local $uBi = IniRead($config,$std,"uBi","")
	Local $uMn = IniRead($config,$std,"uMn","")
	Local $uGa = IniRead($config,$std,"uGa","")
	$ask = MsgBox(1 + 262144,"","Tấm chuẩn " & $i & " - " & $Label)
	If $ask = $idcancel Then
		Return
	EndIf
	Send($Au)
	movedown()
	Send($Ag)
	movedown()
	Send($Pt)
	movedown()
	Send($Pd)
	movedown()
	Send($Cu)
	movedown()
	Send($Zn)
	movedown()
	Send($Sn)
	movedown()
	Send($Pb)
	movedown()
	Send($Fe)
	movedown()
	Send($Cr)
	movedown()
	Send($Ni)
	movedown()
	Send($Mo)
	movedown()
	Send($Co)
	movedown()
	Send($Rh)
	movedown()
	Send($Ru)
	movedown()
	Send($In)
	movedown()
	Send($Ir)
	movedown()
	Send($W)
	movedown()
	Send($Bi)
	movedown()
	Send($Mn)
	movedown()
	Send($Ga)
	movedown()
	Send($Cd)
	moveright()
	Send($uCd)
	moveup()
	Send($uGa)
	moveup()
	Send($uMn)
	moveup()
	Send($uBi)
	moveup()
	Send($uW)
	moveup()
	Send($uIr)
	moveup()
	Send($uIn)
	moveup()
	Send($uRu)
	moveup()
	Send($uRh)
	moveup()
	Send($uCo)
	moveup()
	Send($uMo)
	moveup()
	Send($uNi)
	moveup()
	Send($uCr)
	moveup()
	Send($uFe)
	moveup()
	Send($uPb)
	moveup()
	Send($uSn)
	moveup()
	Send($uZn)
	moveup()
	Send($uCu)
	moveup()
	Send($uPd)
	moveup()
	Send($uPt)
	moveup()
	Send($uAg)
	moveup()
	Send($uAu)
	MsgBox(0 + 262144,"","Nhập label")
	Send($Label)
	Sleep(2000)
EndFunc

Func Rh_Jewelry()
	Local $Label = IniRead($config,$std,"Label","")
	Local $Au = IniRead($config,$std,"Au","")
	Local $Ag = IniRead($config,$std,"Ag","")
	Local $Cu = IniRead($config,$std,"Cu","")
	Local $Zn = IniRead($config,$std,"Zn","")
	Local $Ni = IniRead($config,$std,"Ni","")
	Local $Pd = IniRead($config,$std,"Pd","")
	Local $uAu = IniRead($config,$std,"uAu","")
	Local $uAg = IniRead($config,$std,"uAg","")
	Local $uCu = IniRead($config,$std,"uCu","")
	Local $uZn = IniRead($config,$std,"uZn","")
	Local $uNi = IniRead($config,$std,"uNi","")
	Local $uPd = IniRead($config,$std,"uPd","")
	$ask = MsgBox(1 + 262144,"","Tấm chuẩn " & $i & " - " & $Label)
	If $ask = $idcancel Then
		Return
	EndIf
	Send($Au)
	movedown()
	Send($Ag)
	movedown()
	Send($Pd)
	movedown()
	Send($Cu)
	movedown()
	Send($Zn)
	movedown()
	Send($Ni)
	moveright()
	Send($uNi)
	moveup()
	Send($uZn)
	moveup()
	Send($uCu)
	moveup()
	Send($uPd)
	moveup()
	Send($uAg)
	moveup()
	Send($uAu)
	MsgBox(0 + 262144,"","Nhập label")
	Send($Label)
	Sleep(4000)
EndFunc