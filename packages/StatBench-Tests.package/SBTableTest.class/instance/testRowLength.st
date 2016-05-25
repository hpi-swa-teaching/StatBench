testing
testRowLength
	| size |
	size := 3.
	self table: SBTable new.
	self table addRows: 4 withSize: size.
	self assert: self table rowLength equals: size