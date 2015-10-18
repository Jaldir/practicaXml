<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="node()">
  		<xsl:copy>
   			<xsl:apply-templates select="node()"/>
  		</xsl:copy>
 </xsl:template>

	<xsl:template match="//museum/staffinfo/employee">		<!-- No se utiliza /museum/staffinfo por la posibilidad de que en un futuro se quiera añadir un elemento "numero de empleados" o similar -->
	    <employee>
	    	<name> <xsl:value-of select="./personalData/name"/> </name>
	    	<surname> <xsl:value-of select="./personalData/surname"/> </surname>
	    	<telephoneNumber> <xsl:value-of select="./personalData/telephoneNumber"/> </telephoneNumber>
			<office> <xsl:value-of select="./personalData/office"/> </office>
			<email> <xsl:value-of select="./personalData/email"/> </email>
			<department> <xsl:value-of select="./department"/> </department>
			<role> <xsl:value-of select="./role"/> </role>
	    </employee>
    </xsl:template>
</xsl:stylesheet>