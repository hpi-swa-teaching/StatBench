testing
testIsStringANumber
	self
		assert: (Number isStringANumber: '123');
		assert: (Number isStringANumber: '123.1');
		assert: (Number isStringANumber: '-3123');
		assert: (Number isStringANumber: '-2312.123123');
		assert: (Number isStringANumber: '123a24') not;
		assert: (Number isStringANumber: '-123a24') not;
		assert: (Number isStringANumber: '--123.24') not;
		assert: (Number isStringANumber: '123..24') not