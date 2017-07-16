tests - retrieving
testRetrieveChildren
	| children |
	children := classification childrenOf: #(complex list) in: valueTypes.
	self assert: children equals: {#(complex list item) -> #Empty}