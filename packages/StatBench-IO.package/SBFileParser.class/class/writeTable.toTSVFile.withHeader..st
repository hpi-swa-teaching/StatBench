file IO
writeTable: aTable toTSVFile: fileName withHeader: aBoolean
	| fileStream |
	fileStream := StandardFileStream forceNewFileNamed: fileName, '.tsv'.
	self writeTable: aTable toCSVStream: fileStream withHeader:  aBoolean withSeperator: self tsvSeparator