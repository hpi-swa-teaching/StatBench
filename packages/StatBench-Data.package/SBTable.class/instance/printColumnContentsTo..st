printing
printColumnContentsTo: aWriteStream
	| string |
	string := ''.
	self rowsDo: [ :currentRow |
		currentRow do: [ :element |
			string := string, element asString, Character tab ].
		string isEmpty
			ifFalse: [ string := string allButLast, Character cr ]].
	string isEmpty
		ifFalse: [ aWriteStream << string allButLast ]