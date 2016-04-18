<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="1.0">

<xsl:variable name="FULL" select="document('file:///home/basile/Git/Bibliography/full.xml')" />

<xsl:template>
<html>
    <head>
       <meta charset="utf-8"/>
       <link rel="stylesheet" media="screen and (min-width: 400px) and (max-width: 1000024px)" href="./style.css" type="text/css" />
       
        <title>Bibliographie</title>
       
    </head>
    <body>
   	<section>
   	  <xsl:apply-templates select="$FULL"/>
		</section>
    </body>
</html>
</xsl:template>

  <xsl:template match="bibtex:entry">
    <article>
      <h3><xsl:value-of select="bibtex:author"/></h3>
      <p><xsl:apply-templates/></p>
    </article>
  </xsl:template>
</xsl:stylesheet>