testing
testDrawDiagram
	| form function position |
	self strategy: (SBScatterStrategy newWith: {1 . 2 . 3 . 4} asOrderedCollection).
	function := Dictionary newFrom: { 1->{7} . 2->{13} . 3->{4.3} . 4->{17.8} }.
	self strategy draw: function keys function: function at: 0 asPoint.
	form := self strategy canvas form.	
	function keys do: [ :key |
		position := self positionFor: key@((function at: key) first).
		self
			assert: (form pixelValueAt: position) strictlyPositive;
			assert: (form pixelValueAt: position - (0@3)) isZero ]
		
		