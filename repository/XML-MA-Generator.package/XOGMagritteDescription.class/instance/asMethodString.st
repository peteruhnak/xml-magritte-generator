printing
asMethodString
	^ String streamContents: [ :stream | self asMethodStringOn: stream ]