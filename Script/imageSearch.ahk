#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; ImageSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, ImageFile
; OutputVarX: �̹����� ã���� ���� X��ǥ�� ���� ��� ������
; OutputVarY: �̹����� ã���� ���� Y��ǥ�� ���� ��� ������
; X1: �̹��� ��ġ�� �����ϴ� X��ǥ
; Y1: �̹��� ��ġ�� �����ϴ� Y��ǥ
; X2: �̹��� ��ġ�� ������ X��ǥ
; Y2: �̹��� ��ġ�� ������ Y��ǥ
; ImageFile: ã�� �̹����� ���ϸ��� ������ ��� (+ �̹��� ��ġ�� �ɼ�)




; �̹����� ���� ����� �� ���� �˷��帮�ڽ��ϴ�.

; Ư¡�� �巯���� �� ��
; ������ �� �۰� �� ��

; *n: ������ ��� ������ �������ݴϴ�. n���� ���ڰ� ����, 0���� 255������ ���ڰ� �� �� �ֽ��ϴ�. ���ڰ� �������� ��� ������ �о�����, �⺻�� 0�Դϴ�.
; *30 ������ ������ ��
F1::
ImageSearch, vx, vy, 0, 0, 1920, 1080, *30 Image.png
MsgBox, %ErrorLevel%
MsgBox, vw
MsgBox, vy
ExitApp,

F2::
ImageSearch, vx, vy, 0, 0, 1920, 1080, *30 Image.png
if (ErrorLevel = 0)
{
    MouseClick, Left,  vx, vy
    MsgBox, �̹����� ã�ҽ��ϴ�! `nã�� ��ǥ: %vx%`, %vy%
}
else
{
    MsgBox, �̹����� �� ã�Ұų�, �̹�����ġ�� �������� ���߽��ϴ�. (ErrorLevel = %ErrorLevel%)
}
return


; �̹�����ġ�� �� ���Ŀ� ErrorLevel������ ���� ������ ���Ե˴ϴ�.
; �̹����� ���������� ã���� 0, ��ã���� 1�Դϴ�.
; ��Ȥ 2�� ����ִ� ��찡 �ִµ�, ���� ���� ������ �̹��� ��ġ�� ���������� �� �� ���� ��쿡 ��Ÿ���ϴ�. 