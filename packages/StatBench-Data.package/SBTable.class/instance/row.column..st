accessing
row: aRow column: aColumn
	^ ((aRow between: 1 and: self rows size) and: [ aColumn between: 1 and: (self rows at: aRow) size ])
		ifTrue: [ (self rowAt: aRow) at: aColumn ]
		ifFalse:  [ nil ]