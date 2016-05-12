instance creation
newFromFloat: aFloat
	^ self basicNew
		initialize;
		floatValue: aFloat;
		isAPFloat: true;
		yourself.