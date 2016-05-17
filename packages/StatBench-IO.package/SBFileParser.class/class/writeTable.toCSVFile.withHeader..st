file IO
writeTable: aTable toCSVFile: fileName withHeader: aBoolean
	| fileStream header line |
	fileStream := StandardFileStream forceNewFileNamed: fileName.
	aBoolean
		ifTrue: [
			header := ''.
			aTable columnNames do: [ :columnName |
			header := header, columnName, self separator ].
			header := header allButLast, self newline.
			fileStream nextPutAll: header ].
	aTable rows do: [ :row |
		line := ''.
		row do: [ :element |
			line := line, element value asString, self separator ].
		line := line allButLast, self newline.
		fileStream nextPutAll: line ].
	fileStream close

