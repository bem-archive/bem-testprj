<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:x="http://www.yandex.ru/xscript" xmlns:b="b" xmlns:d-xsl="b:xsl" version="1.0" extension-element-prefixes="x" exclude-result-prefixes="b d-xsl">
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'title']" mode="b:node-name">h3</xsl:template>
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'title']" mode="b:content">
    <a class="b-serp-item__title-link" target="_blank">
      <xsl:attribute name="href">
        <xsl:value-of select="substring-before(b:data/@url, '/')"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </a>
  </xsl:template>
</xsl:stylesheet>
