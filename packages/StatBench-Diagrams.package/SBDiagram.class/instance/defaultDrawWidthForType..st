constants
defaultDrawWidthForType: aSymbol
	^ self perform: ('default', aSymbol asString capitalized, 'LineWidth') asSymbol