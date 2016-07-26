data management
scientificNotationFor: aNumber
	| exponent factor factorString subStrings |
	aNumber isZero
		ifTrue: [ ^ '0e0' ].
	exponent := aNumber abs log floor.
	factor := (aNumber / (10 raisedTo: exponent)) asFloat.
	factorString := factor asString.
	subStrings := factorString subStrings: '.'.
	subStrings second size > self scientificNotationDecimals
		ifTrue: [
			factor := factor roundUpTo: (10 raisedTo: ( -1 * self scientificNotationDecimals)) asFloat.
			factorString := factor asString.
			subStrings := factorString subStrings: '.' ].
	subStrings second size > self scientificNotationDecimals
		ifTrue: [ factorString := factorString allButLast: (subStrings second size - self scientificNotationDecimals) ].
	factorString := factorString , 'e', exponent asString.
	^ factorString