!include WordFunc.nsh
!insertmacro WordReplace
; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines custom install default dir
!macro preInit
    ; SetRegView 32
    ; ReadRegStr $R0 HKLM "SOFTWARE\MallProCash" "InstallLocation"
    ; SetRegView 64
    ; ReadRegStr $R0 HKLM "SOFTWARE\MallProCash" "InstallLocation"
    ; StrCpy $R1 $R0 1 # 得到第一位字符 $R1 = "
    ; StrCpy $R2 $R0 "" -1 # 得到最后一位字符 $R2 = "
    ; StrCmp $R1 '"' 0 +3 # 比较$R1 = " 继续执行 否 +3
    ; StrCmp $R2 '"' 0 +2 # 比较$R2 = " 继续执行 否 +2
    ; StrCpy $R0 $R0 -1 1 # " $R0 = C:\Program Files (x86)\PotPlayer\uninstall.exe
    ; StrCmp $R0 "" 0 +2
    ; StrCpy $R0 "C:\Program Files" 0
    ; ${WordReplace} "$R0" "MallProCash" "" "-1" $R0

    ; SetRegView 64
    ; WriteRegExpandStr HKLM "${INSTALL_REGISTRY_KEY}" InstallLocation "$R0"
    ; WriteRegExpandStr HKCU "${INSTALL_REGISTRY_KEY}" InstallLocation "$R0"
    ; SetRegView 32
    ; WriteRegExpandStr HKLM "${INSTALL_REGISTRY_KEY}" InstallLocation "$R0"
    ; WriteRegExpandStr HKCU "${INSTALL_REGISTRY_KEY}" InstallLocation "$R0"
!macroend

!macro customInstall
    SetRegView 64
    WriteRegExpandStr HKLM "${INSTALL_REGISTRY_KEY}" InstallLocation "$INSTDIR"
    WriteRegExpandStr HKCU "${INSTALL_REGISTRY_KEY}" InstallLocation "$INSTDIR"
    SetRegView 32
    WriteRegExpandStr HKLM "${INSTALL_REGISTRY_KEY}" InstallLocation "$INSTDIR"
    WriteRegExpandStr HKCU "${INSTALL_REGISTRY_KEY}" InstallLocation "$INSTDIR"
    ; SetRegView 32
    ; ReadRegStr $R0 HKLM "SOFTWARE\MallProCash" "InstallLocation"
    ; StrCpy $R1 $R0 1 # 得到第一位字符 $R1 = "
    ; StrCpy $R2 $R0 "" -1 # 得到最后一位字符 $R2 = "
    ; StrCmp $R1 '"' 0 +3 # 比较$R1 = " 继续执行 否 +3
    ; StrCmp $R2 '"' 0 +2 # 比较$R2 = " 继续执行 否 +2
    ; StrCpy $R0 $R0 -1 1 # " $R0 = C:\Program Files (x86)\PotPlayer\uninstall.exe
    ; StrCmp $R0 "" 0 +2
    ; StrCpy $R0 "C:\Program Files" 0
    ; DetailPrint "$R0"

 
!macroend