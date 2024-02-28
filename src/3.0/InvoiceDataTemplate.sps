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
																			<fixtext value="data:image/jpeg;base64,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"/>
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
