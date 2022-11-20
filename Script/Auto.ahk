
#include C:\Users\jg348\Desktop\개발관련\Macro\Script\FindText1.ahk

; ; 복사하기 버튼
; t1:=A_TickCount, X:="wait",Y:=50

; Text:="|<>*201$53.btzyTzbzt03wwy7C1mTbttzyTta0TnnU4znDbzbbztzaTDyD3VkzA00wCSNbwtzzsQwnDtm0DaNtaTbbzDAnnAyTDyQwbktlyTwzzDznzwU"

; if (ok:=FindText(X, Y, 3319-150000, 748-150000, 3319+150000, 748+150000, 0, 0, Text))
; {
;   FindText().Click(X, Y, "L")
; }


; ; 1012
; t1:=A_TickCount, X:="wait",Y:=20

; Text:="|<Class>*204$25.AQ3DCP3Yz8VkNYEMAmDAAN46CAW366P1a370nw"

; if (ok:=FindText(X, Y, 1984-150000, 468-150000, 1984+150000, 468+150000, 0, 0, Text))
; {
;   FindText().Click(X, Y, "L")
; }

; ; 샘플



    
; t2:=A_TickCount, X1:="wait",Y1:=10

; Text:="|<sample>*187$34.0000400000E000010RtvbYt0oFlIo1F65FBx4MLwAIFnM0nF7tExx4M5s000U08"

; if (ok1:=FindText(X1, Y1, 1992-150000, 488-150000, 1992+150000, 488+150000, 0, 0, Text))
; {
;   FindText().Click(X1+175, Y1, "L")
; }


; ; 팝업 복사하기 버튼

; CoordMode, Mouse, Relative

; MouseMove, 220, 480
; MouseClick, Left


; ; 크롬 실행창 

; t3:=A_TickCount, X2:="wait",Y2:=50

; Text2:="|<ChromePopup열기>*93$175.zzzzzzzbszzzzzzzzzzxzzzzzy7Q2ETznzzznxzzzw7VkDwDyztjzzyMDv/jztzzztwzzzyNjNnwrzTwzzzzSrxZmA8MQQAwAADBCbYxyzXho/VUza3wmtAqNYoqTAmTobLuSTDiqvBanTsRytRgtBuwtDaxDsn/xDDnb/Rab9bzzyQVqQaxSQbnSbysBybbyHZinHYny0SSLvCHSjCHtjHyAySHrzdmrNdmNzziz/xnNaHHNwn9zGTiNnxqvPAqPAzU7zZywAMQQAyQAzBDsQ7y3Xg6/VaTnzzm"

; if (ok2:=FindText(X2, Y2, 990-150000, 188-150000, 990+150000, 188+150000, 0, 0, Text2))
; {
;   FindText().Click(X2, Y2, "L")
; }

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


Text_0:="|<0>*181$7.CAYGD6XFAXY"
Text_1:="|<1>*184$4.DnAnAnU"
Text_2:="|<2>##0$"
Text_3:="|<3>*155$5.RA8a32Do"
Text_4:="|<4>*171$7.33VlNgazVUo"
Text_5:="|<5>*157$5.z27VV3Do"
Text_6:="|<6>*156$5.SW7clX5o"
Text_7:="|<7>*183$6.z264A88MEU"
Text_8:="|<8>*169$6.QmWmQWXXSU"
Text_9:="|<9>*155$5.R6AMj2Do"
Text_hipen:="|<->*178$4.y"



ExitApp