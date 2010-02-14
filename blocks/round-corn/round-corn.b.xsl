<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:x="http://www.yandex.ru/xscript"
    xmlns:b="b"
    xmlns:d-xsl="b:xsl"
    xmlns:html="b:html"
    extension-element-prefixes="x"
    exclude-result-prefixes="b d-xsl html"
    >

    <xsl:template match="b:block[@name = 'round-corn']" mode="b:content">
        <div><div><div>
            <html:table>
                <xsl:apply-templates/>
            </html:table>
        </div></div></div>
    </xsl:template>

    <xsl:template match="b:block[@name = 'round-corn']" mode="b:js-params-content">
        <xsl:text>'bla':{'blabla':1}</xsl:text>
    </xsl:template>

</xsl:stylesheet>
