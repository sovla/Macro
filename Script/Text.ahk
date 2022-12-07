
#include ./\FindText1.ahk
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

findFolder(str){
    Text:=textCombiner(str)

    t1:=A_TickCount, X:=Y:=""

    Loop, 100
    {
        Sleep, 100

        if (ok:=FindText(X, Y, , , , , 0.1,0.1 , Text,,,1))
        {
            FindText().Click(X, Y, "L")
            FindText().Click(X, Y, "L")
            Break
        }
        if(Round(ok.Length()) == 0){
            MouseClick, WheelDown, , , 2
        }

    }
}

; findCuttingCopyButton(str){
;   Text:=textCopyRoomCombiner(str)
;   t1:=A_TickCount, X:=Y:=""
;   result:= false

;   Loop, 100
;   {
;     Sleep, 100

;     if (ok:=FindText(X, Y, , , , , 0.15,0.15 , Text,,,1))
;     {
;       result = true
;       ; FindText().Click(X, Y, "L")
;       ; FindText().Click(X, Y, "L")
;       Break
;     }
;     if(Round(ok.Length()) == 0){
;       MouseClick, WheelDown, , , 2
;     }

;   }

;   for i,v in ok ; ok value can be get from ok:=FindText().ok
;     if (i<=2)
;     FindText().MouseTip(ok[i].x, ok[i].y)

; return result
; }

; textCopyRoomCombiner(str){
;   textArray:= Array()
;   textArray.Push("|<0>*189$7.C8gI+73VMYFm")
;   textArray.Push("|<1>*212$4.DnAnAnC")
;   textArray.Push("|<2>*176$6.CF112248EzU")
;   textArray.Push("|<3>*182$6.S113A3113yU")
;   textArray.Push("|<4>*196$7.33XlNAaXTkkO")
;   textArray.Push("|<5>*181$5.z24D124Dc") 
;   textArray.Push("|<6>*178$7.DA442tWUUIFm")
;   textArray.Push("|<7>*179$6.z112244488U")
;   textArray.Push("|<8>*200$7.D8wO8sqlkQPu") 
;   textArray.Push("|<9>*187$7.SMcI/6y10UbW")
;   textArray.Push("|<->*190$4.y")
;   combineText:= ""
;   for index, element in StrSplit(str, "")
;   {
;     for textIndex, textElement in textArray
;     {
;       if((element*1)+1 == textIndex){
;         combineText .= textElement
;       }
;       if(element == "-" && textIndex == 11){
;         combineText .= textElement
;       }
;     }
;   }
;   test:=SubStr(str, 1 ,1)

; return combineText
; }

textCombiner(str){
    textArray:= Array()
    textArray.Push("|<0>*181$7.CAYGD6XFAXY")
    textArray.Push("|<1>*184$4.DnAnAnU")
    textArray.Push("|<2>*144$5.R48F4l3w")
    textArray.Push("|<3>*155$5.RA8a32Do")
    textArray.Push("|<4>*171$7.33VlNgazVUo")
    textArray.Push("|<5>*157$5.z27VV3Do")
    textArray.Push("|<6>*156$5.SW7clX5o")
    textArray.Push("|<7>*183$6.z264A88MEU")
    textArray.Push("|<8>*169$6.QmWmQWXXSU")
    textArray.Push("|<9>*155$5.R6AMj2Do")
    textArray.Push("|<->*178$4.y")
    combineText:= ""

    for index, element in StrSplit(str, "")
    {
        for textIndex, textElement in textArray
        {
            if((element*1)+1 == textIndex){
                combineText .= textElement
            }
            if(element == "-" && textIndex == 11){
                combineText .= textElement
            }
        }
    }
    test:=SubStr(str, 1 ,1)
return combineText
}
goCuttingRoom(){
    t1:=A_TickCount, X:="wait",Y:=100

    Text:="|<편집실>*181$35.M00005zk00TzzzUzzz1zzzUy03y01w00k03s01U07ny33zDbz6TwT0CAw0y00M01w00k03tU1U37nzX7zDXz6TsT02AE0y00M01w00k03ts1UDbnzXDzDUz6TkT00A00y00M01w00k03zs1U7yzzrTzs0zzzk001z000000000000000000000000000000000000000000001040E7uTcEUBwAEl0/sMVW0Llt5Y1zaOEc3z04Tk22A80U40Tlz0A0kX00Tlz7w8"

    if (ok:=FindText(X, Y, 485-150000, 458-150000, 485+150000, 458+150000, 0, 0, Text))
    {
        FindText().Click(X, Y, "L")
    }
return Round(ok.Length())
}

