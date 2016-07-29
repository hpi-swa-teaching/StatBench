file output
writeTable: aTable toCSVFile: fileName header: aBoolean
	| fileStream |
	fileStream := StandardFileStream forceNewFileNamed: fileName, '.csv'.
	self writeTable: aTable toCSVStream: fileStream header: aBoolean separator: self csvSeparator