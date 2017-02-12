generation
addPairedAttribute: aPair to: aClass
	| name |
	name := aPair key.
	"attribute"
	aClass addInstVarNamed: name.
	"getter"
	aClass
		compile:
			('{1}
	^ {1}' format: {name})
		classified: 'accessing'.
	"setter"
	aClass
		compile:
			('{1}: anObject
	{1} := anObject' format: {name})
		classified: 'accessing'.
	"magritte"
	aClass
		compile: (self magritteDescriptionFor: name type: aPair value) asMethodString
		classified: 'magritte description'