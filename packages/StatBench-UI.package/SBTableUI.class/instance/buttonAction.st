ui elements
buttonAction
	| table filetype |
	filetype := (self filePath last: 3) asString asLowercase.
	table := filetype caseOf: {
		[ 'csv' ] -> [ SBFileParser readCSVFile: self filePath asString header: self header ] .
		[ 'tsv' ] -> [ SBFileParser readTSVFile: self filePath asString header: self header ] }
		otherwise: [ self error: 'Wrong file type! Only use .csv or .tsv!' ].
	self tableWindow: (SBTableWindow openTable: table).
	self tableWindow label: self filePath asString