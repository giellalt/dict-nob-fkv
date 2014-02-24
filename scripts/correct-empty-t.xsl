<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="t[.=''][following-sibling::stem]">
  <t pos="{./@pos}">
    <xsl:value-of select="following-sibling::stem[1]"/>
  </t>
</xsl:template>

<xsl:template match="xg[./x=''][./xt/text()][preceding-sibling::t[.='']]">
  <stem>
    <xsl:value-of select="xt/text()"/>
  </stem>
</xsl:template>

<xsl:template match="stem[1][preceding-sibling::t[.='']]"/>

<xsl:template match="@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
</xsl:template>

</xsl:stylesheet>
