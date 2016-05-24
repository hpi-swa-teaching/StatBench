comparing
= aNumber
	^ aNumber class = self class
		ifTrue: [ self value = aNumber value or: [ aNumber = self asUnpreciseFloat ]]
		ifFalse: [ self value = aNumber or: [ self asUnpreciseFloat = aNumber ]]