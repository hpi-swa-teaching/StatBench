file IO
writeTable: aTable toTSVFile: fileName header: aBoolean
	| fileStream |
	fileStream := StandardFileStream forceNewFileNamed: fileName, '.tsv'.
	self writeTable: aTable toCSVStream: fileStream header:  aBoolean seperator: self tsvSeparator