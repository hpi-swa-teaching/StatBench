display
updateSubmorphsWithHeader: headerMorph
	self submorphsDo: [ :currentElement |
		currentElement width: self width ].
	headerMorph ifNotNil: [ headerMorph width: self width ]