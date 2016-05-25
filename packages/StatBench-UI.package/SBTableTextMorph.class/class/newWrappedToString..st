as yet unclassified
newWrappedToString: aString
	^ self basicNew
		initialize;
		contentsAsIs: aString;
		yourself
	