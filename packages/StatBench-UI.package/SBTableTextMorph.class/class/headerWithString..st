instance creation
headerWithString: aString
	^ (self newWithString: self header)
		bold;
		updateContent;
		centered;
		yourself