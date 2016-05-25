testing
testProperties
	self
		assert: self textmorph wantsHaloFromClick equals: false;
		assert: self textmorph readOnly equals: true;
		assert: self textmorph borderWidth equals: 0