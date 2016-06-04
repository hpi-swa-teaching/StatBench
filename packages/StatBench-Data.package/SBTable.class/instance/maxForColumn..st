math functions
maxForColumn: aColumn
	| max |
	(self containsColumnNumbers: aColumn)
		ifFalse: [ ^ nil ].
	max := (self rows select: [ :currentRow |
		(currentRow at: aColumn) isNil not ])
	detectMax: [ :currentRow |
		currentRow at: aColumn].
	^ max
		ifNil: [ max ]
		ifNotNil: [ max at: aColumn ]