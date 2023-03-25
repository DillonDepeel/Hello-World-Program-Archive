Dim intArr(2,2) as Integer
Sub Populate2D()
'declare the 2D array
   Dim intA(2, 2) As Integer
'declare variables
   Dim rw As Integer
   Dim col As Integer
'populate the array
   intA(0, 1) = 45
   intA(0, 2) = 45
   intA(1, 0) = 65
   intA(2, 0) = 65
'loop through the array and populate Excel
   For rw = 1 To 2
      For col = 1 To 2
         Cells(rw + 1, col + 1).Value = intA(rw, col)
      Next col
    Next rw
End Sub
Sub Resize2D()
'declare the array
   Dim varArray() as Variant
'declare the size of the array
   ReDim varArray(1, 2)
   varArray(0, 1) = "hello"
   varArray(0, 2) = "world"
   varArray(1, 0) = "howdy"
   varArray(1, 0) = "Dillon"
'redeclare the size of the array
   ReDim varArray(1, 2)
'repopulate the array 
   varArray(0, 0) = "hello"
   varArray(0, 1) = "world"
End Sub
