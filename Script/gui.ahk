orderArray:= Array()


Gui, Show, w300 h300, 49��
Gui, Add, Button, x10 y20 w100 h20 gBtn, ����
Gui, Add, Button, x10 y45 w100 h20 gBtnFileSelect, ���ϼ���
Gui, Add, Button, x10 y70 w100 h20 gBtnTest, �׽�Ʈ����
Gui, Add, Edit, x10 y105 w100 vCT, 12-09

FileEncoding ,UTF-8
return

GuiClose:
ExitApp

BtnFileSelect:
    ;���� ���� �κ�
    FileSelectFile, d , s
    FileEncoding ,UTF-8
    FileRead, var, %d%
    Loop, Parse, var, `n
        orderArray.Push(A_LoopField)

return