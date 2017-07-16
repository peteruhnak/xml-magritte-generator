tests
testClassifyElementComplex
	self
		assert: (classification classifyElement: #(complex) withTypes: types andValues: valueTypes) asArray
		equals:
			{#inlinedAttr -> #(inlinedAttribute 'value' String).
			#inlinedElement -> #(inlinedElement String).
			#list -> #(list item)}