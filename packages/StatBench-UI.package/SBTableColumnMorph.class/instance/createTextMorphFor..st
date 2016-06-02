display
createTextMorphFor: aString
	| textMorph |
	textMorph := SBTableTextMorph new.
	^ textMorph
			data: aString;
			updateContent;
			yourself