Sub import2()

    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objFile = objFSO.OpenTextFile("filepath.txt", 1)
    Do Until objFile.AtEndOfStream
        strLine = objFile.ReadLine
        Data = Split(strLine, ",")
        MsgBox strLine
        For i = 0 To UBound(Data)
            ActiveCell.Offset(i, 0).Value = Data(i)
        Next i
    Loop
    objFile.Close
    
End Sub
