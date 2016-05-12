instance creation
newFromInt: anInteger
	^ self basicNew
		initialize;
		intValue: anInteger;
		isAPFloat: false;
		yourself.