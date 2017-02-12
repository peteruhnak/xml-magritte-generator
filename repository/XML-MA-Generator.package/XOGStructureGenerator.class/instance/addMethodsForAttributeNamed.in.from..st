generation
addMethodsForAttributeNamed: aName in: aClass from: anElement
	"getter"

	aClass
		compile:
			('{1}
	^ {1}' format: {aName})
		classified: 'accessing'.
	"setter"
	aClass
		compile:
			('{1}: anObject
	{1} := anObject' format: {aName})
		classified: 'accessing'.
	"magritte"
	aClass
		compile: (self magritteDescriptionFor: aName element: anElement)
		classified: 'magritte description'