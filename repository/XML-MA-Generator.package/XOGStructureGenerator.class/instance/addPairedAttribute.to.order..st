generation
addPairedAttribute: aPair to: aClass order: anOrder
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
		compile: (self magritteDescriptionFor: name type: aPair value order: anOrder) asMethodString
		classified: 'magritte description'