file IO
readTSVFile: filename withHeader: hasHeader
	^ self readCSVStream: (self openStream: filename) withHeader: hasHeader withSeperator: self tsvSeparator