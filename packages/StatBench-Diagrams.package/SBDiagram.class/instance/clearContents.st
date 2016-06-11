display
clearContents
	self submorphsDo: [ :submorph |
		self removeMorph: submorph ]