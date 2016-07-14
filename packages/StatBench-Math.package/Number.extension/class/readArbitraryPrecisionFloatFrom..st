*StatBench-Math
readArbitraryPrecisionFloatFrom: aString
	(self isStringANumber: aString)
		ifFalse: [ self error: aString, ' is NaN'].
	^ ([ aString includesSubstring: '.' ] 
  		on: MessageNotUnderstood 
  		do: [ :exception | aString includesSubString: '.' ])
			ifTrue: [ ArbitraryPrecisionFloat readFrom: aString numBits: 53 ]
			ifFalse: [ self readFrom: aString ]