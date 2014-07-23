<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <xsl:template match="/">
    <record>
        <datafield tag="245" ind1=" " ind2=" ">
          <subfield code="a"><xsl:value-of select="lom/general/title/string[@language='el']"/></subfield>
        </datafield>

        <datafield tag="500" ind1=" " ind2=" ">
          <subfield code="a"><xsl:value-of select="lom/general/description/string[@language='el']"/></subfield>
        </datafield>

		<xsl:for-each select="lom/general/keyword/string[@language='el']">
		<datafield tag="653" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="."/> </subfield>
		</datafield>
		</xsl:for-each>
		
		<datafield tag="856" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/general/identifier/catalog"/> 
			</subfield>
		</datafield>
		<datafield tag="856" ind1=" " ind2=" ">
			<subfield code="a">	<xsl:value-of select="lom/general/identifier/entry"/>
			</subfield>
		</datafield>

		<datafield tag="044" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/lifeCycle/contribute/entity"/> </subfield>
		</datafield>

		<datafield tag="245" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/lifeCycle/contribute/role/source"/> </subfield>
			<subfield code="a"> <xsl:value-of select="lom/lifeCycle/contribute/role/value"/> </subfield>
		</datafield>

		<datafield tag="033" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/lifeCycle/contribute/date/dateTime"/> </subfield>
		</datafield>

		<datafield tag="856" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/metaMetadata/identifier/catalog"/> 
			</subfield>
		</datafield>
		<datafield tag="856" ind1=" " ind2=" ">
			<subfield code="a">	<xsl:value-of select="lom/metaMetadata/identifier/entry"/>
			</subfield>
		</datafield>

		<datafield tag="044" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/metaMetadata/contribute/entity"/> </subfield>
		</datafield>

		<datafield tag="245" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/metaMetadata/contribute/role/source"/> </subfield>
			<subfield code="a"> <xsl:value-of select="lom/metaMetadata/contribute/role/value"/> </subfield>
		</datafield>

		<datafield tag="033" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/metaMetadata/contribute/date/dateTime"/> </subfield>
		</datafield>

		<datafield tag="856" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/technical/location"/> </subfield>
		</datafield>

		<datafield tag="337" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/technical/format"/> </subfield>
		</datafield>

		<datafield tag="346" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/technical/size"/> </subfield>
		</datafield>

		<datafield tag="245" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/technical/requirement/orComposite/name/source"/> </subfield>
			<subfield code="a"> <xsl:value-of select="lom/technical/requirement/orComposite/name/value"/> </subfield>
		</datafield>

		<datafield tag="245" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/technical/requirement/orComposite/type/source"/> </subfield>
			<subfield code="a"> <xsl:value-of select="lom/technical/requirement/orComposite/type/value"/> </subfield>
		</datafield>

		<datafield tag="245" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/technical/requirement/orComposite/maximumVersion"/> </subfield>
		</datafield>

		<datafield tag="245" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/technical/requirement/orComposite/minimumVersion"/> </subfield>
		</datafield>

		<datafield tag="346" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/technical/duration/duration"/> </subfield>
		</datafield>

		<datafield tag="245" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/educational/learningResourceType/source"/> </subfield>
			<subfield code="a"> <xsl:value-of select="lom/educational/learningResourceType/value"/> </subfield>
		</datafield>

		<datafield tag="245" ind1=" " ind2=" ">
			<subfield code="a"> <xsl:value-of select="lom/educational/context/source"/> </subfield>
			<subfield code="a"> <xsl:value-of select="lom/educational/context/value"/> </subfield>
		</datafield>

	<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="lom/educational/typicalAgeRange/string[@language='el']"/>
				</subfield>
			</datafield>


			<datafield tag="024" ind2=" " ind1=" ">
				<subfield code="a"> <xsl:value-of select="lom/rights/cost/source"/> </subfield>
				<subfield code="a"> <xsl:value-of select="lom/rights/cost/value"/>
				</subfield>
			</datafield>

			
			<datafield  tag="024" ind2=" " ind1=" ">
				<subfield code="a"> <xsl:value-of select="lom/rights/copyrightAndOtherRestrictions/source"/> </subfield>
				<subfield code="a"> <xsl:value-of select="lom/rights/copyrightAndOtherRestrictions/value"/>
				</subfield>
			</datafield>

			<datafield  tag="500" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="lom/rights/description/string[@language='el']"/>
				</subfield>
			</datafield>

			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/purpose/value)[1]"/>
				</subfield>
			</datafield>
						
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/source/string[@language='el'])[1]"/>
				</subfield>
			</datafield>

			<datafield tag="562" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/taxon/id)[1]"/>
				</subfield>
			</datafield>

			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/taxon/entry/string[@language='el'])[1]"/>
				</subfield>
			</datafield>
			
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/purpose/value)[2]"/>
				</subfield>
			</datafield>
			
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="lom/classification/taxonPath/source/string[@language='en']"/>
				</subfield>
			</datafield>
			
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/taxon/entry/string[@language=''])[1]"/>
				</subfield>
			</datafield>
			
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/taxon/entry/string[@language=''])[2]"/>
				</subfield>
			</datafield>
			
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/purpose/value)[3]"/>
				</subfield>
			</datafield>
			
			
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/source/string[@language='el'])[2]"/>
				</subfield>
			</datafield>
			
			<datafield tag="562" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/taxon/id)[4]"/>
				</subfield>
			</datafield>
			
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/taxon/entry/string[@language='el'])[2]"/>
				</subfield>
			</datafield>
			
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/purpose/value)[4]"/>
				</subfield>
			</datafield>
			
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/source/string[@language='el'])[3]"/>
				</subfield>
			</datafield>
			
			<datafield tag="562" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/taxon/id)[5]"/>
				</subfield>
			</datafield>
			
			<datafield tag="245" ind2=" " ind1=" " >
				<subfield code="a">
					<xsl:value-of select="(lom/classification/taxonPath/taxon/entry/string[@language='el'])[3]"/>
				</subfield>
			</datafield>
			
			
			
		  <datafield tag="245" ind1=" " ind2=" ">
				<subfield code="a">
					<xsl:value-of select="(lom/relation/kind/source)[1]"/> 
				</subfield>
				<subfield code="a">
					<xsl:value-of select="(lom/relation/kind/value)[1]"/>
				</subfield>
			</datafield>

		 <datafield tag="856" ind1=" " ind2=" ">
				<subfield code="a">
				<xsl:value-of select="(lom/relation/resource/identifier/catalog)[1]"/>
				</subfield>
				<subfield code="a">
				<xsl:value-of select="(lom/relation/resource/identifier/entry)[1]"/>
				</subfield>
			</datafield>

		  <datafield tag="245" ind1=" " ind2=" ">
				<subfield code="a">
					<xsl:value-of select="(lom/relation/kind/source)[2]"/> 
				</subfield>
				<subfield code="a">
					<xsl:value-of select="(lom/relation/kind/value)[2]"/>
				</subfield>
			</datafield>

		 <datafield tag="856" ind1=" " ind2=" ">
				<subfield code="a">
				<xsl:value-of select="(lom/relation/resource/identifier/catalog)[2]"/>
				</subfield>
				<subfield code="a">
				<xsl:value-of select="(lom/relation/resource/identifier/entry)[2]"/>
				</subfield>
			</datafield>

		  
		  
    </record>
  </xsl:template>
</xsl:stylesheet>
