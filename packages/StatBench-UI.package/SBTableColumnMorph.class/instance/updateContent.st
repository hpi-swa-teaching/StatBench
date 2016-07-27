display
updateContent
	| headerMorph |
	self extent: 0@0.
	self header ifNotNil: [
		self header = ''
			ifTrue: [ self header: ' ' ].
		headerMorph := SBTableTextMorph headerWithString: self header.
		self addColumnEntryMorph: headerMorph ].
	self columnContents do: [ :currentElement |
		self addColumnEntryMorph: (SBTableTextMorph newWithString: currentElement) ].
	self updateSubmorphsWithHeader: headerMorph