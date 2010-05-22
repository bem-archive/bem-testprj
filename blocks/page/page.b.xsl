<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:bb="bem-b"
    xmlns:tb="bem-b:template:block" xmlns:te="bem-b:template:elem" xmlns:tm="bem-b:template:mod" xmlns:mode="bem-b:template:mode"
    xmlns:b="bem-b:block" xmlns:e="bem-b:elem" xmlns:m="bem-b:mod" xmlns:mix="bem-b:mix"
    xmlns:d-xsl="bem-b:xsl:dynamic"
    exclude-result-prefixes="bb tb te tm mode b e m mix d-xsl">

    <tb:page>
        <mode:content>
            <b:html-page xsl-inline="yes">
                <e:head b="html-page" xsl-inline="yes">
                    <e:css b="page">bla</e:css>
                    <e:css b="page" xsl-inline="yes">
                        <xsl:value-of select="@bla"/>
                    </e:css>
                    <e:js b="page">bla</e:js>
                    <e:js b="page" xsl-inline="yes">
                        <xsl:value-of select="@bla"/>
                    </e:js>
                </e:head>
                <xsl:apply-templates/>
            </b:html-page>
        </mode:content>
    </tb:page>

</xsl:stylesheet>
