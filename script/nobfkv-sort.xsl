<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xhtml="http://www.w3.org/1999/xhtml">

  <!-- This is the real sorting routine: -->
  <xsl:import href="../../scripts/gt_dictionary_sort.xsl"/>

  <!-- This is here only to provide correct doctype for the sorted files: -->
  <xsl:output
       doctype-public="-//XMLmind//DTD nobfkv//FI"
       doctype-system="../script/nobfkv.dtd"
       />

</xsl:stylesheet>
