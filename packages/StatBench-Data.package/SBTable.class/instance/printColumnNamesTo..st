printing
printColumnNamesTo: aWriteStream
	| string |
	string := ''.
	self columnNames do: [ :name |
		string := string, name, Character tab ].
	string isEmpty
		ifTrue: [ ^ self ].
	aWriteStream
		<< string allButLast;
		cr