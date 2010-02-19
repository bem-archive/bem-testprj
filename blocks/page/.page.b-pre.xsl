<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bb="bem-b" xmlns:tb="bem-b:template:block" xmlns:te="bem-b:template:elem" xmlns:tm="bem-b:template:mod" xmlns:mode="bem-b:template:mode" xmlns:b="bem-b:block" xmlns:e="bem-b:elem" xmlns:m="bem-b:mod" xmlns:mix="bem-b:mix" xmlns:d-xsl="bem-b:xsl:dynamic" xmlns:exslt="http://exslt.org/common" xmlns:d2-xsl="bem-b:xsl:dynamic-2" version="1.0" exclude-result-prefixes="bb tb te tm mode b e m mix d-xsl tb te tm d2-xsl exslt" exslt:bla="bla" d2-xsl:bla="bla" tb:bla="bla" te:bla="bla" tm:bla="bla">
  <xsl:template match="b:page" mode="bb:content">
    <b:html-page>
      <e:head b="page">
        <e:css b="page">bla</e:css>
        <e:js b="page">bla</e:js>
      </e:head>
      <xsl:apply-templates/>
    </b:html-page>
  </xsl:template>
</xsl:stylesheet>
