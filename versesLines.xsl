<?xml version="1.0" encoding="UTF-8"?>

<!--This stylesheet extracts all verses lines (<l>) with regularized version (<reg>, <corr>) into a txt file -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs" version="2.0">

  <xsl:output method="text" indent="yes"/>

  <xsl:template match="//teiHeader"/>
  <!-- it excludes the element in the output -->

  <xsl:template match="//note"/>
  <!-- it excludes the element in the output -->

  <xsl:template match="//choice/sic"/>
  <!-- it excludes the element in the output -->

  <xsl:template match="//choice/orig"/>
  <!-- it excludes the element in the output -->

  <xsl:template match="//app/rdg[@wit='#wit-1617-O']"/>

  <!-- it excludes the element in the output -->

  <xsl:strip-space elements="*"/>
  <!-- it removes blank spaces between elements -->
  <!-- depending of the beautifying (reforming) code used in the XML file (Atom or oXygen, it may work or not)-->

  <!-- <xsl:template match=" text()"="text()""><xsl:value-of select="normalize-space(.)"/></xsl:template> <!-\- it removes blank spaces between elements AND within elements-\->-->

  <xsl:template match="/">

    <xsl:for-each select="//l">

      <xsl:text>&#10;</xsl:text>
      <!--it adds a line break (linux LF)-->

      <xsl:apply-templates/>

    </xsl:for-each>

  </xsl:template>

</xsl:stylesheet>