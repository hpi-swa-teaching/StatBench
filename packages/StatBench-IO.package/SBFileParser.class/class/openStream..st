file IO
openStream: filename
	^ StandardFileStream fileNamed: (FileDirectory uri: filename) fullName