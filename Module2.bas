Attribute VB_Name = "Module2"
Sub conditionalformatting()

Dim lastrow As Long
Dim summarytablerow As Integer
Dim ws As Worksheet

    'loop through all worksheets
    For Each ws In Worksheets
    
   
        'determine the lastrow
        lastrow = Cells(Rows.Count, 1).End(xlUp).row
            
        For i = 2 To lastrow
                    
            'if the yearlychange value is less than 0 then highlight in red. Otherwise...
            If ws.Cells(i, 10).Value < 0 Then
            ws.Cells(i, 10).Interior.ColorIndex = 3
                        
            '... highlight in green
            Else
                        
            ws.Cells(i, 10).Interior.ColorIndex = 4
                        
            End If
                        
        Next i
        
    Next ws
    
End Sub
oauthRequestType="RefreshCoauthoring" SchemaLockID="{29358EC1-E813-4793-8E70-ED0344E7B73C}" ClientID="{7441809C-1DB9-4D1D-BBE7-E5B63BE5C326}" Timeout="2580" /></SubRequest><SubRequest Type="SchemaLock" SubRequestToken="2" DependsOn="1" DependencyType="OnNotSupported"><SubRequestData SchemaLockRequestType="RefreshLock" SchemaLockID="{29358EC1-E813-4793-8E70-ED0344E7B73C}" ClientID="{7441809C-1DB9-4D1D-BBE7-E5B63BE5C326}" Timeout="2580" /></SubRequest></Request></RequestCollection></s:Body></s:Envelope>      