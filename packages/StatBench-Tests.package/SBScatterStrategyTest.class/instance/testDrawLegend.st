testing
testDrawLegend
	| function position foundPixel |
	self strategy: (SBScatterStrategy newWith: { 'hello' . 'world' . 'test' . '1337' }).
	function := Dictionary newFrom: { 1->{7} . 2->{13} . 3->{4.3} . 5->{17.8} }.
	self strategy draw: function keys function: function at: 0 asPoint.
	position := self strategy axisEndPoint  + (self strategy annotationPadding@0).
	self strategy colorDictionary keysDo: [ :key |
		foundPixel := false.
		position := position + (0@self strategy font height).
		0 to: (self strategy font widthOfString: key) do: [ :offset |
			foundPixel := foundPixel or: [ (self strategy canvas form pixelValueAt: position + (offset@(self strategy font height / 2))) strictlyPositive ]].
		self assert: foundPixel ].