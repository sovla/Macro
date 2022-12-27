
#include ./FindText1.ahk
#include ./common.ahk
#include ./gui.ahk

goCuttingRoom(){
  SetTitleMatchMode, 2
  WinActivate, 사진노리
  WinGetPos,,,W,H, 사진노리
  t1:=A_TickCount, X:="wait",Y:=100

  Text:="|<편집실>*181$35.M00005zk00TzzzUzzz1zzzUy03y01w00k03s01U07ny33zDbz6TwT0CAw0y00M01w00k03tU1U37nzX7zDXz6TsT02AE0y00M01w00k03ts1UDbnzXDzDUz6TkT00A00y00M01w00k03zs1U7yzzrTzs0zzzk001z000000000000000000000000000000000000000000001040E7uTcEUBwAEl0/sMVW0Llt5Y1zaOEc3z04Tk22A80U40Tlz0A0kX00Tlz7w8"
  Text.="|<편집실>*166$38.bzzzzzE1zzzU000Ds007k000T1zw07zkTzwTzw7zz7zz1nzlztkM0wQ0A7076071ztlnzkTzwTzw7zz7zz1rzlzxkM1wS0A7076071zVlVzkTzwTzw7zz7zz1zzlzzkM7wTkA6076031y1lUTkTzwTzw7zz7zz1zzlzzk1zwTy0U0D7U0DU0000zzk00Dzzzy3zzzzzzzzzzzzzzzzzzzzzzzzzzzw000000000000000000000000000000000E0U10TwT8ME3T3W640bksVl09wT8qE7zAOMo1zk0Vz0AA88Dk307y7w0k1zVz0DsDsTk003y3w00000000000000000008"
  Text.="|<편집실>*172$49.zzzs3zzzzzzzzzzzzzzzzzzzzzzzzzzzxzzzzzzzw0000000000000000000000000000000000080U2000DozEV0006y68MU001T34AE000jXm/8000znB8I000Ts0Xy00044ME100020DszU001U64M0000zXyDs08"

  if (ok:=FindText(X, Y, 346, 238, 1183, 623, 0.1, 0.1, Text))
  {
    FindText().Click(X, Y, "L")
  }
  return Round(ok.Length())
}

goCalendarCuttingRoom(str){

  obj1:=searchTextInBrowser("탁상달력")

  if(obj1[0] > 0){
    FindText().Click(obj1[0],obj1[1],"L")
  }else{
    return 0
  }
  Sleep, 300

  obj2:=searchTextInBrowser(str)
  if(obj2[0] > 0){
    FindText().Click(obj2[0],obj2[1],"L")
  }

  return obj2[0]
}

findCopyButton(forderPath){

  obj:=searchTextInBrowser(forderPath)
  MouseClick, Left, obj[0]+470, obj[1],5,5
  sleep, 500
  return 2
}

popupProcess(str){
  ; 1012
  ; t1:=A_TickCount, X:="wait",Y:=5
  Sleep, 1000
  obj:=searchTextInBrowser2(str)
  if(obj[0] == 0 ){
    return 0
  }
  FindText().Click(obj[0],obj[1],"L")

  ; Text:="|<10-12>*199$30.AS0ASwn0wnAn0AnAnyA6An0AAAn0AMAn0AkAS0AzU" 회사용
  ; ;Text:="|<Class>*204$25.AQ3DCP3Yz8VkNYEMAmDAAN46CAW366P1a370nw"
  ; Text:="|<10-12V>*199$30.AS0ASwn0wnAn0AnAnyA6An0AAAn0AMAn0AkAS0AzU"

  ; if (ok:=FindText(X, Y, 1984-150000, 468-150000, 1984+150000, 468+150000, 0.15, 0.15, Text))
  ; {
  ;   FindText().Click(X, Y, "L")

  ; }
  ; if(Round(ok.Length()) == 0){
  ;   return Round(ok.Length())
  ; }

  ; 샘플

  t2:=A_TickCount, X1:="wait",Y1:=15

  Text:="|<sampleV>*166$33.00008000010QQvD9oIIZ5FU2Yce/XoZ5T2WYce4IIZtFQRYc9k00100U"
  Text.="|<sampleV>*166$33.00008000010QQvD9oIIZ5FU2Yce/XoZ5T2WYce4IIZtFQRYc9k00100U"
  Text.="|<sampleV>*187$34.0000400000E000010RtvbYt0oFlIo1F65FBx4MLwAIFnM0nF7tExx4M5s000U08"

  if (ok1:=FindText(X1, Y1, 0, 0, 1920, 1080, 0, 0, Text))
  {
    FindText().Click(X1+175, Y1, "L")
  }

  ; 팝업 복사하기 버튼

  CoordMode, Mouse, Relative

  MouseMove, 220, 480
  MouseClick, Left

  return Round(ok1.Length())
}

