testing
testDrawString
	| function string tempBoolean |
	tempBoolean := false.
	string := 'EinLangerString'.
	self strategy: SBDrawStrategy new.
	function := Dictionary newFrom: { string->{7} }.
	self strategy diagramProperties at: #function put: function.
	self strategy
		domain: function keys;
		calculateDiagramSize;
		canvas: self strategy diagramSizedCanvas.
	self strategy diagramProperties at: #entryWidth put: (self strategy font widthOfString: string) / 1.5.
	self strategy drawString: string at: 0 asPoint extent: (self strategy font widthOfString: string)@self strategy font height.
	0 to: 15 do: [ :index |
		self deny: (self strategy canvas form pixelValueAt: ((self strategy font widthOfString: string) / 1.5 + index)@(self strategy font height / 2)) strictlyPositive.
		tempBoolean := tempBoolean or: [ (self strategy canvas form pixelValueAt: (index@(self strategy font height * 1.5))) strictlyPositive ]].
	self assert: tempBoolean