<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/Event">
  <html>
  <body>
    <h2><xsl:value-of select="EventName"/></h2> 
    <xsl:for-each select="Race">
      <table border="1">
        <caption>
          <xsl:value-of select="RaceNumber"/><br />
          <xsl:value-of select="RaceDistance"/><br />
          <xsl:if test="RaceComment"><xsl:value-of select="RaceComment"/><br /></xsl:if>
        </caption>
        <tr bgcolor="#9acd32">
          <th align="center">Horse Name</th> 
          <th align="center">Status</th> 
          <th align="center" colspan="2">Teamster</th>
          <th align="center">Horse Comment</th>
        </tr>
        <xsl:for-each select="Horse">
          <tr>
            <td><xsl:value-of select="HorseName"/></td>
            <td><xsl:value-of select="@status"/></td>
            <td><xsl:value-of select="Teamster/TeamsterName"/></td>
            <td><xsl:if test="Teamster/TeamsterComment"><xsl:value-of select="Teamster/TeamsterComment"/></xsl:if></td>
            <td><xsl:if test="HorseComment"><xsl:value-of select="HorseComment"/></xsl:if></td>
          </tr> 
        </xsl:for-each>
      </table>
      <br />
    </xsl:for-each>
    

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>