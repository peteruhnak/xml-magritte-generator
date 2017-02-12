example
example
	| s dom gen p |
	s := '<parent>
    <children>
        <child name="first" />
        <child name="second" />
    </children>
    <inlinedAttribute value="false" />
</parent>'.
	dom := XMLDOMParser parse: s.
	gen := XOGStructureGenerator new.
	gen classPrefix: 'XXX'.
	gen packageName: 'Example-Generation'.
	gen processDocument: dom.
	gen rbModel changes changes.

	"
(ChangesBrowser changes: gen rbModel changes changes) open.
"
	p := XXXParent new magritteDescription fromXml: s.
	p magritteDescription toXmlDocument: p