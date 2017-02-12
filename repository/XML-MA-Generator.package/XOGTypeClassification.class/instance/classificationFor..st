classification
classificationFor: aDocument
	| types |
	types := OrderedDictionary new.
	aDocument allElements
		do: [ :each | 
			| path type |
			path := self xPathFor: each.
			type := self classify: each.
			types at: path ifAbsentPut: [ type ].
			types at: path put: (self chooseBetween: (types at: path) and: type) ].
	^ types