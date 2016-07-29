file output
writeCollection: aCollection toStream: outStream separator: separator
	| contentCollection |
	contentCollection := aCollection collect: [ :element |
		element asString, separator ].
	contentCollection at: (contentCollection size) put: contentCollection last allButLast.
	outStream
		<< contentCollection;
		lf