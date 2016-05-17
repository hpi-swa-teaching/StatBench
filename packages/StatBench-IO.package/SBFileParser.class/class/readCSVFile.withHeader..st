file IO
readCSVFile: filename withHeader: hasHeader
	^ self readCSVStream: (self openStream: filename) withHeader: hasHeader