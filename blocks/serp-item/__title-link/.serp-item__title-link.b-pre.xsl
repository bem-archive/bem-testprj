<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bb="bem-b" xmlns:tb="bem-b:template:block" xmlns:te="bem-b:template:elem" xmlns:tm="bem-b:template:mod" xmlns:mode="bem-b:template:mode" xmlns:b="bem-b:block" xmlns:e="bem-b:elem" xmlns:m="bem-b:mod" xmlns:mix="bem-b:mix" xmlns:d-xsl="bem-b:xsl:dynamic" xmlns:exslt="http://exslt.org/common" xmlns:d2-xsl="bem-b:xsl:dynamic-2" version="1.0" exclude-result-prefixes="bb tb te tm mode b e m mix d-xsl tb te tm d2-xsl exslt" extension-element-prefixes="bb exslt" exslt:bla="bla" d2-xsl:bla="bla" tb:bla="bla" te:bla="bla" tm:bla="bla">
  <xsl:template match="e:title-link[@b='serp-item' or (not(@b) and ancestor::b:serp-item)]" mode="bb:tag">a</xsl:template>
  <xsl:template match="e:title-link[@b='serp-item' or (not(@b) and ancestor::b:serp-item)]" mode="bb:content">
    <xsl:attribute name="target">_blank</xsl:attribute>
    <xsl:variable name="var-id35800885-tmp">
      <xsl:apply-templates select="@url"/>
    </xsl:variable>
    <xsl:variable name="var-id35800885-nodes" select="exslt:node-set($var-id35800885-tmp)"/>
    <xsl:choose>
      <xsl:when test="&#10;                    $var-id35800885-nodes//d-xsl:* |&#10;                    $var-id35800885-nodes//d2-xsl:*&#10;                ">
        <d-xsl:attribute name="href">
          <xsl:copy-of select="$var-id35800885-nodes"/>
        </d-xsl:attribute>
      </xsl:when>
      <xsl:otherwise>
        <xsl:attribute name="href">
          <xsl:copy-of select="$var-id35800885-nodes"/>
        </xsl:attribute>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates/>
  </xsl:template>
</xsl:stylesheet>
