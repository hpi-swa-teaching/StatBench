table management
row: aRow column: aColumn
	((aRow between: 1 and: rows size) and: [ aColumn between: 1 and: (rows at: aRow) size ])
		ifTrue: [ ^ (rows at: aRow) at: aColumn ].
	^ nil