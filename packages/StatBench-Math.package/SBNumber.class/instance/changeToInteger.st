conversion
changeToInteger
	self isAPFloat
		ifTrue: [
			self
				intValue: self asInteger;
				isAPFloat: false ]