cuttingProgramStart() {
  ; 크롬 실행창
  ; TODO undefined 처리 필요 undefined 뜰 경우 다시 위로

  t3:=A_TickCount, X2:="wait",Y2:=20

  Text2:="|<프로그램실행>*200$30.0S7Vw0H8F6mFM92GFE91AHE918SE91AEM92KE8F6mE7VsU"
  Text2.="|<프로그램실행>*93$175.zzzzzzzbszzzzzzzzzzxzzzzzy7Q2ETznzzznxzzzw7VkDwDyztjzzyMDv/jztzzztwzzzyNjNnwrzTwzzzzSrxZmA8MQQAwAADBCbYxyzXho/VUza3wmtAqNYoqTAmTobLuSTDiqvBanTsRytRgtBuwtDaxDsn/xDDnb/Rab9bzzyQVqQaxSQbnSbysBybbyHZinHYny0SSLvCHSjCHtjHyAySHrzdmrNdmNzziz/xnNaHHNwn9zGTiNnxqvPAqPAzU7zZywAMQQAyQAzBDsQ7y3Xg6/VaTnzzm"

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

  t1:=A_TickCount, X:="wait",Y:=100

  Text:="|<주문번호>*161$46.TsTsVADkA10W4k00k42AH7y6UE8zw7VlVzW4lVg1008H4200zyzAMPzs400kz0k4E200k30E08030A100U7zkk7z3z00U"
  Text.="|<주문번호>*159$47.TsTsl4Dk20UFW800A10X4FzUo217zUy767yAF66M600MW8400zyz4MNzw2008TU4140U0A0820100M0E4020DzUUDy7y00U"
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
  Sleep, 2000
  Send #{PrintScreen}
  Sleep, 1500

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
  t1:=A_TickCount, X:="wait",Y:=10
  MouseClick,Left
  Send {Home}
  Text:="|<학사모>*180$114.7w7000s0000000000003w70C0s7zz0000000000070C0s7zz000000000zzb0C0s707000000000zzb0C0s707000000000007kC0s7070000000007w7sC0s707000000000Dz7kC0s707000000000S770C0z707000000000Q3b0T0z7zz000000000S770T0s7zz000000000Dy70zUs3zz0000000003w70vks0700000000000061lss0700000000007zy3kws0700000000007zz7UQs0700000000007zz308sTzzk00000000007000sTzzs00000000007000sTzzs00000000007000s000000000000007000s000000000000000000000000000000000000000000000000004000000000000000008Mzy7kkyAM31sM0kMTyAMzwDsk0ADz00M0kMTy6k7kANnzgDz7yM0kM4A6kyyATkwC831ls0sS4A3knCANlyCDz3xs1wQTz3k3UDsnXADz6AM3iMTz3Vzz7klbA0k6Bs77MzzXU0000UyAzzXxs60NzzXkzy30k00zzU0M0DM1U3kTy3zkkA000zU0zkTy3kTy3zkzwA01ts1ksTy2kzy30kkQA03UM1UMM66Ms03zkkQDz1Us1ksTy6Azy3zkzwDz0zk0zkTyA4000000000000020008U"
  Text.="|<학사모>*188$67.003U003U0k3U01kTztk0s1zzss0Q0s0Q0s00Q0C0Q0C0Q03y070C0DUCMA703k707k7CC3U3s3U7Q3b61k3i1k771lX0s1nUs7Vksnbw3lsQ70SQNkC7kDC302Dzzb1U170007003U0000000001k300k3zzk00s1k0s000ss0Q0s0Q000QQ0C0Tzy0TzyC000C070C007000703U7003U003U1k3U01zzw1zzs1zzs0000s0Q0002"
  ; 아래 텍스트는 학사모가 아닌 14P양면 텍스트임
  Text.="|<학사모>*178$48.00000603A1U0D6TnQ3U0Nbszw7U0laMnA7jklaMnABiMNbszABgMD6TnANgM0603ANgM3s03AzwM6A63A1iMA660A1jk6A6000A03s7z00A00000U"

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
logCompleteSend(msg){
  formattime, time, , yyyy년 MM월 dd일 tt h시 mm분 ss
  FileAppend, [%time%]%msg%`n, LogComplete.txt,

}

BtnTest:
  t1:=A_TickCount, X:="wait",Y:=100

  Text:="|<주문번호>*161$46.TsTsVADkA10W4k00k42AH7y6UE8zw7VlVzW4lVg1008H4200zyzAMPzs400kz0k4E200k30E08030A100U7zkk7z3z00U"
  Text.="|<주문번호>*159$47.TsTsl4Dk20UFW800A10X4FzUo217zUy767yAF66M600MW8400zyz4MNzw2008TU4140U0A0820100M0E4020DzUUDy7y00U"
  if (ok:=FindText(X, Y, 1537-150000, 795-150000, 1537+150000, 795+150000, 0.15, 0.15, Text))
  {
    FindText().Click(X, Y, "L")
    Sleep, 100
    FindText().Click(X, Y, "L")
    Sleep, 100
    Send, {End}
    Sleep, 100
    Send, %forderPath%

  }
  Sleep, 2000
  Send #{PrintScreen}
  Sleep, 1500

return

Btn:
  Gui, Submit, Nohide
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

        step:= goCalendarCuttingRoom(CT) != 0 ? 2 :1
        logSend( "step:" . step . " ,forder: " . forder)
      }

      if(step == 2){
        step:= findCopyButton(forder) != 0 ?3 :2
        logSend( "step:" . step . " ,forder: " . forder)
      }

      if(step == 3){
        step:= popupProcess("10-12") != 0 ? 4 :2
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
        step:= complete() != 0 ? 100 : 10
        logCompleteSend( "forder: " . forder)
        logSend( "step:" . step . " ,forder: " . forder)
      }

      if(step == 100){
        logSend( "step:" . step . " ,forder: " . forder)

        break
      }
    }

  }

ExitApp

