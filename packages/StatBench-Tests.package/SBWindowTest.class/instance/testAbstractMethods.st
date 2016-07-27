testing
testAbstractMethods
	self window: SBWindow new.
	self
		should: [ self window clearContents ] raise: Error;
		should: [ self window updateContent ] raise: Error