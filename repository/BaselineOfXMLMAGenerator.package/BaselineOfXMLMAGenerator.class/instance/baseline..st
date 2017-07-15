baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'XMLParser'
				with: [ spec
						className: #ConfigurationOfXMLParser;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main/' ].
			spec
				project: 'XPath'
				with: [ spec
						className: #ConfigurationOfXPath;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XPath/main/' ].
			spec
				project: 'Magritte'
				with: [ spec
						className: #ConfigurationOfMagritte3;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main/' ].
			spec
				baseline: 'MagritteXMLBindings'
				with: [ spec repository: 'github://peteruhnak/XML-Bindings:master/repository' ].
			spec
				baseline: 'ChangesBuilder'
				with: [ spec repository: 'github://peteruhnak/pharo-changes-builder/repository' ].
			spec
				package: 'XML-MA-Generator'
				with:
					[ spec requires: #('XMLParser' 'XPath' 'Magritte' 'MagritteXMLBindings' 'ChangesBuilder') ] ]