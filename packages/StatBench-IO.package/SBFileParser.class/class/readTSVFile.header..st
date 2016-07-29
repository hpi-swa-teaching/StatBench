file input
readTSVFile: filename header: hasHeader
	^ self readCSVStream: (self openStream: filename) header: hasHeader separator: self tsvSeparator