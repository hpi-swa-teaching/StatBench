display
updateContent
	| headerMorph |
	self extent: 0@0.
	self header ifNotNil: [
		self header = ''
			ifTrue: [ self header: ' ' ].
		headerMorph := SBTableTextMorph newWithString: self header.
		headerMorph
			bold;
			updateContent;
			centered.
		self addColumnEntryMorph: headerMorph ].
	self columnContents do: [ :currentElement |
		self addColumnEntryMorph: (SBTableTextMorph newWithString: currentElement) ].
	self submorphsDo: [ :currentElement |
		currentElement width: self width ].
	headerMorph ifNotNil: [ headerMorph width: self width ]