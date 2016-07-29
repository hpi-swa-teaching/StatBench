testing
testDisplayTable
	| table |
	self diagramWindow: SBTableWindow new.
	self assert: self diagramWindow contentMorph isNil.
	table := SBTable new.
	self diagramWindow displayTable: table.
	self
		assert: self diagramWindow contentMorph notNil;
		assert: (self diagramWindow window submorphs anySatisfy: [ :element |
			element class = ScrollPane ])