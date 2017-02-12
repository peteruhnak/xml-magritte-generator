as yet unclassified
printOn: aStream
	super printOn: aStream.
	aStream
		<< '(';
		<< name;
		<< ', ';
		<< 'a('.
	instanceVariables do: [ :each | aStream << each ] separatedBy: [ aStream << ',' ].
	aStream
		<< '),';
		<< 'm('.
		aStream << methods size asString.
"	methods keys do: [ :each | aStream << each ] separatedBy: [ aStream << ',' ]."
	aStream << '))'