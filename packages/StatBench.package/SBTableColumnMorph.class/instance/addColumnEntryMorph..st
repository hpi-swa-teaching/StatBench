display
addColumnEntryMorph: aMorph
	aMorph position: self position + (0@self height).
	self
		height: self height + aMorph height;
		width: (self width max: aMorph width);
		addMorph: aMorph