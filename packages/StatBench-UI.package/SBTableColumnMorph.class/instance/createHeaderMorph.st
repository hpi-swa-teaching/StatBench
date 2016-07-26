display
createHeaderMorph
	| headerMorph |
	headerMorph := SBTableTextMorph newWithString: self header.
		headerMorph
			bold;
			updateContent;
			centered