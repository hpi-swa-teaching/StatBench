testing
testIsEntryANumber 
	self
		table: SBTable new;
		assert: (self table class isEntryANumber: '123') equals: true;
		assert: (self table class isEntryANumber: '123.1') equals: true;
		assert: (self table class isEntryANumber: '-3123') equals: true;
		assert: (self table class isEntryANumber: '-2312.123123') equals: true;
		assert: (self table class isEntryANumber: '123a24') equals: false;
		assert: (self table class isEntryANumber: '-123a24') equals: false;
		assert: (self table class isEntryANumber: '--123.24') equals: false;
		assert: (self table class isEntryANumber: '123..24') equals: false;
		assert: (self table class isEntryANumber: (SBNumber newFromString: '123')) equals: true