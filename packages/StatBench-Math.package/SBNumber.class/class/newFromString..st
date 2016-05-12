instance creation
newFromString: aString
	(aString includesSubString: '.')
		ifTrue: [
			^ self basicNew
				initialize;
				floatValueAsString: aString;
				isAPFloat: true;
				yourself ]
		ifFalse: [
			^ self basicNew
				initialize;
				intValue:  aString asInteger;
				isAPFloat: false;
				yourself ]