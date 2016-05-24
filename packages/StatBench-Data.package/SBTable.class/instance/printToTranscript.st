printing
printToTranscript
	| string tab newline |
	string := ''.
	tab := Character tab.
	newline := Character cr.
	self columnNames do: [ :name |
		string := string, name, tab ].
	string size strictlyPositive
		ifTrue: [ string := string allButLast, newline ].
	self rows do: [ :currentRow |
		currentRow do: [ :element |
			string := string, element asString, tab ].
		string size strictlyPositive
			ifTrue: [ string := string allButLast, newline ]].
	string size strictlyPositive
		ifTrue: [ string := string allButLast ].
	Transcript show: string.
	^ string