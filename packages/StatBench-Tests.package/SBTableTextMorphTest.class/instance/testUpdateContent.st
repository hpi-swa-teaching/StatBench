testing
testUpdateContent
	| testHeader testColumn newline |
	newline := Character cr.
	self textmorph: SBTableTextMorph new.
	testHeader := 'a'.
	testColumn := '1', newline, '2', newline, '3.3'.
	self textmorph
		header: testHeader;
		data: testColumn;
		updateContent.
	self assert: self textmorph contents equals: testHeader, newline, testColumn