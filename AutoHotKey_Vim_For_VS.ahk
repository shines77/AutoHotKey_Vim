;;====================Feng Ruohang's AHK Script=====================;;
;;===================Modified By Shines77(Guozi)====================;;
;;==================================================================;;
;;=========================CapsLock's Stuff=========================;;
;;==================================================================;;

;;==================================================================;;
;; From: http://www.autohotkey.com/docs/Hotkeys.htm
;;==================================================================;;

UMDelay = 20

SetCapsLockState, AlwaysOff
;;SetCapsLockState, Off

;;====================== CapsLock Switcher ========================||
CapsLock & `::
GetKeyState, CapsLockState, CapsLock, T
if CapsLockState = D
    SetCapsLockState, AlwaysOff
else
    SetCapsLockState, AlwaysOn
KeyWait, ``
return

;;=============================Navigator============================||
;===========================;I = Home & Ctrl + Home
CapsLock & u::
if GetKeyState("control") = 0
{
    ; Home
    if GetKeyState("alt") = 0
        Send, {Home}
    else
        Send, +{Home}
    return
}
else {
    ; Ctrl + Home
    if GetKeyState("alt") = 0
        Send, ^{Home}
    else
        Send, +^{Home}
    return
}
return
;===========================;O = End & Ctrl + End
CapsLock & o::
if GetKeyState("control") = 0
{
    ; End
    if GetKeyState("alt") = 0
        Send, {End}
    else
        Send, +{End}
    return
}
else {
    ; Ctrl + End
    if GetKeyState("alt") = 0
        Send, ^{End}
    else
        Send, +^{End}
    return
}
return
;===========================;U = PageUp & Ctrl + PageUp
CapsLock & p::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {PgUp}
    else
        Send, +{PgUp}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{PgUp}
    else
        Send, +^{PgUp}
    return
}
return
;===========================;P = PageDown & Ctrl + PageDown
CapsLock & `;::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {PgDn}
    else
        Send, +{PgDn}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{PgDn}
    else
        Send, +^{PgDn}
    return
}
return
;===========================;K = UP & Ctrl + UP
CapsLock & i::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {Up}
    else
        Send, +{Up}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Up}
    else
        Send, +^{Up}
    return
}
return
;===========================;J = Down & Ctrl + Down
CapsLock & k::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {Down}
    else
        Send, +{Down}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Down}
    else
        Send, +^{Down}
    return
}
return
;===========================;H = Left & Ctrl + Left
CapsLock & j::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {Left}
    else
        Send, +{Left}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Left}
    else
        Send, +^{Left}
    return
}
return
;===========================;L = Right & Ctrl + Right
CapsLock & l::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {Right}
    else
        Send, +{Right}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Right}
    else
        Send, +^{Right}
    return
}
return

;;============= Navigate source code in Visual Studio ==============||
;===========================;CapsLock + - == Ctrl + - (Backward Navigite)
CapsLock & -::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, ^-
    else
        Send, !-
    return
}
else {
    if GetKeyState("alt") = 0
        Send, +-
    else
        Send, ^!-
    return
}
return
;===========================;CapsLock + = == Shift + Ctrl + - (Forward Navigite)
CapsLock & =::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, +^-
    else
        Send, !=
    return
}
else {
    if GetKeyState("alt") = 0
        Send, +=
    else
        Send, ^!=
    return
}
return

;;=============================Backspace==============================||
;===========================; Backspace = CapsLock + [
CapsLock & [::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {BS}
    else
        Send, +{Home}{Del}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{BS}
    else
        Send, ^!{BS}
    return
}
return
;===========================; Backspace = CapsLock + ]
CapsLock & ]::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {Del}
    else
        Send, +{End}{Del}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Del}
    else
        Send, ^!{Del}
    return
}
return

;;============================= Enter ==============================||
CapsLock & h::
if GetKeyState("control") = 0
{
    if GetKeyState("alt") = 0
        Send, {Enter}
    else
        Send, +{Enter}
    return
}
else {
    if GetKeyState("alt") = 0
        Send, ^{Enter}
    else
        Send, ^+{Enter}
    return
}
return

;;=============================Deletor==============================||
CapsLock & ,:: Send, {Del}              ; , = Del char after
CapsLock & .:: Send, ^{Del}             ; . = Del word after
CapsLock & /:: Send, +{End}{Del}        ; / = Del all  after

CapsLock & m:: Send, {BS}               ; m = Del char before;
CapsLock & n:: Send, ^{BS}              ; n = Del word before;
CapsLock & b:: Send, +{Home}{Del}       ; b = Del all  before;

;;============================Special Char==========================||
CapsLock & ':: Send, =                  ; ' = =
;;CapsLock & `;:: Send, {Enter}           ; ; = Enter
;;CapsLock & {:: Send, +9                 ; { = (
;;CapsLock & }:: Send, +0;                ; } = )
;;CapsLock & `:: Send, +``                ; Shift
CapsLock & 4:: Send, +4
CapsLock & 5:: Send, +5
CapsLock & 6:: Send, +6
CapsLock & 7:: Send, +7
CapsLock & 8:: Send, +8
CapsLock & 9:: Send, +9
CapsLock & 0:: Send, +0
;;CapsLock & -:: Send, +-
;;CapsLock & =:: Send, +=
CapsLock & \:: Send, +=

