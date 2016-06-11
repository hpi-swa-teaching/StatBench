display
updateContent
	self
		clearContents;
		drawFunction;
		drawXAnnotation;
		drawYAnnotation;
		updateFormMorph;
		addMorphBack: self formMorph;
		extent: self formMorph extent