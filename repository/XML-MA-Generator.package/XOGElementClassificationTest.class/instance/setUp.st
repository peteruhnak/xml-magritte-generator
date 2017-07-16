running
setUp
	super setUp.
	classification := XOGElementClassification new.
	types := {#(complex) -> XOGTypeClassification complex.
	#(complex list) -> (XOGTypeClassification list childName: 'item').
	#(complex list item) -> XOGTypeClassification complex.
	#(complex inlinedAttr) -> XOGTypeClassification inlined.
	#(complex inlinedElement) -> XOGTypeClassification inlined} asOrderedDictionary.
	valueTypes := {#(complex) -> #Empty.
	#(complex inlinedAttr) -> #Empty.
	#(complex inlinedAttr 'value[@value]') -> #String.
	#(complex inlinedElement) -> #String.
	#(complex list) -> #Empty.
	#(complex list item) -> #Empty.
	#(complex list item 'name[@name]') -> #String} asOrderedDictionary