goCalendarCuttingRoom(){
    t1:=A_TickCount, X:="wait",Y:=100

    ; Text:="|<탁상달력>*170$134.0601U0M060000000000000DtUMMzaDlU3k600A1k0M3U30M66A1UDs1a7U0D0g0S1M0zbVVv0Sz60kkM00k/01UK0A1UgMk6ADUAA6AAA6k0MBZn1sNaABX0M031Va31g063NqzqQBXyMzq01UM/0kn01VaMk1U0M0001U1k61UAAk0MNaA00007zU000k1UM36A06ANXTy3z00MTy0M0M/0lzk1Xzsk1VUMTy01UA066MA0k0M1bM0MM66000M3z1X330A060Nw063z1zs06000000000000M00000000000000000000062" 회사용
    Text:="|<탁상달력V>*169$53.0601U0M07zA337wlyD0M66A1UDzwwADM3rsw1UgMk6ADsD3AlVgM3zqQBXyMzq0A030000A00007zU03zkTs033zk1VUMTy01U330kk003063z1zs07"

    ; Text:="|<탁상달력상품>*178$168.000000MMNyM0A000000000000603S7Uk1yMMNUNyw7Uk0A1UA1U0D6TnnAnk1UMMNUM6A4lk0Q3UQ3U0Nbszlgnk1ySQTUTyA0Pk0w7Uw7U0laMnlcEk1UMyNUNUw0MlaA7UA7jklaMnlsMk1UNXNzNUA0kkgABUABiMNbsznsMk1zP0M01UA1kkwABUABgMD6TnTsMk0000MTsz01UkMANUANgM06031cEk0zsDU0MTw3UkMANUANgM3s033Akk00MMsTsTw70kwAzkAzwM6A633AklU0MMMM00AC0laA1UA1iMA660w7UlU0MMMM00ADslaA1UA1jk6A600001U0MDUTs0A000000000A03s7z0000000000000000000000A00000U" 집용

    if (ok:=FindText(X, Y, 267-150000, 608-150000, 267+150000, 608+150000, 0.15, 0.15, Text))
    {
        FindText().Click(X, Y, "L")
        Sleep, 1000
        FindText().Click(X+200,Y,"L")
        Sleep, 1000

    }
return Round(ok.Length())
}

findCopyButton(forderPath){
    SetTitleMatchMode, 2
    WinActivate, 사진노리-영·유아 최고의 원생활앨범 전문제작 - Chrome
    WinGetPos,,,W,H, 사진노리-영·유아 최고의 원생활앨범 전문제작 - Chrome

    send, ^f
    sleep, 500
    send, %forderPath%
    sleep, 500

    PixelSearch, Px, Py, 0, 0, W, H, 0xFF9632, 3, Fast RGB

    MouseClick, Left, Px+470, Py,5,5

return 2
}

