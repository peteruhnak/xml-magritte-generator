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
				package: 'Magritte-XMLBinding'
				with: [ spec
						repository: 'github://magritte-metamodel/XML-Bindings:master/repository';
						requires: #('Magritte') ].
			spec
				package: 'XML-MA-Generator'
				with: [ spec requires: #('XMLParser' 'XPath' 'Magritte' 'Magritte-XMLBinding') ] ]