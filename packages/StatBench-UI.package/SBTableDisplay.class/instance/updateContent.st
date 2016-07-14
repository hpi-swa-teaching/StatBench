display
updateContent
	self
		submorphsDo: [ :currentSubmorph |
			self removeMorph: currentSubmorph ];
		displayTable: self table