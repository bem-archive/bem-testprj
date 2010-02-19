<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bb="bem-b" xmlns:tb="bem-b:template:block" xmlns:te="bem-b:template:elem" xmlns:tm="bem-b:template:mod" xmlns:mode="bem-b:template:mode" xmlns:b="bem-b:block" xmlns:e="bem-b:elem" xmlns:m="bem-b:mod" xmlns:mix="bem-b:mix" xmlns:d-xsl="bem-b:xsl:dynamic" version="1.0" exclude-result-prefixes="bb tb te tm mode b e m mix d-xsl" extension-element-prefixes="bb">
  <xsl:template match="e:number[@b='serp-item' or (not(@b) and ancestor::b:serp-item)]" mode="bb:tag">b</xsl:template>
  <xsl:template match="e:number[@b='serp-item' or (not(@b) and ancestor::b:serp-item)]" mode="bb:content">
    <xsl:value-of select="."/>
    <xsl:text>.</xsl:text>
  </xsl:template>
</xsl:stylesheet>
