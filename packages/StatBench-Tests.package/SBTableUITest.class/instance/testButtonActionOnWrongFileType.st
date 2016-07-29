testing
testButtonActionOnWrongFileType
	self tableUI: SBTableUI new.
	self tableUI filePath: 'test.sv'.
	self should: [ self tableUI buttonAction ] raise: Error