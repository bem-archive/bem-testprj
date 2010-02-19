<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bb="bem-b" xmlns:tb="bem-b:template:block" xmlns:te="bem-b:template:elem" xmlns:tm="bem-b:template:mod" xmlns:mode="bem-b:template:mode" xmlns:b="bem-b:block" xmlns:e="bem-b:elem" xmlns:m="bem-b:mod" xmlns:mix="bem-b:mix" xmlns:d-xsl="bem-b:xsl:dynamic" version="1.0" exclude-result-prefixes="bb tb te tm mode b e m mix d-xsl">
  <xsl:template match="b:page" mode="bb:content">
    <html id="nojs">
      <div class="bb-page__head">
        <xsl:comment>[if gt IE 7]&gt;&lt;!</xsl:comment>
        <link rel="stylesheet" href="bla.css"/>
        <xsl:comment>&lt;![endif]</xsl:comment>
        <xsl:comment>[if lt IE 8]&gt;&lt;link rel=stylesheet href="bla.ie.css"&gt;&lt;![endif]</xsl:comment>
        <script type="text/javascript" charset="utf-8" src="bla.js"/>
      </div>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
