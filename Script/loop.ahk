#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Loop [, Count]

a := 0
b := 0
Loop, 3
{
    a++
    Loop, 5
    {
        b++
        MsgBox, �ٱ��� �ݺ����� %a%ȸ`, ���� �ݺ����� %b%ȸ �ݺ��߽��ϴ�.
    }
    b := 0
}
ExitApp

if (����)
{
    // ������ ���� �� �� �ൿ
}
else
{
    // ������ ������ �� ��  �ൿ
}

; �򰥸��� ���� 

; var�� �����̰�, "���ڿ�"�� ���ڿ��϶�

; [���� ����]
; - (var "���ڿ�")
; - %var% ���ڿ�

; [Ʋ�� ����]
; - (%var% ���ڿ�)
; - var "���ڿ�"

; [���� ����]
; - var := var "���ڿ�"
; - var++

; [Ʋ�� ����]
; - var := %var% ���ڿ�
; - %var%++