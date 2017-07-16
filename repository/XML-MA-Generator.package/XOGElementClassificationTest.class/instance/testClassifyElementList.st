tests - classification
testClassifyElementList
	self
		assert: (classification classifyElement: #(complex list) withTypes: types andValues: valueTypes)
		equals: nil