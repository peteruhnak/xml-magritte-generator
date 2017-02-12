xml processing
processDocument: aDocument
	self typeHierarchy: (XOGTypeClassification new hierarchyFor: aDocument).
	aDocument allElements do: [ :each | self processElement: each ]