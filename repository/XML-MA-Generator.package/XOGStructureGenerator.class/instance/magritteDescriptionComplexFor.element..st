generation
magritteDescriptionComplexFor: aName element: anElement
	| desc type|
	desc := XOGMagritteDescription new.
	desc type: MAStringDescription new.
	desc accessor: aName.
	desc label: aName.
	type := typeHierarchy at: (anElement xPathFor: anElement).
	(aName = anElement name) & type isList ifTrue: [ 
		desc type: MAToManyRelationDescription;
		isXmlElement: true.
	].
	(aName = anElement name) & type isInlined ifTrue: [ 
		desc isXmlElement: true.
	].
	
	(aName = anElement name) ifTrue: [ 
		
	].
	anElement attributes
		ifEmpty: [ desc isXmlElement: true ]
		ifNotEmpty: [ desc isXmlChildAttribute: true.
			desc attributeName: anElement attributes keys first ].
	desc accessor: anElement name.
	^ desc