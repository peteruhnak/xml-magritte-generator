printing
asMethodStringOn: aStream
	aStream
		nextPutAll: 'description';
		<< accessor capitalized;
		cr.
	aStream
		tab;
		<< '<magritteDescription>';
		cr.
	aStream
		tab;
		<< '^ ';
		<< type name;
		<< ' new';
		cr.
	self cascade: #accessor -> accessor asSymbol on: aStream.
	self cascade: #label -> label on: aStream.
	self type = MAToManyRelationDescription
		ifTrue: [ aStream
				tab;
				tab;
				<< 'classes: ';
				<< '{ ';
				<< self refClass;
				<< ' }';
				<< ';';
				cr ].
	aStream
		tab;
		tab;
		<< self xmlType;
		<< ';';
		cr.
	isXmlChildAttribute
		ifTrue: [ self cascade: #xmlAttributeName -> xmlAttributeName on: aStream ].
	aStream
		tab;
		tab;
		<< 'yourself'