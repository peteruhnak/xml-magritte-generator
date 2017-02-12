generation
magritteDescriptionFor: aName type: aType order: anOrder
	| desc valueTypesMapping |
	desc := XOGMagritteDescription new.
	valueTypesMapping := Dictionary
		with: #String -> MAStringDescription
		with: #Boolean -> MABooleanDescription
		with: #Integer -> MANumberDescription
		with: #Float -> MANumberDescription.
	desc type: MAStringDescription.
	valueTypesMapping at: aType last ifPresent: [ :t | desc type: t ].
	desc
		accessor: aName;
		label: aName;
		priority: anOrder.
	aType first = #list
		ifTrue: [ desc
				type: MAToManyRelationDescription;
				refClass: (self classNameFor: aType second) ].
	aType first = #complex
		ifTrue: [ desc
				type: MAToOneRelationDescription;
				refClass: (self classNameFor: aName) ].
	aType first = #inlinedAttribute
		ifTrue: [ desc
				isXmlChildAttribute: true;
				xmlAttributeName: aType second ].
	aType first = #inlinedElement
		ifTrue: [ desc isXmlInlineElement: true ].
	aType first = #attribute
		ifTrue: [ desc isXmlAttribute: true ].
	^ desc