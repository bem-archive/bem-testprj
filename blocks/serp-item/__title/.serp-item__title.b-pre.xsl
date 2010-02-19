<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:x="http://www.yandex.ru/xscript" xmlns:b="b" xmlns:d-xsl="b:xsl" xmlns:exslt="http://exslt.org/common" xmlns:d2-xsl="b:xsl-2" version="1.0" extension-element-prefixes="x exslt" exclude-result-prefixes="b d-xsl d2-xsl" exslt:bla="bla" d2-xsl:bla="bla">
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'title']" mode="b:node-name">h3</xsl:template>
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'title']" mode="b:content">
    <b:elem name="title-link" block="serp-item">
      <b:data>
        <url>
          <d-xsl:value-of select="substring-before(b:data/@url, '/')"/>
        </url>
      </b:data>
      <xsl:apply-templates/>
    </b:elem>
  </xsl:template>
</xsl:stylesheet>
