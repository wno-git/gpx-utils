<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/gpx">
        <gpx version="1.0"
             xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
             xmlns="http://www.topografix.com/GPX/1/0"
             xsi:schemaLocation="http://www.topografix.com/GPX/1/0 http://www.topografix.com/GPX/1/0/gpx.xsd">
            <xsl:apply-templates select="trk"/>
        </gpx>
    </xsl:template>
    <xsl:template match="trk">
        
    </xsl:template>
</xsl:stylesheet>
