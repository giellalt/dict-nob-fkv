<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--
xsltproc fkvnob.xsl fkvnob.xml > ../bin/fkvnob.html
.html
-->

<xsl:output method="html"/>

<xsl:template match="rootdict">
<html>
 <head><meta charset="UTF-8"/>
 </head>
 <body>
  <xsl:apply-templates/>
 </body>
</html>
</xsl:template>

<xsl:template match="entry">
  <xsl:apply-templates/>
 <br/>
</xsl:template>

<xsl:template match="lemma">
 <b>
  <xsl:apply-templates/>
 </b>
</xsl:template>

<!--
<xsl:template match="decl">
 <sup>
  <xsl:apply-templates/>
 </sup>
</xsl:template>
-->

<xsl:template match="mgr">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="restrict">
  <xsl:text>(</xsl:text>
  <xsl:apply-templates/>
  <xsl:text>)</xsl:text>
</xsl:template>

<xsl:template match="trgr">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="trans">
  <xsl:apply-templates/>
</xsl:template>

<!--
<xsl:template match="l2gramm">
 <sup>
  <xsl:apply-templates/>
 </sup>
</xsl:template>
-->

<xsl:template match="stem">
  <xsl:text>(</xsl:text>
 <i> <xsl:apply-templates/></i>
  <xsl:text>)</xsl:text>
</xsl:template>

<xsl:template match="exgr">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="ex">
  <i><b><small>
   <xsl:apply-templates/>
 </small></b></i>
</xsl:template>

<xsl:template match="extr">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="syngr">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="syn">
  <small>
  syn: <i><xsl:apply-templates/></i>
  </small>
</xsl:template>

</xsl:stylesheet>
