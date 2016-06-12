drawing
yScaling
	| max |
	self maxRange
		ifNil: [
			max := self function values detectMax: [ :element |
				element ].
		max class = SBNumber
			ifTrue: [ max := max asUnpreciseFloat ].
		max strictlyPositive
			ifFalse: [ self error: 'Negative max value: ', max asString ].
		self maxRange: (max / (10 raisedToInteger: max log floor)) ceiling * (10 raisedToInteger: max log floor) ].
	^ self defaultDrawArea y / self maxRange