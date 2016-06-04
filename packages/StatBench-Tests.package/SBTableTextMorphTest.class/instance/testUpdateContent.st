testing
testUpdateContent
	| testData newline |
	newline := Character cr.
	self textmorph: SBTableTextMorph new.
	testData := '1', newline, '2', newline, '3.3'.
	self textmorph
		data: testData;
		updateContent.
	self assert: self textmorph contents equals: testData