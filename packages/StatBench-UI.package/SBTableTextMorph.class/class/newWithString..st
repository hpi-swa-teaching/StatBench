instance creation
newWithString: aString
	^ self basicNew
		initialize;
		data: aString;
		updateContent;
		yourself