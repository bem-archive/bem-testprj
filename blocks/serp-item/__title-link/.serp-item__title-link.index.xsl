<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:x="http://www.yandex.ru/xscript" xmlns:b="b" xmlns:d-xsl="b:xsl" version="1.0" extension-element-prefixes="x" exclude-result-prefixes="b d-xsl">
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'title-link']" mode="b:node-name">a</xsl:template>
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'title-link']" mode="b:content">
    <xsl:attribute name="target">_blank</xsl:attribute>
    <xsl:attribute name="href">
      <xsl:apply-templates select="b:data/url/node()"/>
    </xsl:attribute>
    <xsl:apply-templates/>
  </xsl:template>
</xsl:stylesheet>
