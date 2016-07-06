formatting
bold
	self data isText
		ifFalse: [ self data: (Text fromString: self data) ].
	self data allBold