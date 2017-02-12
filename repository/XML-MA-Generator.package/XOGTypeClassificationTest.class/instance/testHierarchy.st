tests - classification
testHierarchy
	| hierarchy |
	hierarchy := classification hierarchyFor: self sampleDocument.
	self
		assert: hierarchy
		equals:
			{'/complex'
				->
					{'list' -> #(list item).
					'inlinedAttr' -> #(inlinedAttribute 'value').
					'inlinedElement' -> #(inlinedElement)} asOrderedCollection.
			'/complex/list' -> nil.
			'/complex/list/item' -> {'name' -> #(attribute)} asOrderedCollection.
			'/complex/inlinedAttr' -> nil.
			'/complex/inlinedElement' -> nil} asOrderedDictionary