tests - utility
testConvertFromPaths
	self
		assert:
			(classification
				convertFromPaths:
					{#(a) -> nil.
					#(a b) -> nil} asOrderedDictionary)
		equals:
			{'/a' -> nil.
			'/a/b' -> nil} asOrderedDictionary