display
updateContent
	self
		submorphsDo: [ :element |
			self removeMorph: element ];
		displayTable: self table