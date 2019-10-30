<?xml version="1.0" encoding ="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/collection">
<html>
<body>
    <xsl:for-each select="view">
        <xsl:value-of select="viewname" /><br /> 
        <xsl:for-each select="clippingpoint">
            <xsl:value-of select="X" /><br /> 
            <xsl:value-of select="Y" /><br /> 
            <xsl:value-of select="Z" /><br /> <br />
        </xsl:for-each>
    </xsl:for-each>
</body>
</html>


</xsl:template>


</xsl:stylesheet>
