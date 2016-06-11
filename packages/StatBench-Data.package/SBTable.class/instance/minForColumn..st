math functions
minForColumn: aColumn
	| min |
	(self containsColumnNumbers: aColumn)
		ifFalse: [ ^ nil ].
	min := (self rowsSelect: [ :currentRow |
		(currentRow at: aColumn) isNil not ])
	detectMin: [ :currentRow |
		currentRow at: aColumn].
	^ min
		ifNil: [ min ]
		ifNotNil: [ min at: aColumn ]