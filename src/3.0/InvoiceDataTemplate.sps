<?xml version="1.0" encoding="UTF-8"?>
<structure version="23" html-doctype="HTML4 Transitional" compatibility-view="IE9" html-outputextent="Complete" relativeto="*SPS" encodinghtml="UTF-8" encodingrtf="ISO-8859-1" encodingpdf="UTF-8" encodingtext="UTF-8" useimportschema="1" embed-images="1" enable-authentic-scripts="1" authentic-scripts-in-debug-mode-external="0" generated-file-location="DEFAULT" ixbrl-version="1.0">
	<parameters>
		<parameter name="lang"/>
	</parameters>
	<schemasources>
		<namespaces>
			<nspair prefix="base" uri="http://schemas.nav.gov.hu/OSA/3.0/base"/>
			<nspair prefix="common" uri="http://schemas.nav.gov.hu/NTCA/1.0/common"/>
			<nspair prefix="n1" uri="http://schemas.nav.gov.hu/OSA/3.0/data"/>
		</namespaces>
		<schemasources>
			<xsdschemasource name="XML" main="1" schemafile="altova://file_resource/NTCA_Github_invoiceData.XSD"/>
		</schemasources>
	</schemasources>
	<modules>
		<module spsfile="InvoiceTemplate.sps"/>
	</modules>
	<flags>
		<scripts/>
		<mainparts>
			<mainpart match="/" spsfile="InvoiceTemplate.sps" isactive="0"/>
		</mainparts>
		<globalparts/>
		<designfragments/>
		<pagelayouts/>
		<xpath-functions/>
	</flags>
	<scripts>
		<script language="javascript"/>
	</scripts>
	<script-project>
		<Project version="4" app="AuthenticView"/>
	</script-project>
	<importedxslt/>
	<globalstyles/>
	<mainparts>
		<children>
			<globaltemplate subtype="main" match="/">
				<document-properties/>
				<styles font-family="Tahoma" font-size="8pt"/>
				<children>
					<documentsection>
						<properties columncount="1" columngap="12mm" headerfooterheight="fixed" pagemultiplepages="0" pagenumberingformat="1" pagenumberingstartat="auto" pagestart="next" paperheight="297mm" papermarginbottom="20mm" papermarginfooter="8mm" papermarginheader="8mm" papermarginleft="10mm" papermarginright="10mm" papermargintop="35mm" paperwidth="210mm"/>
						<children>
							<globaltemplate subtype="pagelayout" match="headerall">
								<children>
									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
										<styles width="100%"/>
										<children>
											<tgridbody-cols>
												<children>
													<tgridcol>
														<styles width="10%"/>
													</tgridcol>
													<tgridcol>
														<styles width="90%"/>
													</tgridcol>
												</children>
											</tgridbody-cols>
											<tgridbody-rows>
												<children>
													<tgridrow>
														<styles height="20mm"/>
														<children>
															<tgridcell>
																<styles height="2cm" text-align="left"/>
																<children>
																	<image>
																		<styles height="20mm" vertical-align="top" width="12.5mm"/>
																		<target>
																			<fixtext value="..\..\img\NAV.png"/>
																		</target>
																	</image>
																</children>
															</tgridcell>
															<tgridcell>
																<styles font-size="10pt" height="2cm" padding="0" text-align="center"/>
																<children>
																	<condition>
																		<children>
																			<conditionbranch xpath="/*/namespace::*[name()=&apos;&apos;] = &apos;http://schemas.nav.gov.hu/OSA/3.0/data&apos; and $lang = (&apos;HU&apos;, &apos;EN&apos;, &apos;DE&apos;)">
																				<children>
																					<paragraph>
																						<styles font-family="Tahoma" font-size="16pt" text-align="center"/>
																						<children>
																							<calltemplate subtype="named" match="HeaderTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</paragraph>
																				</children>
																			</conditionbranch>
																		</children>
																	</condition>
																</children>
															</tgridcell>
														</children>
													</tgridrow>
													<tgridrow>
														<children>
															<tgridcell>
																<children>
																	<line>
																		<properties color="black" size="1"/>
																	</line>
																</children>
															</tgridcell>
															<tgridcell joinleft="1">
																<styles padding="0"/>
															</tgridcell>
														</children>
													</tgridrow>
												</children>
											</tgridbody-rows>
										</children>
										<wizard-data-repeat>
											<children/>
										</wizard-data-repeat>
										<wizard-data-rows>
											<children/>
										</wizard-data-rows>
										<wizard-data-columns>
											<children/>
										</wizard-data-columns>
									</tgrid>
								</children>
							</globaltemplate>
							<globaltemplate subtype="pagelayout" match="footerall">
								<children>
									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
										<styles width="100%"/>
										<children>
											<tgridbody-cols>
												<children>
													<tgridcol>
														<styles width="90%"/>
													</tgridcol>
													<tgridcol>
														<styles width="10%"/>
													</tgridcol>
												</children>
											</tgridbody-cols>
											<tgridbody-rows>
												<children>
													<tgridrow>
														<children>
															<tgridcell>
																<styles padding="0"/>
																<children>
																	<line>
																		<properties color="black" size="1"/>
																	</line>
																</children>
															</tgridcell>
															<tgridcell joinleft="1"/>
														</children>
													</tgridrow>
													<tgridrow>
														<children>
															<tgridcell>
																<styles font-size="10pt" padding="0" text-align="center"/>
																<children>
																	<condition>
																		<children>
																			<conditionbranch xpath="/*/namespace::*[name()=&apos;&apos;] = &apos;http://schemas.nav.gov.hu/OSA/3.0/data&apos; and $lang = (&apos;HU&apos;, &apos;EN&apos;, &apos;DE&apos;)">
																				<children>
																					<paragraph>
																						<styles font-size="8pt" text-align="center"/>
																						<children>
																							<calltemplate subtype="named" match="FooterTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</paragraph>
																					<paragraph>
																						<styles font-family="Tahoma" font-size="8pt" text-align="center"/>
																						<children>
																							<calltemplate subtype="named" match="InvoiceNumberTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																							<template subtype="source" match="XML">
																								<children>
																									<template subtype="element" match="n1:InvoiceData">
																										<children>
																											<template subtype="element" match="n1:invoiceNumber">
																												<children>
																													<content subtype="regular">
																														<styles font-weight="bold"/>
																													</content>
																												</children>
																												<variables/>
																											</template>
																										</children>
																										<variables/>
																									</template>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</paragraph>
																				</children>
																			</conditionbranch>
																		</children>
																	</condition>
																</children>
															</tgridcell>
															<tgridcell>
																<styles font-size="10pt" padding="0" text-align="center"/>
																<children>
																	<paragraph>
																		<styles font-family="Tahoma" font-size="8pt"/>
																		<children>
																			<field>
																				<styles font-family="Tahoma" font-size="8pt" font-weight="bold"/>
																			</field>
																			<text fixtext="/">
																				<styles font-weight="bold"/>
																			</text>
																			<field type="pagetotal">
																				<styles font-family="Tahoma" font-size="8pt" font-weight="bold"/>
																			</field>
																		</children>
																	</paragraph>
																</children>
															</tgridcell>
														</children>
													</tgridrow>
												</children>
											</tgridbody-rows>
										</children>
										<wizard-data-repeat>
											<children/>
										</wizard-data-repeat>
										<wizard-data-rows>
											<children/>
										</wizard-data-rows>
										<wizard-data-columns>
											<children/>
										</wizard-data-columns>
									</tgrid>
								</children>
							</globaltemplate>
						</children>
						<watermark>
							<image transparency="50" fill-page="1" center-if-not-fill="1"/>
							<text transparency="50"/>
						</watermark>
					</documentsection>
					<condition>
						<children>
							<conditionbranch xpath="/*/namespace::*[name()=&apos;&apos;] = &apos;http://schemas.nav.gov.hu/OSA/3.0/data&apos; and $lang = (&apos;HU&apos;, &apos;EN&apos;, &apos;DE&apos;)">
								<children>
									<template subtype="source" match="XML">
										<children>
											<template subtype="element" match="n1:InvoiceData">
												<children>
													<paragraph>
														<children>
															<calltemplate subtype="named" match="InvoiceNumberTemplate_L10N">
																<parameters/>
															</calltemplate>
															<template subtype="element" match="n1:invoiceNumber">
																<children>
																	<content subtype="regular">
																		<styles font-weight="bold"/>
																	</content>
																</children>
																<variables/>
															</template>
														</children>
													</paragraph>
													<paragraph>
														<children>
															<calltemplate subtype="named" match="InvoiceIssueDateTemplate_L10N">
																<parameters/>
															</calltemplate>
															<template subtype="element" match="n1:invoiceIssueDate">
																<children>
																	<calltemplate subtype="named" match="GenericDateOffset_Outer">
																		<parameters/>
																	</calltemplate>
																	<button>
																		<styles font-weight="bold"/>
																		<action>
																			<datepicker/>
																		</action>
																		<hyperlink/>
																	</button>
																</children>
																<variables/>
															</template>
														</children>
													</paragraph>
													<paragraph>
														<children>
															<calltemplate subtype="named" match="InvoiceClassificationTemplate_C5X">
																<parameters/>
															</calltemplate>
														</children>
													</paragraph>
													<condition>
														<children>
															<conditionbranch xpath="not(exists(n1:invoiceMain/n1:invoice))">
																<children>
																	<template subtype="element" match="n1:invoiceMain">
																		<children>
																			<template subtype="element" groupingtype="group-by" groupingmatch="n1:batchIndex" match="n1:batchInvoice">
																				<sort>
																					<key match="n1:batchIndex" datatype="Number"/>
																				</sort>
																				<children>
																					<template subtype="userdefined" match="current-group()">
																						<children>
																							<paragraph>
																								<styles padding-top="0.5cm"/>
																								<children>
																									<calltemplate subtype="named" match="BatchIndexTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:batchIndex">
																										<children>
																											<content subtype="regular">
																												<styles font-weight="bold"/>
																												<format basic-type="xsd" datatype="int"/>
																											</content>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</paragraph>
																							<calltemplate subtype="element" match="n1:invoice"/>
																							<condition>
																								<children>
																									<conditionbranch xpath="n1:batchIndex != $maxBatchIndex">
																										<children>
																											<newline break="page"/>
																										</children>
																									</conditionbranch>
																								</children>
																							</condition>
																						</children>
																						<variables/>
																					</template>
																				</children>
																				<variables/>
																			</template>
																		</children>
																		<variables>
																			<variable name="maxBatchIndex" value="max(n1:batchInvoice/n1:batchIndex)" valuetype="&lt;auto&gt;"/>
																		</variables>
																	</template>
																</children>
															</conditionbranch>
															<conditionbranch>
																<children>
																	<template subtype="element" match="n1:invoiceMain">
																		<children>
																			<calltemplate subtype="element" match="n1:invoice"/>
																		</children>
																		<variables/>
																	</template>
																</children>
															</conditionbranch>
														</children>
													</condition>
												</children>
												<variables/>
											</template>
											<newline/>
										</children>
										<variables/>
									</template>
								</children>
							</conditionbranch>
							<conditionbranch xpath="/*/namespace::*[name()=&apos;&apos;] != &apos;http://schemas.nav.gov.hu/OSA/3.0/data&apos;">
								<children>
									<paragraph>
										<styles color="red" font-size="14pt" letter-spacing="2pt" padding-top="2cm" text-align="justify"/>
										<children>
											<calltemplate subtype="named" match="NamespaceErrorTemplate_L10N">
												<parameters/>
											</calltemplate>
										</children>
									</paragraph>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang != (&apos;HU&apos;, &apos;EN&apos;, &apos;DE&apos;)">
								<children>
									<paragraph>
										<styles color="red" font-size="14pt" letter-spacing="2pt" padding-top="2cm" text-align="justify"/>
										<children>
											<calltemplate subtype="named" match="DisplayErrorTemplate_L10N">
												<parameters/>
											</calltemplate>
										</children>
									</paragraph>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
		</children>
	</mainparts>
	<globalparts/>
	<designfragments>
		<children>
			<globaltemplate subtype="named" match="InvoiceClassificationTemplate_C5X">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Bizonylat típusa"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Document type"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Dokumentenart"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
					<text fixtext=": "/>
					<condition>
						<children>
							<conditionbranch xpath="not(exists($XML/n1:InvoiceData/n1:invoiceMain/n1:invoice/n1:invoiceReference)) and not(exists($XML/n1:InvoiceData/n1:invoiceMain/n1:batchInvoice))">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Számla">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Invoice">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Rechnung">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="(exists($XML/n1:InvoiceData/n1:invoiceMain/n1:invoice/n1:invoiceReference) or exists($XML/n1:InvoiceData/n1:invoiceMain/n1:batchInvoice))">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Számlával egy tekintet alá eső okirat">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Invoice equivalent document">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Rechnungsäquivalentes Dokument">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Bizonylat sorszáma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Serial number of the document: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Seriennummer des Dokuments: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="HeaderTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Számlaadat">
										<styles font-weight="bold"/>
									</text>
									<condition>
										<children>
											<conditionbranch xpath="n1:InvoiceData/n1:completenessIndicator = false()">
												<children>
													<text fixtext="-szolgáltatás">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=" képi megjelenítése">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Visual display of invoice data">
										<styles font-weight="bold"/>
									</text>
									<condition>
										<children>
											<conditionbranch xpath="n1:InvoiceData/n1:completenessIndicator = false()">
												<children>
													<text fixtext=" report">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Visuelle Anzeige ">
										<styles font-weight="bold"/>
									</text>
									<condition>
										<children>
											<conditionbranch xpath="n1:InvoiceData/n1:completenessIndicator = true()">
												<children>
													<text fixtext="von Rechnungsdaten">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="n1:InvoiceData/n1:completenessIndicator = false()">
												<children>
													<text fixtext="des Rechnungsdatenberichts">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="FooterTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Ez a dokumentum a bizonylat adattartalmának standard képi megjelenítése. Ez az dokumentum nem a számla."/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="This document is a standard image representation of the data content of the document. This document is not the invoice."/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Dieses Dokument ist eine Standardbilddarstellung des Dateninhalts des Dokuments. Dieses Dokument ist nicht die Rechnung."/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceIssueDateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Bizonylat kiállítási dátuma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Document issue date: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Dokumentausgabedatum: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="BatchIndexTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Módosítás sorszáma a kötegen belül: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Sequence number of the modification document within the batch: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Laufende Nummer des Änderungsdokuments innerhalb der Charge: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="GenericDateOffset_Outer">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<autocalc xpath="concat(year-from-date(.), &apos;. &apos;, (
