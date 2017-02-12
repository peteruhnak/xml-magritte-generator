generation
magritteDescriptionFor: aName type: aType order: anOrder
	| desc |
	desc := XOGMagritteDescription new.
	desc
		type: MAStringDescription;
		accessor: aName;
		label: aName;
		priority: anOrder.
	aType first = #list
		ifTrue: [ desc
				type: MAToManyRelationDescription;
				refClass: (self classNameFor: aType second) ].
	aType first = #inlinedAttribute
		ifTrue: [ desc
				isXmlChildAttribute: true;
				xmlAttributeName: aType second ].
	aType first = #inlinedElement
		ifTrue: [ desc isXmlInlineElement: true ].
	aType first = #attribute
		ifTrue: [ desc isXmlAttribute: true ].
	^ desc