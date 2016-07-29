file output
writeTable: aTable toTSVFile: fileName header: aBoolean
	| fileStream |
	fileStream := StandardFileStream forceNewFileNamed: fileName, '.tsv'.
	self writeTable: aTable toCSVStream: fileStream header: aBoolean separator: self tsvSeparator