if (month-from-date(.) = 01) then &apos;január&apos; else
	if (month-from-date(.) = 02) then &apos;február&apos; else
		if (month-from-date(.) = 03) then &apos;március&apos; else
			if (month-from-date(.) = 04) then &apos;április&apos; else
				if (month-from-date(.) = 05) then &apos;május&apos; else
					if (month-from-date(.) = 06) then &apos;június&apos; else
						if (month-from-date(.) = 07) then &apos;július&apos; else
							if (month-from-date(.) = 08) then &apos;augusztus&apos; else
								if (month-from-date(.) = 09) then &apos;szeptember&apos; else
									if (month-from-date(.) = 10) then &apos;október&apos; else
										if (month-from-date(.) = 11) then &apos;november&apos;
											 else &apos;december&apos;),
&apos; &apos;, day-from-date(.), &apos;.&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<autocalc xpath="concat(day-from-date(.), &apos;. &apos;, (
if (month-from-date(.) = 01) then &apos;January&apos; else
	if (month-from-date(.) = 02) then &apos;February&apos; else
		if (month-from-date(.) = 03) then &apos;March&apos; else
			if (month-from-date(.) = 04) then &apos;April&apos; else
				if (month-from-date(.) = 05) then &apos;May&apos; else
					if (month-from-date(.) = 06) then &apos;June&apos; else
						if (month-from-date(.) = 07) then &apos;July&apos; else
							if (month-from-date(.) = 08) then &apos;August&apos; else
								if (month-from-date(.) = 09) then &apos;September&apos; else
									if (month-from-date(.) = 10) then &apos;October&apos; else
										if (month-from-date(.) = 11) then &apos;November&apos;
											 else &apos;December&apos;),