;;============================Editor================================||
CapsLock & z:: Send, ^z                 ; Z = Cancel
CapsLock & x:: Send, ^x                 ; X = Cut
CapsLock & c:: Send, ^c                 ; C = Copy
CapsLock & v:: Send, ^v                 ; V = Paste
CapsLock & a:: Send, ^a                 ; A = Select All
CapsLock & y:: Send, ^y                 ; Y = Redo

;;===========================Controller=============================||
CapsLock & s:: Send, ^{Tab}             ; Switch Tag    S = {Ctr + Tab}
CapsLock & w:: Send, ^w                 ; Close Tag     W = {Ctr + W}
CapsLock & q:: Send, !{F4}              ; Close Window  Q = {Alt + F4}

;;======================= Mouse Controller ==========================||
CapsLock & Up::    MouseMove, 0, -10, 0, R     ; CapsLock + UpArrow hotkey => Move cursor upward
CapsLock & Down::  MouseMove, 0, 10, 0, R      ; CapsLock + DownArrow => Move cursor downward
CapsLock & Left::  MouseMove, -10, 0, 0, R     ; CapsLock + LeftArrow => Move cursor to the left
CapsLock & Right:: MouseMove, 10, 0, 0, R      ; CapsLock + RightArrow => Move cursor to the right
CapsLock & Enter::
SendEvent {Blind}{LButton down}
KeyWait Enter
SendEvent {Blind}{LButton up}
return

;;=========================== CapsLock =============================||
CapsLock::                              ; Vimer's love  Capslock = {ESC}
GetKeyState, MButtonState, MButton, P
if MButtonState = D
{
    if ((GetKeyState("control") = 0) and (GetKeyState("alt") = 0))
    {
        Send, {Del}
    }
}
else
    Send, {ESC}
return

;;======================= Mouse Controller =========================||

~MButton::             ;; CapsLock + MButtonDown (no Ctrl + no Alt)
SetMouseDelay -1
GetKeyState, MButtonState, MButton, P
if MButtonState = D
{
    if ((GetKeyState("control") = 0) and (GetKeyState("alt") = 0))
    {
        GetKeyState, CapsLockState, CapsLock, P
        if CapsLockState = D
            Send, {Del}
    }
}
return

^~MButton::             ;; Ctrl + MButtonDown
SetMouseDelay -1
GetKeyState, MButtonState, MButton, P
if MButtonState = D
{
    GetKeyState, CapsLockState, CapsLock, P
    if CapsLockState = U
    {
        ;; MsgBox "CapsLockState = " + %CapsLockState%
        GetKeyState, CtrlState, Control, P
        if CtrlState = D
            Send, ^x
    }
}
return

!~MButton::             ;; Alt + MButtonDown
SetMouseDelay -1
GetKeyState, MButtonState, MButton, P
if MButtonState = D
{
    GetKeyState, CapsLockState, CapsLock, P
    if CapsLockState = U
    {
        GetKeyState, AltState, Alt, P
        if AltState = D
            Send, ^v
    }
}
return

;;==================== Mouse Wheel Controller ======================||

!~WheelUp::
Goto ButtonWheelUp
return

!~WheelDown::
Goto ButtonWheelDown
return

ButtonWheelUp:
ButtonWheelDown:
SetMouseDelay -1
GetKeyState, MButtonState, MButton, P
if not (MButtonState = D)
{
    if GetKeyState("Control") = 0
    {
        GetKeyState, CapsLockState, CapsLock, P
        if CapsLockState = D
        {
            Send, ^c
            ClipWait
            ;; MsgBox "Copy to Clipboard, Ctrl + C have done."

            ;;
            ;; From: http://stackoverflow.com/questions/13553340/a-way-to-select-text-in-autohotkey
            ;;
            if (Clipboard = "") ; Nothing selected, thus copy whole line
            {
                Send, {Home}+{End}^c ; Select line and copy to clipbard
            }
        }
    }
}
return

;;======================================================================
;; From: http://www.autohotkey.com/docs/scripts/TooltipMouseMenu.htm
;;======================================================================
ButtonMButtonTest:
HowLong = 0
Loop
{
    HowLong ++
    Sleep, 10
    GetKeyState, MButtonState, MButton, P
    IfEqual, MButtonState, U, Break
}
GetKeyState, CapsLockIsPress, CapsLock, P
IfLess, HowLong, %UMDelay%, Return
return

;;=========================Application==============================||
CapsLock & d:: Send, !d                 ; Dictionary    D = {Alt + D}
CapsLock & f:: Send, !f                 ; Everything    F = {Alt + F}
CapsLock & g:: Send, !g                 ; Reversed      G = {Alt + G}
CapsLock & e:: Run http://www.google.com/   ; Run Explore   E = {Explore}
CapsLock & r:: Run Powershell           ; Run Powersh   R = {Powershell}
CapsLock & t:: Run notepad.exe          ; Run Notepad   T = {Text Editor}

;;==================================================================;;
;;=========================CapsLock's Stuff=========================;;
;;==================================================================;;
