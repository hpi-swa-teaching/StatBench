file output
openStream: filename
	^ StandardFileStream fileNamed: (FileDirectory uri: filename) fullName