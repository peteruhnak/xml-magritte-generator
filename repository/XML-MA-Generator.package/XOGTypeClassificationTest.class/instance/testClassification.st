tests - classification
testClassification
	| types |
	types := classification classificationFor: self sampleDocument.
	self
		assert: types
		equals:
			{'/complex' -> XOGTypeClassification complex.
			'/complex/list' -> XOGTypeClassification list.
			'/complex/list/item' -> XOGTypeClassification complex.
			'/complex/inlinedAttr' -> XOGTypeClassification inlined.
			'/complex/inlinedElement' -> XOGTypeClassification inlined} asOrderedDictionary