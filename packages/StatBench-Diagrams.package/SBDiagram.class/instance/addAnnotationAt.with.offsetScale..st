drawing
addAnnotationAt: aPoint with: aString offsetScale: aFloat
	| morph |
	morph := SBTableTextMorph new.
	morph
		data: aString;
		updateContent;
		position: aPoint - ((morph width * aFloat) @ 0).
	self addMorph: morph