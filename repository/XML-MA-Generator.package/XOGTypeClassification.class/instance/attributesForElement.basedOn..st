classification
attributesForElement: anElement basedOn: classTypes
	| type attributes |
	type := classTypes at: (self xPathFor: anElement).
	type isList
		ifTrue: [ ^ nil ].
	type isInlined
		ifTrue: [ ^ nil ].
	attributes := anElement attributes keys asOrderedCollection
		collect: [ :each | each -> #(attribute) ].
	anElement elements
		do: [ :child | 
			| cType |
			cType := classTypes at: (self xPathFor: child).
			cType isList
				ifTrue: [ attributes add: child name -> (Array with: #list with: cType childName) ].
			cType isInlined
				ifTrue: [ child hasAttributes
						ifTrue: [ attributes
								add: child name -> (Array with: #inlinedAttribute with: child attributes keys first) ]
						ifFalse: [ attributes add: child name -> #(inlinedElement) ] ].
			cType isComplex
				ifTrue: [ attributes add: child name -> #(complex) ] ].
	^ attributes