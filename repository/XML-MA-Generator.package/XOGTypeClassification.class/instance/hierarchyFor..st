classification
hierarchyFor: aDocument
	| types hierarchy |
	types := self classificationFor: aDocument.
	hierarchy := OrderedDictionary new.
	aDocument allElements
		do:
			[ :each | hierarchy at: (self xPathFor: each) put: (self attributesForElement: each basedOn: types) ].
	^ hierarchy