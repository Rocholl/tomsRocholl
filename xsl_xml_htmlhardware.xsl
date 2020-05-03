<?xml version="1.0" encoding="UTF-8"?>
<!--
    Document   : xsl_xml_htmlhardware.xsl
    Created on : 3 de mayo de 2020, 14:47
    Author     : carlos
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>xsl_xml_htmlhardware.xsl</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
            </head>
            <body>
               
                <div class="introduction">
                    <xsl:for-each select="/root/introduction">
                        <h1>
                            <xsl:value-of select="title"/>
                        </h1> 
                        <p>                    
                            <xsl:value-of select="description"/>
                        </p>
                        <a> 
                            <xsl:value-of select="link"/>
                        </a>
                    </xsl:for-each>

                </div>
             <div class="notices">
                    <xsl:for-each select="/root/notices/notice">
                        <h1>
                            <xsl:value-of select="title"/>
                        </h1> 
                        <p>                    
                            <xsl:value-of select="description"/>
                            
                            
                        </p>
                       
                        <a> 
                            <xsl:value-of select="link"/>
                        </a>
                         <p> <xsl:value-of select="author"/></p>
                    </xsl:for-each>

                </div>
                
            
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
