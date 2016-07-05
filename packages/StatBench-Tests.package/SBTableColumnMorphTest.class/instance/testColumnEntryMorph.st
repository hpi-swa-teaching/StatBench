testing
testColumnEntryMorph
	tableColumn addColumnEntryMorph: (SBTableTextMorph newWithString: 'testing').
	tableColumn addColumnEntryMorph: (SBTableTextMorph newWithString: 'helloworld').
	self 
		assert: (tableColumn submorphs at: 1) data equals: 'helloworld';
		assert: (tableColumn submorphs at: 2) data equals: 'testing'