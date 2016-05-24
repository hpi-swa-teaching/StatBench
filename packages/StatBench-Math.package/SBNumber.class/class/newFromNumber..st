instance creation
newFromNumber: aNumber
	^ aNumber class = self
		ifTrue: [ ^ aNumber ]
		ifFalse: [
			aNumber class = ArbitraryPrecisionFloat
				ifTrue: [ self newFromFloat: aNumber ]
				ifFalse: [ 
					(aNumber isFraction and: [ aNumber isInteger not ])
						ifTrue: [
							self basicNew
								initialize;
								floatValue: aNumber asFloat;
								isAPFloat: true;
								yourself ]
						ifFalse: [ self newFromString: aNumber asString ]]]