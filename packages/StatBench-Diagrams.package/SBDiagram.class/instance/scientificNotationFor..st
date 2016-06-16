display
scientificNotationFor: aNumber
	| exponent factor factorString subStrings |
	(aNumber >= 1 or: [ aNumber <= -1 ])
		ifTrue: [
			exponent := aNumber abs log floor ]
		ifFalse: [
			exponent := aNumber abs log floor ].
	factor := (aNumber / (10 raisedTo: exponent)) asFloat.
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