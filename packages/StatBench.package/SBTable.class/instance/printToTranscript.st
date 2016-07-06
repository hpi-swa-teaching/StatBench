printing
printToTranscript
	| writeStream |
	writeStream := WriteStream on: ''.
	self
		printColumnNamesTo: writeStream;
		printColumnContentsTo: writeStream.
	Transcript show: writeStream contents.
	^ writeStream contents