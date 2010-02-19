<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:x="http://www.yandex.ru/xscript" xmlns:b="b" xmlns:d-xsl="b:xsl" version="1.0" extension-element-prefixes="x" exclude-result-prefixes="b d-xsl">
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'number']" mode="b:node-name">b</xsl:template>
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'number']" mode="b:content">
    <div class="b-round-corn" onclick="return {{'round-corn':{{}}}}">
      <xsl:value-of select="."/>
      <xsl:text>.</xsl:text>
    </div>
  </xsl:template>
</xsl:stylesheet>
