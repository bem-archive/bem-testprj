<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:x="http://www.yandex.ru/xscript" xmlns:b="b" xmlns:d-xsl="b:xsl" xmlns:exslt="http://exslt.org/common" xmlns:d2-xsl="b:xsl-2" version="1.0" extension-element-prefixes="x exslt" exclude-result-prefixes="b d-xsl d2-xsl" exslt:bla="bla" d2-xsl:bla="bla">
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'title-link']" mode="b:node-name">a</xsl:template>
  <xsl:template match="b:elem[@block = 'serp-item' and @name = 'title-link']" mode="b:content">
    <xsl:attribute name="target">_blank</xsl:attribute>
    <xsl:variable name="var-id35800852-tmp">
      <xsl:apply-templates select="b:data/url/node()"/>
    </xsl:variable>
    <xsl:variable name="var-id35800852-nodes" select="exslt:node-set($var-id35800852-tmp)"/>
    <xsl:choose>
      <xsl:when test="&#10;                    $var-id35800852-nodes//d-xsl:* |&#10;                    $var-id35800852-nodes//d2-xsl:*&#10;                ">
        <d-xsl:attribute name="href">
          <xsl:copy-of select="$var-id35800852-nodes"/>
        </d-xsl:attribute>
      </xsl:when>
      <xsl:otherwise>
        <xsl:attribute name="href">
          <xsl:copy-of select="$var-id35800852-nodes"/>
        </xsl:attribute>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates/>
  </xsl:template>
</xsl:stylesheet>
