drawing
yScaling
	self maxRange
		ifNil: [
			self maxRange: (self function values detectMax: [ :element |
				element ]) ].
		self maxRange class = SBNumber
			ifTrue: [ self maxRange: self maxRange literalValue ].
	^ self defaultDrawArea y / self maxRange