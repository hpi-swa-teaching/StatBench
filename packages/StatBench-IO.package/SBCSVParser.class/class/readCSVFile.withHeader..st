fileIn/Out
readCSVFile: filename withHeader: hasHeader
	^ self readCSVStream: (self openStream: filename) withHeader: hasHeader.