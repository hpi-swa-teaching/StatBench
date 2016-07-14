file IO
readTSVFile: filename header: hasHeader
	^ self readCSVStream: (self openStream: filename) header: hasHeader seperator: self tsvSeparator