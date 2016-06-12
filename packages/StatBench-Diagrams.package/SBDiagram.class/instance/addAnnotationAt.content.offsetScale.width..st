drawing
addAnnotationAt: aPoint content: aString offsetScale: aFloat width: width
	| morph |
	morph := SBTableTextMorph new.
	morph
		data: aString;
		maxWidth: width;
		updateContent;
		position: aPoint - ((morph width * aFloat) @ 0);
		lock.
	self addMorph: morph