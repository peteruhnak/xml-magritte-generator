printing
cascade: aPair on: aStream
	| key value |
	key := aPair key.
	value := aPair value.
	aStream
		tab;
		tab;
		<< key;
		<< ': '.
	value storeOn: aStream.
	aStream
		<< ';';
		cr