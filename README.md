# XSLT Stylesheets

- **versesLines.xsl**: it extracts all verses lines `<l>`, excluding `<sic>` and `<orig>`. Change the template to exclude also a particular `@wit`. Input: XML-TEI. Output: TXT

- **tei_add_lineNumber.xsl**:  it adds the line number of each verse as an attribute `@n`, taking into account the stichomythia encoded with `@part`. Input: XML-TEI. Output: XML-TEI.