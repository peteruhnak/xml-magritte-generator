retrieving
classifyElement: anElementPath withTypes: types andValues: valueTypes
	| type classification |
	type := types at: anElementPath.
	type isList | type isInlined
		ifTrue: [ ^ nil ].
	classification := OrderedCollection new.
	(self attributesOf: anElementPath in: valueTypes)
		do: [ :pair | 
			classification
				add: (pair key last copyUpTo: $[) -> (Array with: #attribute with: pair value) ].
	(self childrenOf: anElementPath in: valueTypes)
		do: [ :pair | 
			| childPath childType childName |
			childPath := pair key.
			childName := childPath last.
			childType := types at: childPath.
			childType isList
				ifTrue: [ classification add: childName -> (Array with: #list with: childType childName) ].
			childType isInlined
				ifTrue: [ | childAttrs |
					childAttrs := self attributesOf: childPath in: valueTypes.
					childAttrs
						ifEmpty: [ classification
								add: childName -> (Array with: #inlinedElement with: (valueTypes at: childPath)) ]
						ifNotEmpty: [ classification
								add:
									childName
										->
											(Array
												with: #inlinedAttribute
												with: (childAttrs first key last copyUpTo: $[)
												with: (valueTypes at: childAttrs first key)) ] ].
			childType isComplex
				ifTrue: [ classification add: childName -> #(complex) ] ].
	^ classification