popupProcess(){
    ; 1012
    t1:=A_TickCount, X:="wait",Y:=5

    ; Text:="|<10-12>*199$30.AS0ASwn0wnAn0AnAnyA6An0AAAn0AMAn0AkAS0AzU" 회사용
    ;Text:="|<Class>*204$25.AQ3DCP3Yz8VkNYEMAmDAAN46CAW366P1a370nw"
    Text:="|<10-12V>*199$30.AS0ASwn0wnAn0AnAnyA6An0AAAn0AMAn0AkAS0AzU"

    if (ok:=FindText(X, Y, 1984-150000, 468-150000, 1984+150000, 468+150000, 0.15, 0.15, Text))
    {
        FindText().Click(X, Y, "L")

    }
    if(Round(ok.Length()) == 0){
        return Round(ok.Length())
    }

    ; 샘플

    t2:=A_TickCount, X1:="wait",Y1:=10

    ; Text:="|<sample>*166$33.00008000010QQvD9oIIZ5FU2Yce/XoZ5T2WYce4IIZtFQRYc9k00100U" 회사용
    ;Text:="|<sample>*187$34.0000400000E000010RtvbYt0oFlIo1F65FBx4MLwAIFnM0nF7tExx4M5s000U08"
    Text:="|<sampleV>*166$33.00008000010QQvD9oIIZ5FU2Yce/XoZ5T2WYce4IIZtFQRYc9k00100U"

    if (ok1:=FindText(X1, Y1, 1992-150000, 488-150000, 1992+150000, 488+150000, 0, 0, Text))
    {
        FindText().Click(X1+175, Y1, "L")
    }

    ; 팝업 복사하기 버튼

    CoordMode, Mouse, Relative

    MouseMove, 220, 480
    MouseClick, Left

return Round(ok.Length())
}

cuttingProgramStart() {
    ; 크롬 실행창
    ; TODO undefined 처리 필요 undefined 뜰 경우 다시 위로

    t3:=A_TickCount, X2:="wait",Y2:=20

    Text2:="|<프로그램실행>*200$30.0S7Vw0H8F6mFM92GFE91AHE918SE91AEM92KE8F6mE7VsU" 회사용
    ;Text2:="|<ChromePopup열기>*93$175.zzzzzzzbszzzzzzzzzzxzzzzzy7Q2ETznzzznxzzzw7VkDwDyztjzzyMDv/jztzzztwzzzyNjNnwrzTwzzzzSrxZmA8MQQAwAADBCbYxyzXho/VUza3wmtAqNYoqTAmTobLuSTDiqvBanTsRytRgtBuwtDaxDsn/xDDnb/Rab9bzzyQVqQaxSQbnSbysBybbyHZinHYny0SSLvCHSjCHtjHyAySHrzdmrNdmNzziz/xnNaHHNwn9zGTiNnxqvPAqPAzU7zZywAMQQAyQAzBDsQ7y3Xg6/VaTnzzm"

    if (ok2:=FindText(X2, Y2, 990-150000, 188-150000, 990+150000, 188+150000, 0, 0, Text2))
    {
        Sleep, 500 ; 간헐적으로 안눌러지는 경우 있음

        FindText().Click(X2, Y2, "L")
    }

    if(Round(ok2.Length()) == 0){
        ; 실패의 경우 F5 누르고
        Send, {F5}
        Sleep, 500

    }
return Round(ok2.Length())
}

