tests
testClassifyAll
	self
		assert:
			(classification
				classifyTypes: (classification convertFromPaths: types)
				andValues: (classification convertFromPaths: valueTypes))
		equals:
			{'/complex'
				->
					{'inlinedAttr' -> #(inlinedAttribute 'value' String).
					'inlinedElement' -> #(inlinedElement String).
					'list' -> #(list item)} asOrderedCollection.
			'/complex/list' -> nil.
			'/complex/list/item' -> {'name' -> #(attribute String)} asOrderedCollection.
			'/complex/inlinedAttr' -> nil.
			'/complex/inlinedElement' -> nil} asOrderedDictionary