tests - retrieving
testRetrieveAttributes
	self
		assert: (classification attributesOf: #(complex list item) in: valueTypes)
		equals: {#(complex list item 'name[@name]') -> #String}