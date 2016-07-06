*StatBench
readArbitraryPrecisionFloatFrom: aString
	(self isStringANumber: aString)
		ifFalse: [ self error: aString, ' is NaN'].
	^ (aString includesSubstring: '.')
		ifTrue: [ ArbitraryPrecisionFloat readFrom: aString numBits: 53 ]
		ifFalse: [ self readFrom: aString ]