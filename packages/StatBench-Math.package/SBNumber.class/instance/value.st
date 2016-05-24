accessing
value
	^ self isAPFloat
		ifTrue: [ self floatValue ]
		ifFalse: [ self intValue ]