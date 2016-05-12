mathematical functions
squared
	self isAPFloat
		ifTrue: [ ^ SBNumber newFromFloat: self value squared ]
		ifFalse: [ ^ SBNumber newFromInt: self value squared ]