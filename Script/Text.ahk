
#include Script/FindText1.ahk
orderArray:= Array()
orderArray1:= Array()
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
Gui, Show, w300 h300, 텍스트자동입력
Gui, Add, Button, x10 y20 w100 h20 gBtn, 시작
Gui, Add, Button, x10 y45 w100 h20 gBtnFileSelect, 파일선택
Gui, Add, Button, x10 y70 w100 h20 gBtnTest, 테스트시작
FileEncoding ,UTF-8
return

GuiClose:
ExitApp

BtnFileSelect:
    ;파일 선택 부분
    FileSelectFile, d , s
    FileEncoding ,UTF-8
    FileRead, var, %d%
    Loop, Parse, var, `n
        orderArray.Push(A_LoopField)

    FileRead, var, ./test1.txt
    Loop, Parse, var, `n
        orderArray1.Push(A_LoopField)

return

findCopyButton(forderPath){
    SetTitleMatchMode, 2
    WinActivate, 사진노리-영·유아
    WinGetPos,,,W,H, 사진노리-영·유아

    send, ^f
    sleep, 500
    send, %forderPath%
    sleep, 500

    PixelSearch, Px, Py, 0, 0, W, H, 0xFF9632, 3, Fast RGB

    ; MouseClick, Left, Px+470, Py,5,5

    Count1:=SubStr(forderPath, -1)
    MouseClick, Left, Px+170, Py+20,5,5
    MouseClick, Left, Px+170, Py+20,5,5
    Sleep, 100
    Send, % Count1 
    Sleep, 200
    MouseClick, Left, Px+200, Py+20,5,5
    MouseClick, Left, Px+200, Py+20,5,5
    Sleep, 2000

    if(ErrorLevel = 0){
        return 2
    }else {
        return 0
    }

return 2
}

logSend(msg){
    formattime, time, , yyyy년 MM월 dd일 tt h시 mm분 ss
    FileAppend, [%time%]%msg%`n, LogFailText.txt,

}
logCompleteSend(msg){
    formattime, time, , yyyy년 MM월 dd일 tt h시 mm분 ss
    FileAppend, [%time%]%msg%`n, LogCompleteText1213.txt,

}

BtnTest:
    findCopyButton("22120303317089_연두_2")
return

Btn:
    for forderIndex, forder in orderArray
    {
        ; 편집실
        step:= 2
        Loop
        {
            Sleep, 10
            if(step == 0){
                logSend( "step:" . step . " ,forder: " . forder )
                break
            }

            if(step == 2){
                step:= findCopyButton(forder) != 0 ?100 :0

            }

            if(step == 100){
                logCompleteSend( "step:" . step . " ,forder: " . forder )

                break
            }
        }

    }

ExitApp
