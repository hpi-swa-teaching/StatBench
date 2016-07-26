accessing
rowLength
	^ self rows isEmpty
		ifTrue: [ 0 ]
		ifFalse: [ (self rowAt: 1) size ]