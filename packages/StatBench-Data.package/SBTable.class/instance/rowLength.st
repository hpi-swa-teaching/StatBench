accessing
rowLength
	^ self rows size strictlyPositive
		ifTrue: [ (self rowAt: 1) size ]
		ifFalse: [ 0 ]