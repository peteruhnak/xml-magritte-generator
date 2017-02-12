classification
classificationFor: aDocument
	| classification |
	classification := OrderedDictionary new.
	aDocument allElements
		do: [ :each | 
			| path type |
			path := self xPathFor: each.
			type := self classify: each.
			classification at: path ifAbsentPut: [ type ].
			classification at: path put: (self chooseBetween: (classification at: path) and: type) ].
	^ classification