testing
testDetectFactors
	| testLengths factors |
	testLengths := { 10 . 100 . 1000 }.
	testLengths do: [ :length |
		self table: SBTable new.
		self table
			addRows: length size: 2.
		1 to: length do: [ :index |
			self table
				row: index column: 1 value: (SBNumber newFromNumber: (index \\ 3));
				row: index column: 2 value: (SBNumber newFromNumber: index) ].
		factors := self table detectFactors.
		self
			assert: factors first;
			assert: factors second not ]