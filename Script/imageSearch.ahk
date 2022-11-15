#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, ImageFile
; OutputVarX: 이미지를 찾았을 때의 X좌표가 담기는 출력 변수명
; OutputVarY: 이미지를 찾았을 때의 Y좌표가 담기는 출력 변수명
; X1: 이미지 서치를 시작하는 X좌표
; Y1: 이미지 서치를 시작하는 Y좌표
; X2: 이미지 서치를 끝내는 X좌표
; Y2: 이미지 서치를 끝내는 Y좌표
; ImageFile: 찾을 이미지의 파일명을 포함한 경로 (+ 이미지 서치의 옵션)




; 이미지를 따는 요령을 몇 가지 알려드리겠습니다.

; 특징이 드러나게 딸 것
; 가능한 한 작게 딸 것

; *n: 오차의 허용 범위를 지정해줍니다. n에는 숫자가 들어가며, 0부터 255사이의 숫자가 들어갈 수 있습니다. 숫자가 높을수록 허용 범위가 넓어지며, 기본은 0입니다.
; *30 정도가 적당한 값
F1::
ImageSearch, vx, vy, 0, 0, 1920, 1080, *30 Image.png
MsgBox, %ErrorLevel%
MsgBox, vw
MsgBox, vy
ExitApp,

F2::
ImageSearch, vx, vy, 0, 0, 1920, 1080, *30 Image.png
if (ErrorLevel = 0)
{
    MouseClick, Left,  vx, vy
    MsgBox, 이미지를 찾았습니다! `n찾은 좌표: %vx%`, %vy%
}
else
{
    MsgBox, 이미지를 못 찾았거나, 이미지서치를 수행하지 못했습니다. (ErrorLevel = %ErrorLevel%)
}
return


; 이미지서치를 한 이후엔 ErrorLevel변수에 값이 새로이 담기게됩니다.
; 이미지를 정상적으로 찾으면 0, 못찾으면 1입니다.
; 간혹 2가 들어있는 경우가 있는데, 구문 오류 등으로 이미지 서치를 정상적으로 할 수 없는 경우에 나타납니다. 