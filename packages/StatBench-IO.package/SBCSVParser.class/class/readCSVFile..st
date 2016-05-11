fileIn/Out
readCSVFile: filename
	^ self readCSVStream: (self openStream: filename).