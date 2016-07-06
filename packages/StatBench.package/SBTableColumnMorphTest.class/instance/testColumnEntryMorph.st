testing
testColumnEntryMorph
	self tableColumn
		addColumnEntryMorph: (SBTableTextMorph newWithString: 'testing');
		addColumnEntryMorph: (SBTableTextMorph newWithString: 'helloworld').
	self 
		assert: self tableColumn submorphs first data equals: 'helloworld';
		assert: self tableColumn submorphs second data equals: 'testing'