testing
testRowLength
	| size |
	size := 3.
	self table: SBTable new.
	self table addRows: 4 size: size.
	self assert: self table rowLength equals: size