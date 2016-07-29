testing
testInputSpec
	| input tabelUIMorph |
	tabelUIMorph :=  SBTableUI open.
	World removeMorph: tabelUIMorph.
	self tableUI: tabelUIMorph model.
	input := (tabelUIMorph paneMorphs select: [ :paneMorph | 
		paneMorph class = PluggableTextMorphPlus ]) first.
	self
		assert: input getTextSelector equals: #filePath;
		assert: input editTextSelector equals: #filePath:.
	self tableUI filePath: 'test_test'.
	self assert: input text string equals: self tableUI filePath