<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text"/>

  <xsl:template match="/" xmlns:atom="http://www.w3.org/2005/Atom">
    <xsl:for-each select="/atom:feed/atom:entry/atom:link">
      <xsl:if test="@rel='enclosure'">
	<xsl:value-of select="@href"/><xsl:text>&#10;</xsl:text>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
