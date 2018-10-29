Sub Re()
    Dim sr As ShapeRange
    Dim sr_counter As Long
    Const space_dist As Double = 0.05
    
    Set sr = ActiveSelectionRange
    
    For sr_counter = sr.Count To 2 Step -1
        sr(sr_counter - 1).LeftX = sr(sr_counter).RightX + space_dist
    Next sr_counter
End Sub
