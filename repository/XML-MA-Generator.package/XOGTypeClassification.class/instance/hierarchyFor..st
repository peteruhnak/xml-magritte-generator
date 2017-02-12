classification
hierarchyFor: aDocument
	| classification hierarchy valueTypes |
	classification := self classificationFor: aDocument.
	valueTypes := XOGValueTypeInference new inferDocument: aDocument.
	hierarchy := OrderedDictionary new.
	aDocument allElements
		do: [ :each | 
			hierarchy
				at: (self xPathFor: each)
				put: (self attributesForElement: each basedOn: classification andValueTypes: valueTypes) ].
	^ hierarchy