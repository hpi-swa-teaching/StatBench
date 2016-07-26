display
createHeaderMorph
	^ (SBTableTextMorph newWithString: self header)
		bold;
		updateContent;
		centered;
		yourself