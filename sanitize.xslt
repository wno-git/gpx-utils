<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.topografix.com/GPX/1/0"
    xmlns:gpx="http://www.topografix.com/GPX/1/0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.topografix.com/GPX/1/0/gpx.xsd"
    exclude-result-prefixes="gpx">
    <xsl:output indent="yes"/>
    <xsl:template match="/">
        <gpx version="1.0" creator="gpx-sanitize">
            <xsl:apply-templates/>
        </gpx>
    </xsl:template>
    <xsl:template match="gpx:trk">
        <trk>
            <xsl:apply-templates/>
        </trk>
    </xsl:template>
    <xsl:template match="gpx:trkseg">
        <trkseg>
            <xsl:apply-templates/>
        </trkseg>
    </xsl:template>
    <xsl:template match="gpx:trkpt">
        <trkpt lat="{@lat}" lon="{@lon}">
            <xsl:apply-templates/>
        </trkpt>
    </xsl:template>
    <xsl:template match="gpx:ele">
        <ele>
            <xsl:value-of select="."/>
        </ele>
    </xsl:template>
    <!-- disable implicit rule that copies text -->
    <xsl:template match="text()|@*"/>
</xsl:stylesheet>
