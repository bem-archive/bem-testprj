<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:bb="bem-b"
    xmlns:tb="bem-b:template:block"
    xmlns:te="bem-b:template:elem"
    xmlns:tm="bem-b:template:mod"
    xmlns:mode="bem-b:template:mode"
    xmlns:b="bem-b:block"
    xmlns:e="bem-b:elem"
    xmlns:m="bem-b:mod"
    xmlns:mix="bem-b:mix"
    xmlns:d-xsl="bem-b:xsl:dynamic"
    exclude-result-prefixes="bb d-xsl"
    >

    <tb:prj-page>

        <mode:default>
            <b:page>
                <b:html-page>
                    <e:head b="html-page">
                        <e:css b="page">
                            <d-xsl:apply-templates select="@name"/>
                        </e:css>
                        <e:js b="page">
                            <d-xsl:apply-templates select="@name"/>
                        </e:js>
                    </e:head>
                    <b:layout>
                        <e:column b="layout">
                            <b:mod name="position" val="left"/>
                            <xsl:if test="not(e:left[@b = 'prj-page'])">
                                <e:left b="prj-page"/>
                            </xsl:if>
                            <xsl:apply-templates select="e:left[@b = 'prj-page']'"/>
                        </e:column>
                    </b:layout>
                </b:html-page>
            </b:page>
        </mode:default>

        <tm:mod1 val="val1">
            <mode:default>
                <b>
                    <xsl:apply-templates/>
                </b>
            </mode:default>
            <mode:tag>i</mode:tag>
        </tm:mod1>

        <te:myelem>
            <mode:default>
                <b>
                    <xsl:apply-templates/>
                </b>
            </mode:default>
        </te:myelem>

    </tb:prj-page>

</xsl:stylesheet>
