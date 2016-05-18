file IO
writeTable: aTable toCSVFile: fileName withHeader: aBoolean
	| fileStream |
	fileStream := StandardFileStream forceNewFileNamed: fileName, '.csv'.
	self writeTable: aTable toCSVStream: fileStream withHeader:  aBoolean withSeperator: self csvSeparator