testing
testBold
	self tableTextMorph 
		data: 'helloworld';
		bold.
	1 to: self tableTextMorph data size do: [ :index | 
		self assert: ((self tableTextMorph data attributesAt: index) includes: TextEmphasis bold) ]
		