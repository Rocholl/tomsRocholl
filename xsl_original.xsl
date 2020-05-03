<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : xsl_original.xsl
    Created on : 3 de mayo de 2020, 14:30
    Author     : carlos
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <root>
            <xsl:for-each select="/rss/channel">
                <introduction>
                    <title>
                        <xsl:value-of select="title"/>
                    </title>
                    <link>
                        <xsl:value-of select="link"/>
                    </link>
                    <description>
                        <xsl:value-of select="description"/>
                    </description>
                </introduction>
                <notices>
                    <xsl:for-each select="/rss/channel/item">
                
                        <notice>
                            <title>
                                <xsl:value-of select="title"/>
                            </title>
              
                            <description>
                                <xsl:value-of select="description"/>
                            </description>
                            <link>
                                <xsl:value-of select="link"/>
                            </link>
                            <author>
                                <xsl:value-of select="author"/>
                            </author>
                        </notice>
                    </xsl:for-each>
                </notices>
            </xsl:for-each>
        </root>
    </xsl:template>

</xsl:stylesheet>
