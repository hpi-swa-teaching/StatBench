display
updateContent
	self
		submorphsDo: [ :submorph | self removeMorph: submorph ];
		displayTable: self table