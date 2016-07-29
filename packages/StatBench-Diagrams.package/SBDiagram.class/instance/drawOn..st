display
drawOn: aCanvas
	| canvasData |
	"aCanvas is ignored but needed because Morphic calls #drawOn: with one argument."
	self reDraw
		ifTrue: [
			canvasData := self strategy draw: self domain function: self function at: self position.
			self
				diagramCanvas: (canvasData at: #canvas);
				extent: (canvasData at: #canvasSize);
				reDraw: false;
				updateContent: (self diagramCanvas contentsOfArea: (self diagramCanvas origin extent: self diagramCanvas extent)) ].
	super drawOn: self diagramCanvas