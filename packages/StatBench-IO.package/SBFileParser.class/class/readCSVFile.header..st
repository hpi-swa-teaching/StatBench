file input
readCSVFile: filename header: hasHeader
	^ self readCSVStream: (self openStream: filename) header: hasHeader seperator: self csvSeparator