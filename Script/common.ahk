
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

searchTextInBrowser(str){
    CoordMode, Pixel, Client
    SetTitleMatchMode, 2
    WinActivate, 사진노리
    WinGetPos,,,W,H, 사진노리
    obj:=[0,0]

    sleep, 1000
    send, ^f
    sleep, 300
    send, %str%
    sleep, 500

    PixelSearch, Px, Py, 0, 0, W, H, 0xFF9632, 3, Fast RGB
    sleep, 500

    if (ErrorLevel = 0)
    {
        obj[0]:= Px
        obj[1]:= Py
    }
    else
    {
    }

    return obj
}
searchTextInBrowser2(str){
    CoordMode, Pixel, Screen
    obj:=[0,0]

    sleep, 100
    send, ^f
    sleep, 500
    send, %str%
    sleep, 500

    PixelSearch, Px, Py, 0, 0, 1920, 1080, 0xFF9632, 3, Fast RGB
    sleep, 500
    if (ErrorLevel = 0)
    {
        obj[0]:= Px
        obj[1]:= Py
    }
    else
    {
    }

    return obj
}