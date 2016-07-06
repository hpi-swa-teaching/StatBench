*StatBench
isStringANumber: aString
	| isNumber entry |
	isNumber := true.
	entry := aString.
	(entry findTokens: '.') do: [ :substring |
		isNumber := isNumber and: [ substring isAllDigits ]].
	((entry at: 1 ifAbsent: [ '' ]) = $- and: [ (entry at: 2 ifAbsent: [ $a ]) asString isAllDigits ])
		ifTrue: [ isNumber := isNumber or: [ self isStringANumber: (entry copyFrom: 2 to: entry size) ]].
	^ entry size strictlyPositive and: [ entry isAllDigits or: [ (entry occurrencesOf: $.) < 2 and: [ isNumber ]]]