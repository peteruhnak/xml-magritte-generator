tests - testing
testList
	dom := self @ '<root><list><c/><c/></list></root>'.
	element := (dom / #list) first.
	self assert: (classification classify: element) equals: XOGTypeClassification list