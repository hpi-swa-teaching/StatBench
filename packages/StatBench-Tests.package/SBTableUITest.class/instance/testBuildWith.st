testing
testBuildWith
	| tabelUIMorph |
	tabelUIMorph :=  SBTableUI open.
	World removeMorph: tabelUIMorph.
	self
		tableUI: tabelUIMorph model;
		assert: (tabelUIMorph paneMorphs anySatisfy: [ :paneMorph |
			paneMorph class = PluggableCheckBoxMorph ]);
		assert: (tabelUIMorph paneMorphs anySatisfy: [ :paneMorph |
			paneMorph class = PluggableButtonMorphPlus ]);
		assert: (tabelUIMorph paneMorphs anySatisfy: [ :paneMorph |
			paneMorph class = PluggableTextMorphPlus ])