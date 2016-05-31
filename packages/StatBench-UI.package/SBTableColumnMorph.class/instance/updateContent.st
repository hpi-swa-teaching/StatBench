display
updateContent
	| textMorph |
	self extent: 0@0.
	self columnContents do: [ :currentElement |
		textMorph := SBTableTextMorph new.
		textMorph
			data: currentElement;
			updateContent;
			position: self position + (0@self height).
		self
			height: self height + textMorph height;
			width: (self width max: textMorph width);
			addMorph: textMorph ]