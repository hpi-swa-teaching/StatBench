file IO
writeTable: aTable toCSVStream: fileStream withHeader: aBoolean withSeperator: aCharacter
	| header line seperator |
	seperator := aCharacter.
	aBoolean
		ifTrue: [
			header := ''.
			aTable columnNames do: [ :columnName |
			header := header, columnName, seperator ].
			header := header allButLast, self newline.
			fileStream nextPutAll: header ].
	aTable rows do: [ :row |
		line := ''.
		row do: [ :element |
			line := line, element asString, seperator ].
		line := line allButLast, self newline.
		fileStream nextPutAll: line ].
	fileStream close
