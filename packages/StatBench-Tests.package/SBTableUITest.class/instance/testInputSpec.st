testing
testInputSpec
	| input tabelUIMorph textSelector string |
	tabelUIMorph :=  SBTableUI open.
	string := 'testString'.
	textSelector := #filePath.
	World removeMorph: tabelUIMorph.
	self tableUI: tabelUIMorph model.
	input := (tabelUIMorph paneMorphs select: [ :paneMorph | 
		paneMorph class = PluggableTextMorphPlus ]) first.
	self
		assert: input getTextSelector equals: #filePath;
		assert: input editTextSelector equals: #filePath:;
		assert: input text string equals: ''.
	input setText: string.
	self assert: input text string equals: string