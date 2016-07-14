file IO
writeTable: aTable toCSVStream: fileStream header: aBoolean seperator: aCharacter
	| header line seperator |
	seperator := aCharacter.
	aBoolean
		ifTrue: [
			header := ''.
			aTable columnNames do: [ :columnName |
			header := header, columnName, seperator ].
			header := header allButLast, self newline.
			fileStream nextPutAll: header ].
	aTable rowsDo: [ :currentRow |
		line := ''.
		currentRow do: [ :element |
			line := line, element asString, seperator ].
		line := line allButLast, self newline.
		fileStream nextPutAll: line ].
	fileStream close
