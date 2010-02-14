<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:x="http://www.yandex.ru/xscript"
    xmlns:d-xsl="b:xsl"
    xmlns:b="b"
    extension-element-prefixes="x"
    exclude-result-prefixes="b d-xsl"
    >

    <xsl:template match="b:block[@name = 'prj-page']">
        <b:block name="page">
            <b:block name="html-page">
                <b:elem name="head" block="html-page">
                    <b:elem name="css" block="page">
                        <d-xsl:apply-templates select="b:data/name"/>
                    </b:elem>
                    <b:elem name="js" block="page">
                        <d-xsl:apply-templates select="b:data/name"/>
                    </b:elem>
                </b:elem>
                <b:block name="layout">
                    <b:elem name="column" block="layout">
                        <b:mod name="position" val="left"/>
                        <xsl:if test="not(b:elem[@block = 'prj-page' and @name = 'left'])">
                            <b:elem name="left" block="prj-page"/>
                        </xsl:if>
                        <xsl:apply-templates select="b:elem[@block = 'prj-page' and @name = 'left']"/>
                    </b:elem>
                    <b:elem block="layout" name="column">
                        <b:mod name="position" val="center"/>
                        <b:elem name="center" block="prj-page">
                            <xsl:apply-templates select="*[not(self::b:elem[@block = 'prj-page' and @name = 'left'])]"/>
                        </b:elem>
                    </b:elem>
                </b:block>
            </b:block>
        </b:block>
    </xsl:template>

    <xsl:template match="b:elem[@block = 'prj-page' and @name = 'left']">
        <b:block name="b1"/>
        <b:elem name="left-b2" block="prj-page"/>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="b:elem[@block = 'prj-page' and @name = 'left-b2']">
        <b:block name="b2"/>
    </xsl:template>

    <xsl:template match="b:elem[@block = 'prj-page' and @name = 'center']">
        <xsl:apply-templates/>
    </xsl:template>

</xsl:stylesheet>
