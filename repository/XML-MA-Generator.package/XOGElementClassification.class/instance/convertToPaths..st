utility
convertToPaths: aDictionary
	^ (aDictionary associations
		collect: [ :pair | (pair key allButFirst splitOn: $/) asArray -> pair value ])
		asOrderedDictionary