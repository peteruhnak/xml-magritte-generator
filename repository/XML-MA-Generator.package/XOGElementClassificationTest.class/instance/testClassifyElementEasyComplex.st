tests
testClassifyElementEasyComplex
	self
		assert:
			(classification
				classifyElement: #(complex list item)
				withTypes: types
				andValues: valueTypes) asArray
		equals: {'name' -> #(attribute String)}