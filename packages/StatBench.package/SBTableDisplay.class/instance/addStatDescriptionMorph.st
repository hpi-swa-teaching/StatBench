display
addStatDescriptionMorph
	| content descriptionMorph newline |
	newline := Character cr.
	content := ''.
	self statFunctions do: [ :function |
		content := content, function asString, newline ].
	descriptionMorph := SBTableTextMorph new.
	descriptionMorph
		data: content allButLast;
		updateContent;
		position: self position.
	self
		addMorph: descriptionMorph;
		extent: descriptionMorph extent + (self padding@0).
	