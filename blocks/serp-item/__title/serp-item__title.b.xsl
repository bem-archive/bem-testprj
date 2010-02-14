<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:x="http://www.yandex.ru/xscript"
    xmlns:b="b"
    xmlns:d-xsl="b:xsl"
    extension-element-prefixes="x"
    exclude-result-prefixes="b d-xsl"
    >

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