cuttingProcess(forderPath){
    t1:=A_TickCount, X:="wait",Y:=100

    Text:="|<포토달력 최근 작업폴더>*197$48.CrsxCrvqSk8BPmHq6k8NnruSCzwzSzySTzxVAru64o0zArvyzo01Drs60rs1Drs600017Xs0U"

    if (ok:=FindText(X, Y, 102-150000, 125-150000, 102+150000, 125+150000, 0, 0, Text))
    {
    }

    t1:=A_TickCount, X:="wait",Y:=100

    Text:="|<주문번호>*161$46.TsTsVADkA10W4k00k42AH7y6UE8zw7VlVzW4lVg1008H4200zyzAMPzs400kz0k4E200k30E08030A100U7zkk7z3z00U"

    if (ok:=FindText(X, Y, 1537-150000, 795-150000, 1537+150000, 795+150000, 0, 0, Text))
    {
        FindText().Click(X, Y, "L")
        Sleep, 100
        FindText().Click(X, Y, "L")
        Sleep, 100
        Send, {End}
        Sleep, 100
        Send, %forderPath%
    }

    t1:=A_TickCount, XSave:=YSave:=""

    Text:="|<저장후닫기>*205$63.ztznsDzzDzg786T1zU9kQ0t0n01w3A1bbDaQ0DbtzAwttksDwz3tb8C668zbtyQtV63nbw0Dna79uS0zkNwwaNznwTzzjDVlD0k07s1lwTtnW00z0AzbzCSTnztzzwztnXyTzDzzbzD0znzs1zwzvyzyzzzzzg"

    if (ok:=FindText(XSave, YSave, 1845-150000, 42-150000, 1845+150000, 42+150000, 0, 0, Text))
    {
        FindText().Click(XSave, YSave, "L")
    }

    t1:=A_TickCount, X:="wait",Y:=10

    Text:="|<품질검사>*187$200.M2g1y040E080E1040000040E1002000U2CQf0zXtDg7mSowlX1z7y1t360E0sUkE9wXBeE6E6Hz06bxNgYk1VVU0EVUC0F8S42T8mSY1Y343k1cDIDNg1sMMTwQM6kAOQt0Y2AWd0zlt0w1PXpaq/1nby0l5a7714a2E90X8eE01nFfUElhDBWkE8T0SSBV0ET/zo2ECmSY7zU4OszsTFXNgDzzyAo0ETy3Wzx0Y2Ard061z6A7m8oYaP3zkk3B7yDzUF66TtzX7+EDw0Lz0UYBDMwk31g0SE1U406NzXmT8k2Y337xwk803Hq0A0kN034Tk101aTs0U2A0d0zl00A3y0oZk30A7y01600E0zq6080bU+kDsTk30zU1Da0k20zU0EzU40N4zU208U"

    if (ok:=FindText(X, Y, 874-150000, 559-150000, 874+150000, 559+150000, 0, 0, Text))
    {
        FindText().Click(X, Y, "L")
    }
    Send #{PrintScreen}
    t1:=A_TickCount, X:="wait",Y:=100

    Text:="|<주문데이터완료텍스트>*145$201.zVz3p3UDUTk7s24TcDUzU3UDsTk023U10EU880cY1002000EU122040W01200zEXUA2+11058E80Tk1i346sEEzU0QDsE0020E6kKCDs3d21s200G0Yl922400W10200SEXX1W000058E8szs488IEcDUzU3UDsTk2G3U00LyTw0cY10000000U0000U0008000VQ03zW4083p3UDUTk0y3s7s00402010002G1088MU900c00002088UU17zDy0TXzbz0SE9Vz0410050000Tk1344080000200000022g880UDs0c0002007kT0100000TU00000EaFz0000000000Tk00000000000000000000004"

    if (ok:=FindText(X, Y, 967-150000, 511-150000, 967+150000, 511+150000, 0, 0, Text))
    {
        FindText().Click(X, Y+70, "L")
        Send,{Enter}
        Sleep, 200

    }
}

closeButton(){
    t1:=A_TickCount, X:="wait0",Y:=1

    Text:="|<닫기버튼>*174$62.zzzzzzzznzDzzzwD3zyTbzzzz7kzznnzzzzksDzyNzzzzy6/zzky00zzvrzzyT007zzzzzz3zzzzzzzzzaTzzzznbzznnzzzzkMDztyTzzzwD3zwznzzzz3kzzTyU"

    if (ok:=FindText(X, Y, 1882-150000, 12-150000, 1882+150000, 12+150000, 0, 0, Text))
    {
        FindText().Click(X+30, Y, "L")
    }
return Round(ok.Length())
}

