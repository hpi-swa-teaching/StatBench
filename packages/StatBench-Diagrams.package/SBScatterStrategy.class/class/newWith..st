instance creation
newWith: colorCollection
	^ self basicNew
		initialize;
		colorValues: colorCollection;
		yourself