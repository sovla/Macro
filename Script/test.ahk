
#include C:\Users\jg348\Desktop\���߰���\Macro\Script\FindText1.ahk


F1::
t1:=A_TickCount, X:="wait",Y:=50

Text:="|<>*201$53.btzyTzbzt03wwy7C1mTbttzyTta0TnnU4znDbzbbztzaTDyD3VkzA00wCSNbwtzzsQwnDtm0DaNtaTbbzDAnnAyTDyQwbktlyTwzzDznzwU"

if (ok:=FindText(X, Y, 3319-150000, 748-150000, 3319+150000, 748+150000, 0, 0, Text))
{
  FindText().Click(X, Y, "L")
}

ok:=FindText(X:="wait", Y:=3, 0,0,0,0,0,0,Text)    ; Wait 3 seconds for appear
ok:=FindText(X:="wait0", Y:=-1, 0,0,0,0,0,0,Text)  ; Wait indefinitely for disappear

MsgBox, 4096, Tip, % "Found:`t" Round(ok.Length())
  . "`n`nTime:`t" (A_TickCount-t1) " ms"
  . "`n`nPos:`t" X ", " Y
  . "`n`nResult:`t<" (Comment:=ok[1].id) ">"

for i,v in ok  ; ok value can be get from ok:=FindText().ok
  if (i<=2)
    FindText().MouseTip(ok[i].x, ok[i].y)


ExitApp
