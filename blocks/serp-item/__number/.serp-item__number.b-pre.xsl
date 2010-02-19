<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:x="http://www.yandex.ru/xscript" xmlns:b="b" xmlns:d-xsl="b:xsl" xmlns:exslt="http://exslt.org/common" xmlns:d2-xsl="b:xsl-2" version="1.0" extension-element-prefixes="x exslt" exclude-result-prefixes="b d-xsl d2-xsl" exslt:bla="bla" d2-xsl:bla="bla">
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'number']" mode="b:node-name">b</xsl:template>
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'number']" mode="b:content">
    <b:block name="round-corn">
      <xsl:value-of select="."/>
      <xsl:text>.</xsl:text>
    </b:block>
  </xsl:template>
</xsl:stylesheet>
