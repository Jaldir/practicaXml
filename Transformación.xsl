<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:p="http://www.fw.org/prac1">
	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="node()">
  		<xsl:copy>
   			<xsl:apply-templates select="node()"/>
  		</xsl:copy>
 	</xsl:template>

	<xsl:template match="/p:museum/staffinfo/employee">
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
    
    <xsl:template match="/p:museum/activities/event/datetime">
	    <placeandtime>
	        <place> <xsl:value-of select="../place"/> </place>
	        <datetime>
	        	<xsl:apply-templates/>
	        </datetime>
	      </placeandtime>
    </xsl:template>
    
    <xsl:template match="/p:museum/activities/event/place">
    </xsl:template>
    
    <xsl:template match="/p:museum/services/service">
    	<service>
    		<xsl:attribute name="name">
    			<xsl:value-of select="./name"/>
    		</xsl:attribute>
    		<xsl:apply-templates/>
    	</service>
    </xsl:template>
    
</xsl:stylesheet>
