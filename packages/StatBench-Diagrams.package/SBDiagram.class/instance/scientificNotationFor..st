display
scientificNotationFor: aNumber
	| number exponent factor factorString subStrings |
	number := (aNumber class = SBNumber)
		ifTrue: [ aNumber value ]
		ifFalse: [ aNumber ].
	number isZero
		ifTrue: [ ^ '0e0' ].
	exponent := number abs log floor.
	factor := (number / (10 raisedTo: exponent)) asFloat.
	factorString := factor asString.
	subStrings := factorString subStrings: '.'.
	subStrings second size > self defaultScientificNotationDecimals
		ifTrue: [
			factor := factor roundUpTo: (10 raisedTo: ( -1 * self defaultScientificNotationDecimals)) asFloat.
			factorString := factor asString.
			subStrings := factorString subStrings: '.' ].
	subStrings second size > self defaultScientificNotationDecimals
		ifTrue: [ factorString := factorString allButLast: (subStrings second size - self defaultScientificNotationDecimals) ].
	factorString := factorString , 'e', exponent asString.
	^ factorString