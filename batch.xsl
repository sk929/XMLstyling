<?xml version="1.0" encoding ="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/product3Dset">
<html>

<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  background-color: #f3f3f3;
}

td {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
</style>
</head>

<body>
    <xsl:for-each select="userzone">
	
        <h2><xsl:value-of select="zoneName" /></h2> 
		
        <table>

        <tr>
            <th>Clipping Point</th>
            <th>X</th>
            <th>Y</th>
            <th>Z</th>
        </tr>


        <xsl:for-each select="clippingPoint">
        <tr>
            <td> <xsl:value-of select="cpname" /> </td>
            <td> <xsl:value-of select="X" /> </td>
            <td> <xsl:value-of select="Y" /> </td>
            <td> <xsl:value-of select="Z" /> </td>
        </tr>
        </xsl:for-each>
		</table>
		
        <br /> <br />

        <table>
            <th>Plane</th>
            <td><xsl:value-of select="plane" /> </td>
		</table>

        <table>

        <br /> <br />
        
        <tr>
            <th>Annotation Name</th>
            <th>Anchor point</th>
        </tr>

        
		<xsl:for-each select="annotation">
        <tr>
            <td><xsl:value-of select="annotationName" /> </td> 
            <td><xsl:value-of select="anchorPoint" /> </td>
        </tr>
        </xsl:for-each>

        </table>

        <br /> <br />
		
    </xsl:for-each>
</body>
</html>


</xsl:template>


</xsl:stylesheet>
