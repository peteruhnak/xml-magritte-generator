xml processing
processDocument: aDocument
	| types valueTypes classification |
	types := XOGTypeClassification new classificationFor: aDocument.
	valueTypes := XOGValueTypeInference new inferDocument: aDocument.
	classification := XOGElementClassification new classifyTypes: types andValues: valueTypes.
	self typeHierarchy: classification.
	aDocument allElements do: [ :each | self processElement: each ]