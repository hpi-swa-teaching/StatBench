accessing
row: aRow column: aColumn
	^ ((aRow between: 1 and: self columnLength) and: [ aColumn between: 1 and: (self rowAt: aRow) size ])
		ifTrue: [ (self rowAt: aRow) at: aColumn ]
		ifFalse: [ nil ]