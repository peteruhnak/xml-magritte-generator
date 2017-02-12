I infer basic types of values (String, Boolean, Integer, Float).

Feed me XML document, I will exhaust types in a XPath-based dictionary.
(i.e. keys are xpath to the element or attribute with the type).

If multiple values with same XPath have different values, then the priority is:
* Float > Integer
* String > anything
