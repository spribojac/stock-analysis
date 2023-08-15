Attribute VB_Name = "Module3"
Sub standouts()

'go through the row for column J. If the result is bigger than the one before
'store it as value and then move onto the next one
'if it is smaller then move on.
    
    'declare worksheet variables
    Dim ws As Worksheet
    Dim lastrow As Long
    Dim column As Integer
    Dim percentincrease As Double
    Dim percentdecrease As Double
    Dim stockvol As LongLong
    
    'Loop over each worksheet
    For Each ws In Worksheets
    
        'Create table for values
        ws.Range("O1").EntireColumn.Insert
        ws.Cells(1, 15).Value = "Ticker"
        ws.Range("O1").EntireColumn.AutoFit
        
        ws.Range("P1").EntireColumn.Insert
        ws.Cells(1, 16).Value = "Value"
        ws.Range("P1").EntireColumn.AutoFit
        
        ws.Cells(2, 14).Value = "Greatest % Increase"
        ws.Cells(3, 14).Value = "Greatest & Decrease"
        ws.Cells(4, 14).Value = "Greatest Total Volume"
        
        'Initialise the lastrow
        lastrow = Cells(Rows.Count, 1).End(xlUp).row
        
        'Initialise the maximum value
        maxi = 0
        maxd = 0
        stockvol = 0
        ticker1 = 0
        ticker2 = 0
        ticker3 = 0
        
        For i = 2 To lastrow
            
            'check if the percent change is higher than the previous row. If not...
            If ws.Cells(i, 11).Value > maxi Then
                
                'Create new ticker name and set variable
                ticker1 = ws.Cells(i, 9).Value
                    
                'Update the largest percent increase
                maxi = ws.Cells(i, 11).Value
                    
            End If
            
            'check if the percent change is lower than the previous row. If not...
            If ws.Cells(i, 11).Value < maxd Then
                
                'Create new ticker name and set variable
                ticker2 = ws.Cells(i, 9).Value
                        
                'Update the largest percent decrease
                maxd = ws.Cells(i, 11).Value
                        
            End If
                
            'check if the total stock volume is higher than the previous row. If not...
            If ws.Cells(i, 12).Value > stockvol Then
                
                'Create new ticker name and set variable
                stockvol = ws.Cells(i, 12).Value
                    
                'Update the largest total stock volume
                ticker3 = ws.Cells(i, 9).Value
                
            End If
            
        Next i
        
        'Update the new variables in the table
        ws.Cells(2, 16).Value = FormatPercent(maxi)
        ws.Cells(2, 15).Value = ticker1
        ws.Cells(3, 16).Value = FormatPercent(maxd)
        ws.Cells(3, 15).Value = ticker2
        ws.Cells(4, 16).Value = stockvol
        ws.Cells(4, 15).Value = ticker3
        
    Next ws

End Sub
A             ����J     33333ÿ  HP�s�r�     ���B  ����J      33333ÿ   HP�s�r�   HP�s�r�   `         l���J    ���J    \���(�6@  �z�G�6@  =
ףp}6@  =
ףp}6@      ���@             ����J    �������?  �HP��?    ��^�A  ����J     �������?   �HP��?   �HP��?   `         l���J    ��J    H�z��6@  H�z��6@  =
ףp}6@  ��(\��6@      D�)A             ����J    �=
ףp�?  ?�ܵ�|�?    ����A  ����J     �=
ףp�?   ?�ܵ�|�?   ?��