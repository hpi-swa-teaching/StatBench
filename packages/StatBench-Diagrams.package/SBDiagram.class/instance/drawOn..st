display
drawOn: aCanvas
	"aCanvas is ignored but needed because Morphic calls #drawOn: with one argument."
	self reDraw
		ifTrue: [
			self
				canvas: (self strategy draw: self domain function: self function); 
				reDraw: false;
				updateContent: (self canvas contentsOfArea: (self canvas origin extent: self canvas extent)) ].
	super drawOn: self canvas.