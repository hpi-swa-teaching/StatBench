display
updateContent
	| headerMorph text |
	self extent: 0@0.
	self header ifNotNil: [
		headerMorph := self createTextMorphFor: self header.
		text := Text fromString: self header.
		text allBold.
		headerMorph
			contents: text;
			centered.
		self addColumnEntryMorph: headerMorph ].
	self columnContents do: [ :currentElement |
		self addColumnEntryMorph: (self createTextMorphFor: currentElement) ].
	self submorphsDo: [ :currentElement |
		currentElement width: self width ].
	headerMorph width: self width