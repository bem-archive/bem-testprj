<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bb="bem-b" xmlns:tb="bem-b:template:block" xmlns:te="bem-b:template:elem" xmlns:tm="bem-b:template:mod" xmlns:mode="bem-b:template:mode" xmlns:b="bem-b:block" xmlns:e="bem-b:elem" xmlns:m="bem-b:mod" xmlns:mix="bem-b:mix" xmlns:d-xsl="bem-b:xsl:dynamic" xmlns:exslt="http://exslt.org/common" xmlns:d2-xsl="bem-b:xsl:dynamic-2" version="1.0" exclude-result-prefixes="bb tb te tm mode b e m mix d-xsl tb te tm d2-xsl exslt" extension-element-prefixes="bb exslt" exslt:bla="bla" d2-xsl:bla="bla" tb:bla="bla" te:bla="bla" tm:bla="bla">
  <xsl:template match="e:number[@b='serp-item' or (not(@b) and ancestor::b:serp-item)]" mode="bb:tag">b</xsl:template>
  <xsl:template match="e:number[@b='serp-item' or (not(@b) and ancestor::b:serp-item)]" mode="bb:content">
    <xsl:value-of select="."/>
    <xsl:text>.</xsl:text>
  </xsl:template>
</xsl:stylesheet>
