
#include C:\Users\jg348\Desktop\개발관련\Macro\Script\FindText1.ahk

findFolder(str){
  Text:=textCombiner(str)

  t1:=A_TickCount, X:=Y:=""

  Loop, 3
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

; 편집실

t1:=A_TickCount, X:=Y:=""

Text:="|<편집실>*181$35.M00005zk00TzzzUzzz1zzzUy03y01w00k03s01U07ny33zDbz6TwT0CAw0y00M01w00k03tU1U37nzX7zDXz6TsT02AE0y00M01w00k03ts1UDbnzXDzDUz6TkT00A00y00M01w00k03zs1U7yzzrTzs0zzzk001z000000000000000000000000000000000000000000001040E7uTcEUBwAEl0/sMVW0Llt5Y1zaOEc3z04Tk22A80U40Tlz0A0kX00Tlz7w8"

if (ok:=FindText(X, Y, 485-150000, 458-150000, 485+150000, 458+150000, 0, 0, Text))
{
  FindText().Click(X, Y, "L")
}

t1:=A_TickCount, X:="wait",Y:=100

Text:="|<탁상달력상품>*178$168.000000MMNyM0A000000000000603S7Uk1yMMNUNyw7Uk0A1UA1U0D6TnnAnk1UMMNUM6A4lk0Q3UQ3U0Nbszlgnk1ySQTUTyA0Pk0w7Uw7U0laMnlcEk1UMyNUNUw0MlaA7UA7jklaMnlsMk1UNXNzNUA0kkgABUABiMNbsznsMk1zP0M01UA1kkwABUABgMD6TnTsMk0000MTsz01UkMANUANgM06031cEk0zsDU0MTw3UkMANUANgM3s033Akk00MMsTsTw70kwAzkAzwM6A633AklU0MMMM00AC0laA1UA1iMA660w7UlU0MMMM00ADslaA1UA1jk6A600001U0MDUTs0A000000000A03s7z0000000000000000000000A00000U"

if (ok:=FindText(X, Y, 267-150000, 608-150000, 267+150000, 608+150000, 0, 0, Text))
{
  FindText().Click(X, Y, "L")
  Sleep, 1000
  FindText().Click(X+200,Y,"L")
}

; 복사하기 버튼
t1:=A_TickCount, X:="wait",Y:=50

Text:="|<복사하기>*201$53.btzyTzbzt03wwy7C1mTbttzyTta0TnnU4znDbzbbztzaTDyD3VkzA00wCSNbwtzzsQwnDtm0DaNtaTbbzDAnnAyTDyQwbktlyTwzzDznzwU"

if (ok:=FindText(X, Y, 3319-150000, 748-150000, 3319+150000, 748+150000, 0, 0, Text))
{
  FindText().Click(X, Y, "L")
}

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

; 크롬 실행창 
; TODO undefined 처리 필요 undefined 뜰 경우 다시 위로

t3:=A_TickCount, X2:="wait",Y2:=10

Text2:="|<ChromePopup열기>*93$175.zzzzzzzbszzzzzzzzzzxzzzzzy7Q2ETznzzznxzzzw7VkDwDyztjzzyMDv/jztzzztwzzzyNjNnwrzTwzzzzSrxZmA8MQQAwAADBCbYxyzXho/VUza3wmtAqNYoqTAmTobLuSTDiqvBanTsRytRgtBuwtDaxDsn/xDDnb/Rab9bzzyQVqQaxSQbnSbysBybbyHZinHYny0SSLvCHSjCHtjHyAySHrzdmrNdmNzziz/xnNaHHNwn9zGTiNnxqvPAqPAzU7zZywAMQQAyQAzBDsQ7y3Xg6/VaTnzzm"

if (ok2:=FindText(X2, Y2, 990-150000, 188-150000, 990+150000, 188+150000, 0, 0, Text2))
{
  FindText().Click(X2, Y2, "L")
}

if(Round(ok2.Length()) == 0){
  MsgBox, 4096, Tip,% "실패"

}

t1:=A_TickCount, X:="wait",Y:=100

Text:="|<포토달력 최근 작업폴더>*197$48.CrsxCrvqSk8BPmHq6k8NnruSCzwzSzySTzxVAru64o0zArvyzo01Drs60rs1Drs600017Xs0U"

if (ok:=FindText(X, Y, 102-150000, 125-150000, 102+150000, 125+150000, 0, 0, Text))
{
  FindText().Click(X,Y,"L")
  MouseClickDrag, Left, X+192, Y, X+300, Y
}

t1:=A_TickCount, X:="wait",Y:=100

Text:="|<다운로드>*142$45.yED0zkTo2240220UE0EzkE42244020UQD0U0E42007y3yUFzs2007u0E0E000E21ztzs20000000ETk0004"

if (ok:=FindText(X, Y, 151-150000, 181-150000, 151+150000, 181+150000, 0, 0, Text))
{
  FindText().Click(X, Y, "L")
  FindText().Click(X, Y, "L")
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

findFolder("221116-57056816_우재윤")

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

ExitApp
