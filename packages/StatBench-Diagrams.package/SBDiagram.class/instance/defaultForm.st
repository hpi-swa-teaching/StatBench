constants
defaultForm
	| newForm |
	newForm := Form extent: self diagramSize depth: Display depth.
	newForm fillColor: self color.
	^ newForm