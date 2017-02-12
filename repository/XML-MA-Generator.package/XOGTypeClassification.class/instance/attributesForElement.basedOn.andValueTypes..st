classification
attributesForElement: anElement basedOn: classTypes andValueTypes: valueTypes
	| type attributes |
	type := classTypes at: (self xPathFor: anElement).
	type isList
		ifTrue: [ ^ nil ].
	type isInlined
		ifTrue: [ ^ nil ].
	attributes := anElement attributeNodes asOrderedCollection
		collect:
			[ :each | each name -> (Array with: #attribute with: (valueTypes at: (self xPathFor: each))) ].
	anElement elements
		do: [ :child | 
			| cType |
			cType := classTypes at: (self xPathFor: child).
			cType isList
				ifTrue: [ attributes add: child name -> (Array with: #list with: cType childName) ].
			cType isInlined
				ifTrue: [ child hasAttributes
						ifTrue: [ attributes
								add:
									child name
										->
											(Array
												with: #inlinedAttribute
												with: child attributes keys first
												with: (valueTypes at: (self xPathFor: child attributeNodes first))) ]
						ifFalse: [ attributes
								add: child name -> (Array with: #inlinedElement with: (valueTypes at: (self xPathFor: child))) ] ].
			cType isComplex
				ifTrue: [ attributes add: child name -> #(complex) ] ].
	^ attributes