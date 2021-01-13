Dim Word
Dim WordDoc
Dim var
Set Word = CreateObject("Word.Application")

'Open the Document
Set WordDoc = Word.Documents.open("%SelectedFile%")

NumberOfWords = WordDoc.Sentences.count
For i = 1 to NumberOfWords
WScript.Echo WordDoc.Sentences(i)
Next
' Close Word
WordDoc.Save
Word.Quit
'Release the object variables
Set WordDoc = Nothing
Set Word = Nothing