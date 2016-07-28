instance creation
headerWithString: aString
	^ (self newWithString: aString)
		bold;
		updateContent;
		centered;
		yourself