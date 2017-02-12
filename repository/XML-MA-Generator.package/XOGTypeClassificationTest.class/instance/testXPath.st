tests - utility
testXPath
	| els |
	els := self sampleDocument allElements.
	self assert: (classification xPathFor: els first) equals: '/complex'.
	self assert: (classification xPathFor: els second) equals: '/complex/list'.
	self assert: (classification xPathFor: els third) equals: '/complex/list/item'.
	self assert: (classification xPathFor: els fifth) equals: '/complex/inlinedAttr'.
	self assert: (classification xPathFor: els sixth) equals: '/complex/inlinedElement'