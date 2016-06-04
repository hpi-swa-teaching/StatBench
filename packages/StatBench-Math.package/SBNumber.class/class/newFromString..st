instance creation
newFromString: aString
	(SBTable isEntryANumber: aString)
		ifTrue: [
			^ (aString includesSubString: '.')
				ifTrue: [
					self basicNew
						initialize;
						floatValueAsString: aString;
						isAPFloat: true;
						yourself ]
				ifFalse: [ self newFromInt: aString asInteger ]]
		ifFalse: [ self error: 'String: ', aString, ' is not a number.' ]