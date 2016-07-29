testing
testDisplayTable
	| table |
	self tableWindow: SBTableWindow new.
	self assert: self tableWindow contentMorph isNil.
	table := SBTable new.
	self tableWindow displayTable: table.
	self
		assert: self tableWindow contentMorph notNil;
		assert: (self tableWindow window submorphs anySatisfy: [ :element |
			element class = ScrollPane ])