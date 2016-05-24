conversion
asInteger
	^ self isAPFloat
		ifTrue: [ self asUnpreciseFloat asInteger ]
		ifFalse: [ self intValue ]