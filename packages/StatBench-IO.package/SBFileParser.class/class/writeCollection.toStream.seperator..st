file output
writeCollection: aCollection toStream: outStream seperator: seperator
	| contentCollection |
	contentCollection := aCollection collect: [ :element |
		element asString, seperator ].
	contentCollection at: (contentCollection size) put: contentCollection last allButLast.
	outStream
		<< contentCollection;
		lf