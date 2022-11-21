
#include C:\Users\jg348\Desktop\개발관련\Macro\Script\FindText1.ahk

orderArray:= Array()
; orderArray.Push("221116-57056816_우재윤")
; orderArray.Push("221117-57426602_수령자이름곽두팔")
Gui, Show, w300 h300, 49강
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

return

findFolder(str){
  Text:=textCombiner(str)

  t1:=A_TickCount, X:=Y:=""

  Loop, 100
  {
    Sleep, 100

    if (ok:=FindText(X, Y, , , , , , , Text,,,1))
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

textCombiner(str){
  textArray:= Array()
  textArray.Push("|<0>*181$7.CAYGD6XFAXY")
  textArray.Push("|<1>*184$4.DnAnAnU")
  textArray.Push("|<2>##0$")
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

  Text:="|<탁상달력상품>*178$168.000000MMNyM0A000000000000603S7Uk1yMMNUNyw7Uk0A1UA1U0D6TnnAnk1UMMNUM6A4lk0Q3UQ3U0Nbszlgnk1ySQTUTyA0Pk0w7Uw7U0laMnlcEk1UMyNUNUw0MlaA7UA7jklaMnlsMk1UNXNzNUA0kkgABUABiMNbsznsMk1zP0M01UA1kkwABUABgMD6TnTsMk0000MTsz01UkMANUANgM06031cEk0zsDU0MTw3UkMANUANgM3s033Akk00MMsTsTw70kwAzkAzwM6A633AklU0MMMM00AC0laA1UA1iMA660w7UlU0MMMM00ADslaA1UA1jk6A600001U0MDUTs0A000000000A03s7z0000000000000000000000A00000U"

  if (ok:=FindText(X, Y, 267-150000, 608-150000, 267+150000, 608+150000, 0, 0, Text))
  {
    FindText().Click(X, Y, "L")
    Sleep, 1000
    FindText().Click(X+200,Y,"L")
    Sleep, 1000

  }
return Round(ok.Length())
}

findCopyButton(){
  TextCopyButton:="|<복사하기버튼>*201$53.btzyTzbzt03wwy7C1mTbttzyTta0TnnU4znDbzbbztzaTDyD3VkzA00wCSNbwtzzsQwnDtm0DaNtaTbbzDAnnAyTDyQwbktlyTwzzDznzwU"
  XCopy:=YCopy:=""
  Loop, 5
  {
    Sleep, 10

    if (okCopy:=FindText(XCopy, YCopy,485-150000, 458-150000, 485+150000, 458+150000, 0, 0, TextCopyButton))
    {
      FindText().Click(XCopy, YCopy, "L")
      Break
    }

    if(Round(okCopy.Length()) == 0){
      MouseClick, WheelDown, , , 2
    }
    Sleep, 500

  }
return Round(okCopy.Length())
}

popupProcess(){
  ; 1012
  t1:=A_TickCount, X:="wait",Y:=20

  Text:="|<Class>*204$25.AQ3DCP3Yz8VkNYEMAmDAAN46CAW366P1a370nw"

  if (ok:=FindText(X, Y, 1984-150000, 468-150000, 1984+150000, 468+150000, 0, 0, Text))
  {
    FindText().Click(X, Y, "L")
  }

  ; 샘플

  t2:=A_TickCount, X1:="wait",Y1:=10

  Text:="|<sample>*187$34.0000400000E000010RtvbYt0oFlIo1F65FBx4MLwAIFnM0nF7tExx4M5s000U08"

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

  t3:=A_TickCount, X2:="wait",Y2:=10

  Text2:="|<ChromePopup열기>*93$175.zzzzzzzbszzzzzzzzzzxzzzzzy7Q2ETznzzznxzzzw7VkDwDyztjzzyMDv/jztzzztwzzzyNjNnwrzTwzzzzSrxZmA8MQQAwAADBCbYxyzXho/VUza3wmtAqNYoqTAmTobLuSTDiqvBanTsRytRgtBuwtDaxDsn/xDDnb/Rab9bzzyQVqQaxSQbnSbysBybbyHZinHYny0SSLvCHSjCHtjHyAySHrzdmrNdmNzziz/xnNaHHNwn9zGTiNnxqvPAqPAzU7zZywAMQQAyQAzBDsQ7y3Xg6/VaTnzzm"

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
    FindText().Click(X,Y,"L")
    MouseClickDrag, Left, X+192, Y, X+300, Y
    Sleep, 300

    MouseMove, X, Y+100
    MouseClick, WheelUp, , , 100
  }

  t1:=A_TickCount, X:=Y:=100

  Loop, 100
  {
    Sleep, 100
    Text:="|<다운로드>*142$45.yED0zkTo2240220UE0EzkE42244020UQD0U0E42007y3yUFzs2007u0E0E000E21ztzs20000000ETk0004"

    if (ok:=FindText(X, Y, 155-150000, 253-150000, 155+150000, 253+150000, 0, 0, Text))
    {
      FindText().Click(X, Y, "L")
      FindText().Click(X, Y, "L")
      Break
    }
    if(Round(ok.Length()) == 0){
      MouseClick, WheelDown, , , 2
    }
  }

  t1:=A_TickCount, X:=Y:=""

  Loop, 100
  {
    Sleep, 100
    Text:="|<out>*148$17.00800Fl5wG984GEcYUF94WFkwQ"

    if (ok:=FindText(X, Y, 155-150000, 253-150000, 155+150000, 253+150000, 0, 0, Text))
    {
      FindText().Click(X, Y, "L")
      FindText().Click(X, Y, "L")
      Break
    }
    if(Round(ok.Length()) == 0){
      MouseClick, WheelDown, , , 2
    }
  }

  findFolder(forderPath)

  Sleep, 100

  t1:=A_TickCount, X:="wait",Y:=10

  Text:="|<자동담기>*196$36.0Fy0E1ynyTNt6n0EMB6nyEQ94tyNs9AzzTsNOrz7klllyDtV0n28N10niDs10FwDk1U"

  if (ok:=FindText(X, Y, 217-150000, 408-150000, 217+150000, 408+150000, 0, 0, Text))
  {
    FindText().Click(X, Y, "L")
  }

  t1:=A_TickCount, X:="wait",Y:=100

  Text:="|<예(Y)>*167$22.Qc03GXX8uGGWdB++YMxuFVQd242Y8k+EW0d080218"

  if (ok:=FindText(X, Y, 1012-150000, 570-150000, 1012+150000, 570+150000, 0, 0, Text))
  {
    FindText().Click(X, Y, "L")
  }
  Sleep, 1000
  t1:=A_TickCount, X:="wait0",Y:=10

  Text:="|<사진 자동배치>*187$85.znk0zzyT07z9wCQtzCTw0Dbzm4zzCQzbDznbnzt2Q0bCTVbztns0wVDnnbDaHzwtzny07ttVVbVzwAA078HsQknzwzy6TzzY9wCH9zyTyNDk7m4wn3kyTzyS7nts2QwbyTDzzzntwztDznzDU3zzty0zzbzt"

  if (ok:=FindText(X, Y, 514-150000, 430-150000, 514+150000, 430+150000, 0, 0, Text))
  {
    ; FindText().Click(X, Y, "L")
  }

  Sleep, 1000
  t1:=A_TickCount, X:="wait",Y:=10

  Text:="|<자동담기>*196$36.0Fy0E1ynyTNt6n0EMB6nyEQ94tyNs9AzzTsNOrz7klllyDtV0n28N10niDs10FwDk1U"

  if (ok:=FindText(X, Y, 217-150000, 408-150000, 217+150000, 408+150000, 0, 0, Text))
  {
    FindText().Click(X, Y, "L")
  }

  t1:=A_TickCount, X:="wait",Y:=100

  Text:="|<예(Y)>*167$22.Qc03GXX8uGGWdB++YMxuFVQd242Y8k+EW0d080218"

  if (ok:=FindText(X, Y, 1012-150000, 570-150000, 1012+150000, 570+150000, 0, 0, Text))
  {
    FindText().Click(X, Y, "L")
  }

  Sleep, 1000
  t1:=A_TickCount, X:="wait0",Y:=10

  Text:="|<사진 자동배치>*187$85.znk0zzyT07z9wCQtzCTw0Dbzm4zzCQzbDznbnzt2Q0bCTVbztns0wVDnnbDaHzwtzny07ttVVbVzwAA078HsQknzwzy6TzzY9wCH9zyTyNDk7m4wn3kyTzyS7nts2QwbyTDzzzntwztDznzDU3zzty0zzbzt"

  if (ok:=FindText(X, Y, 514-150000, 430-150000, 514+150000, 430+150000, 0, 0, Text))
  {
    ; FindText().Click(X, Y, "L")
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

  Text:="|<학사모>*180$114.7w7000s0000000000003w70C0s7zz0000000000070C0s7zz000000000zzb0C0s707000000000zzb0C0s707000000000007kC0s7070000000007w7sC0s707000000000Dz7kC0s707000000000S770C0z707000000000Q3b0T0z7zz000000000S770T0s7zz000000000Dy70zUs3zz0000000003w70vks0700000000000061lss0700000000007zy3kws0700000000007zz7UQs0700000000007zz308sTzzk00000000007000sTzzs00000000007000sTzzs00000000007000s000000000000007000s000000000000000000000000000000000000000000000000004000000000000000008Mzy7kkyAM31sM0kMTyAMzwDsk0ADz00M0kMTy6k7kANnzgDz7yM0kM4A6kyyATkwC831ls0sS4A3knCANlyCDz3xs1wQTz3k3UDsnXADz6AM3iMTz3Vzz7klbA0k6Bs77MzzXU0000UyAzzXxs60NzzXkzy30k00zzU0M0DM1U3kTy3zkkA000zU0zkTy3kTy3zkzwA01ts1ksTy2kzy30kkQA03UM1UMM66Ms03zkkQDz1Us1ksTy6Azy3zkzwDz0zk0zkTyA4000000000000020008U"

  if (ok:=FindText(X, Y, 2402-150000, 429-150000, 2402+150000, 429+150000, 0, 0, Text))
  {
    ; FindText().Click(X, Y, "L")
  }

  ; ok:=FindText(X:="wait", Y:=3, 0,0,0,0,0,0,Text)    ; Wait 3 seconds for appear
  ; ok:=FindText(X:="wait0", Y:=-1, 0,0,0,0,0,0,Text)  ; Wait indefinitely for disappear

return Round(ok.Length())
}

logSend(msg){
  formattime, time, , yyyy년 MM월 dd일 tt h시 mm분 ss
  FileAppend, [%time%]%msg%`n, Log.txt,

}

BtnTest:
  step := 0
  forder :="123213"
  logSend( "step:" . %step% . " ,forder: " . forder)

return

Btn:
  for forderIndex, forder in orderArray
  {
    ; 편집실
    step:= 0
    Loop
    {
      Sleep, 10
      if(step == 0){
        step:= goCuttingRoom() != 0 ? 1 :0
        logSend( "step:" . step . " ,forder: " . forder)

      }
      if(step == 1){
        step:= goCalendarCuttingRoom() != 0 ? 2 :1
        logSend( "step:" . step . " ,forder: " . forder)
      }

      if(step == 2){
        step:= findCopyButton() != 0 ? 3 :2
        logSend( "step:" . step . " ,forder: " . forder)
      }

      if(step == 3){
        step:= popupProcess() != 0 ? 4 :3
        logSend( "step:" . step . " ,forder: " . forder)
      }
      if(step == 4){
        ; undefinde 에러 뜰 경우 2스텝으로 
        step:= cuttingProgramStart() != 0 ?5 :2
        logSend( "step:" . step . " ,forder: " . forder)
      }

      if(step == 5){
        ; undefinde 에러 뜰 경우 2스텝으로 
        step:= cuttingProcess(forder) != 0 ?6 :5
        logSend( "step:" . step . " ,forder: " . forder)
      }
      if(step == 6){
        ; undefinde 에러 뜰 경우 2스텝으로 
        step:= closeButton() != 0 ?7 :10
        logSend( "step:" . step . " ,forder: " . forder)
      }
      if(step == 10){
        ; complete 완료 학사모 관련 문구가 있으면 완료임
        step:= complete() != 0 ? 100 : 9
        logSend( "step:" . step . " ,forder: " . forder)
      }

      if(step == 100){
        logSend( "step:" . step . " ,forder: " . forder)
        break
      }
    }

  }

ExitApp
