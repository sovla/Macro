
#include C:\Users\jg348\Desktop\개발관련\Macro\Script\FindText1.ahk

; 복사하기 버튼
t1:=A_TickCount, X:="wait",Y:=50

Text:="|<>*201$53.btzyTzbzt03wwy7C1mTbttzyTta0TnnU4znDbzbbztzaTDyD3VkzA00wCSNbwtzzsQwnDtm0DaNtaTbbzDAnnAyTDyQwbktlyTwzzDznzwU"

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

t3:=A_TickCount, X2:="wait",Y2:=50

Text2:="|<ChromePopup열기>*93$175.zzzzzzzbszzzzzzzzzzxzzzzzy7Q2ETznzzznxzzzw7VkDwDyztjzzyMDv/jztzzztwzzzyNjNnwrzTwzzzzSrxZmA8MQQAwAADBCbYxyzXho/VUza3wmtAqNYoqTAmTobLuSTDiqvBanTsRytRgtBuwtDaxDsn/xDDnb/Rab9bzzyQVqQaxSQbnSbysBybbyHZinHYny0SSLvCHSjCHtjHyAySHrzdmrNdmNzziz/xnNaHHNwn9zGTiNnxqvPAqPAzU7zZywAMQQAyQAzBDsQ7y3Xg6/VaTnzzm"

if (ok2:=FindText(X2, Y2, 990-150000, 188-150000, 990+150000, 188+150000, 0, 0, Text2))
{
  FindText().Click(X2, Y2, "L")
}






ExitApp