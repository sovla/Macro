#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 키보드 입력 관련
; Send 명령어같은 경우에는 영문, 한글, 숫자를 제외한 입력값들을 Symbol을 이용해 표기해주어야합니다.
; SendRaw 명령어는 입력하고싶은 모든 키를 있는 그대로 표기할 수 있습니다.
; Sleep, 타이머



F1::
Send, 반수 입력해보세요
Sleep, 1000
Send, 텍스트
return

F2::
Send, 엔터키를 입력하시면 되겠네요.{Enter}얍얍
return
; 마우스 이동 관련 

; 좌표 기준
; 첫 번째 좌표: Screen Coordinate (Absolute Coordinate)  화면 기준 절대좌표
; 두 번째 좌표: Relative Coordinate  프로그램 기준 제목 표시줄 포함
; 세 번째 좌표: Client Coordinate  프로그램 기준 제목 표시줄 제외 << 요고 자주 쓸듯

; CoordMode, TargetType [, RelativeTo]
; TargetType 매개변수는 좌표 체계를 사용할 대상입니다. 5가지 대상이 있지만, 저희는 두 가지만 알아보겠습니다.
; Pixel
; Mouse 
; Pixel 타입은 추후에 배울 PixelGetColor, PixelSearch, ImageSearch 명령어에서 적용됩니다.
; Mouse 타입은 다음 강부터 배울 MouseGetPos, MouseClick, MouseMove 등 마우스 관련 명령어에서 적용됩니다.

; 좌표 알아내는 프로그램 윈도우기준  Window Spy
; Mouse Position 칸에 마우스 좌표가 나옵니다.
; Absolute는 절대 좌표, Relative는 상대 좌표, Client는 클라이언트 좌표입니다.

; 마우스 이동 함수 
; MouseMove, X, Y [, Speed, Relative]

; 마우스 클릭 
; MouseClick [, WhichButton, X, Y, ClickCount, Speed, DownOrUp, Relative]

; WhichButtons 매개변수: Left, Middle, Right를 써주시면 되며 각각 좌클릭, 휠클릭, 우클릭입니다.
; X 매개변수와 Y 매개변수: 좌표가 들어가면 됩니다.
; ClickCount 매개변수: 클릭 횟수를 표시해주시면 됩니다.
F3::
CoordMode, Mouse, Screen
MouseMove, 500, 500
Exitapp

F6::
ExitApp
