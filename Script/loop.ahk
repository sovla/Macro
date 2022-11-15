#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Loop [, Count]

a := 0
b := 0
Loop, 3
{
    a++
    Loop, 5
    {
        b++
        MsgBox, 바깥쪽 반복문은 %a%회`, 안쪽 반복문은 %b%회 반복했습니다.
    }
    b := 0
}
ExitApp

if (조건)
{
    // 조건이 참일 때 할 행동
}
else
{
    // 조건이 거짓일 때 할  행동
}

; 헷갈리는 구문 

; var는 변수이고, "문자열"은 문자열일때

; [옳은 구문]
; - (var "문자열")
; - %var% 문자열

; [틀린 구문]
; - (%var% 문자열)
; - var "문자열"

; [옳은 구문]
; - var := var "문자열"
; - var++

; [틀린 구문]
; - var := %var% 문자열
; - %var%++