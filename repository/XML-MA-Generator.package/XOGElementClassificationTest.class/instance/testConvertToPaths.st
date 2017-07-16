tests - utility
testConvertToPaths
	self
		assert:
			(classification
				convertToPaths:
					{'/a' -> nil.
					'/a/b' -> nil} asOrderedDictionary)
		equals:
			{#(a) -> nil.
			#(a b) -> nil} asOrderedDictionary