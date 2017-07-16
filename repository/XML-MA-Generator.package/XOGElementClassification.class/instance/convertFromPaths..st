utility
convertFromPaths: aDictionary
	^ (aDictionary associations
		collect: [ :pair | ('/' , (pair key joinUsing: $/)) -> pair value ]) asOrderedDictionary