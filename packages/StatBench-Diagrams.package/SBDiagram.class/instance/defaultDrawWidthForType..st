constants
defaultDrawWidthForType: aSymbol
	^ self perform: ('default', aSymbol asString capitalized, 'DiagramPenSize') asSymbol