&apos; &apos;, year-from-date(.), &apos;.&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<autocalc xpath="concat(year-from-date(.), &apos;. &apos;, (
if (month-from-date(.) = 01) then &apos;Januar&apos; else
	if (month-from-date(.) = 02) then &apos;Februar&apos; else
		if (month-from-date(.) = 03) then &apos;März&apos; else
			if (month-from-date(.) = 04) then &apos;April&apos; else
				if (month-from-date(.) = 05) then &apos;Mai&apos; else
					if (month-from-date(.) = 06) then &apos;Juni&apos; else
						if (month-from-date(.) = 07) then &apos;Juli&apos; else
							if (month-from-date(.) = 08) then &apos;August&apos; else
								if (month-from-date(.) = 09) then &apos;September&apos; else
									if (month-from-date(.) = 10) then &apos;Oktober&apos; else
										if (month-from-date(.) = 11) then &apos;November&apos;
											 else &apos;Dezember&apos;),
&apos; &apos;, day-from-date(.), &apos;.&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="NamespaceErrorTemplate_L10N">
				<parameters/>
				<children>
					<newline/>
					<text fixtext="Feldolgozási hiba! / Processing error! / Verarbeitungsfehler! "/>
					<newline/>
					<newline/>
					<newline/>
					<newline/>
					<newline/>
					<newline/>
					<newline/>
					<text fixtext="A bemenetként megadott XML állomány nem az Online Számla adatszolgáltatás 3.0-ás verziója szerint készült. Az XSLT sablon desktop verziója nem alkalmas ettől eltérő képi megjelenítés generálására. (A default namespace értéke nem a 3.0-ás számla adatszolgáltatásokban használt &apos;http://schemas.nav.gov.hu/OSA/3.0/data&apos;.)"/>
					<newline/>
					<newline/>
					<text fixtext="The XML file specified as input was not created according to Online Invoice Data Report version 3.0. The desktop version of the XSLT template is not suitable for generating a different image display. (The default namespace value is not &apos;http://schemas.nav.gov.hu/OSA/3.0/data&apos;."/>
					<newline/>
					<newline/>
					<text fixtext="Die als Eingabe angegebene XML-Datei wurde nicht gemäß Online Invoice Data Report Version 3.0 erstellt. Die Desktop-Version des XSLT-Templates ist nicht geeignet, um eine andere Bilddarstellung zu erzeugen. (Der Standard-Namespace-Wert ist nicht „http://schemas.nav.gov.hu/OSA/3.0/data“."/>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="DisplayErrorTemplate_L10N">
				<parameters/>
				<children>
					<text fixtext="Feldolgozási hiba / Processing error! / Verarbeitungsfehler! "/>
					<newline/>
					<newline/>
					<newline/>
					<newline/>
					<newline/>
					<newline/>
					<newline/>
					<text fixtext="A dokumentum megjelenítési beállításait tartalmazó $lang változó nem került helyesen megadásra! A támogatott értékek: HU, EN, DE. / The $lang variable containing the display options of the document is not correctly provided! Supported values are: HU, EN, DE. / Das $lang-Variable, dass die Anzeigeoptionen des Dokuments enthält, wird nicht bereitgestellt! Unterstützte Werte sind: HU, EN, DE. "/>
				</children>
			</globaltemplate>
		</children>
	</designfragments>
	<xmltables/>
	<authentic-custom-toolbar-buttons/>
</structure>