complete(){
    t1:=A_TickCount, X:="wait",Y:=100

    Text:="|<졸업앨범>*162$52.zzzzDy7zv03kQsMQtjXyQnAVnaw3tkBu7024XbArcQtjnyQnAVna00Q7C670Pzzzzzzzzw0Tjnk1w0zxyzDzbrv07s0w0TTgzzjnnzxyk0y0D03k2"

    if (ok:=FindText(X, Y, 1131-150000, 494-150000, 1131+150000, 494+150000, 0, 0, Text))
    {
      
    }
  
        Sleep, 1000
t1:=A_TickCount, X:="wait",Y:=100

    Text:="|<졸업앨범>*162$52.zzzzDy7zv03kQsMQtjXyQnAVnaw3tkBu7024XbArcQtjnyQnAVna00Q7C670Pzzzzzzzzw0Tjnk1w0zxyzDzbrv07s0w0TTgzzjnnzxyk0y0D03k2"

    if (ok:=FindText(X, Y, 1131-150000, 494-150000, 1131+150000, 494+150000, 0, 0, Text))
    {
      Send, {F5}
Sleep, 1500
    }
 
  
       

    ; ok:=FindText(X:="wait", Y:=3, 0,0,0,0,0,0,Text)    ; Wait 3 seconds for appear
    ; ok:=FindText(X:="wait0", Y:=-1, 0,0,0,0,0,0,Text)  ; Wait indefinitely for disappear

return Round(ok.Length())
}

logSend(msg){
    formattime, time, , yyyy년 MM월 dd일 tt h시 mm분 ss
    FileAppend, [%time%]%msg%`n, LogText.txt,

}
logCompleteSend(msg){
    formattime, time, , yyyy년 MM월 dd일 tt h시 mm분 ss
    FileAppend, [%time%]%msg%`n, LogCompleteText.txt,

}
btnTest:
F3::
    SetTitleMatchMode, 2
    WinActivate, 사진노리-영·유아 최고의 원생활앨범 전문제작 - Chrome
    WinGetPos,,,W,H, 사진노리-영·유아 최고의 원생활앨범 전문제작 - Chrome

    send, ^f
    sleep, 500
    send, 221122-26576251_김흔
    sleep, 500

    PixelSearch, Px, Py, 0, 0, W, H, 0xFF9632, 3, Fast RGB

    ; FindText().MouseTip(Px+470, Py,5,5)
    MouseClick, Left, Px+470, Py,5,5

return

Btn:
    for forderIndex, forder in orderArray
    {
        ; 편집실
        step:= 2
        Loop
        {
            Sleep, 10

            if(step == 2){
                step:= findCopyButton(forder) != 0 ?4 :2
                logSend( "step:" . step . " ,forder: " . forder . ",realForder: " . orderArray1[forderIndex])
            }

            if(step == 4){
                ; undefinde 에러 뜰 경우 2스텝으로
                step:= cuttingProgramStart() != 0 ?5 :2
                               logSend( "step:" . step . " ,forder: " . forder . ",realForder: " . orderArray1[forderIndex])
            }

            if(step == 5){
                ; undefinde 에러 뜰 경우 2스텝으로
                step:= cuttingProcess(orderArray1[forderIndex]) != 0 ?6 :5
                               logSend( "step:" . step . " ,forder: " . forder . ",realForder: " . orderArray1[forderIndex])
            }
            if(step == 6){
                ; undefinde 에러 뜰 경우 2스텝으로
                step:= closeButton() != 0 ?7 :10
                                logSend( "step:" . step . " ,forder: " . forder . ",realForder: " . orderArray1[forderIndex])
            }
            if(step == 10){
                ; complete 완료 학사모 관련 문구가 있으면 완료임
                step:= complete() != 0 ? 100 : 100
                logCompleteSend( "forder: " . forder)
                               logSend( "step:" . step . " ,forder: " . forder . ",realForder: " . orderArray1[forderIndex])
            }

            if(step == 100){
                                logSend( "step:" . step . " ,forder: " . forder . ",realForder: " . orderArray1[forderIndex])

                break
            }
        }

    }

ExitApp
