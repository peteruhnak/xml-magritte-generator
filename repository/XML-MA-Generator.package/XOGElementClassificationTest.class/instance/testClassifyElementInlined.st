tests - classification
testClassifyElementInlined
	self
		assert: (classification classifyElement: #(complex inlinedElement) withTypes: types andValues: valueTypes)
		equals: nil