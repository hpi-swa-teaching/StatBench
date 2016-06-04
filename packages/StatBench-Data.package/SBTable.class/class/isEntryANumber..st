testing
isEntryANumber: anEntry
	| isNumber entry |
	entry := anEntry.
	entry isString
		ifFalse: [ entry := entry asString ].
	isNumber := true.
	(entry findTokens: '.') do: [ :substring |
		isNumber := isNumber and: [ substring isAllDigits ]].
	((entry at: 1 ifAbsent: [ '' ]) = $- and: [ (entry at: 2 ifAbsent: [ $a ]) asString isAllDigits ])
		ifTrue: [ isNumber := isNumber or: [ self isEntryANumber: (entry copyFrom: 2 to: entry size) ]].
	^ entry size strictlyPositive and: [ entry isAllDigits or: [ (entry occurrencesOf: $.) < 2 and: [ isNumber ]]]