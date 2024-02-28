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
	<modules/>
	<flags>
		<scripts/>
		<mainparts/>
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
						<watermark>
							<image transparency="50" fill-page="1" center-if-not-fill="1"/>
							<text transparency="50"/>
						</watermark>
					</documentsection>
					<template subtype="source" match="XML">
						<children>
							<template subtype="element" match="n1:InvoiceData">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="exists(n1:invoiceMain/n1:batchInvoice)">
												<children>
													<template subtype="element" match="n1:invoiceMain">
														<children>
															<template subtype="element" match="n1:batchInvoice">
																<children>
																	<calltemplate subtype="element" match="n1:invoice"/>
																</children>
																<variables/>
															</template>
														</children>
														<variables/>
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
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
		</children>
	</mainparts>
	<globalparts>
		<children>
			<globaltemplate subtype="element" match="n1:invoice" schema-tree-path="$XML/n1:InvoiceData/n1:invoiceMain/n1:invoice">
				<children>
					<template subtype="element" match="n1:invoice">
						<children>
							<condition>
								<children>
									<conditionbranch xpath="exists(n1:invoiceReference)">
										<children>
											<template subtype="element" match="n1:invoiceReference">
												<children>
													<paragraph>
														<children>
															<calltemplate subtype="named" match="OriginalInvoiceNumberTemplate_L10N">
																<parameters/>
															</calltemplate>
															<template subtype="element" match="n1:originalInvoiceNumber">
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
															<calltemplate subtype="named" match="ModificationIndexTemplate_L10N">
																<parameters/>
															</calltemplate>
															<template subtype="element" match="n1:modificationIndex">
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
												</children>
												<variables/>
											</template>
										</children>
									</conditionbranch>
								</children>
							</condition>
							<template subtype="element" match="n1:invoiceHead">
								<children>
									<paragraph>
										<styles padding-bottom="5mm" padding-top="5mm"/>
										<children>
											<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
												<properties border="1" width="100%"/>
												<styles border-collapse="collapse" border-style="none"/>
												<children>
													<tgridbody-cols>
														<children>
															<tgridcol>
																<styles width="85.5mm"/>
															</tgridcol>
															<tgridcol>
																<styles width="19mm"/>
															</tgridcol>
															<tgridcol>
																<styles width="85.5mm"/>
															</tgridcol>
														</children>
													</tgridbody-cols>
													<tgridbody-rows>
														<children>
															<tgridrow>
																<styles font-size="10pt"/>
																<children>
																	<tgridcell>
																		<styles border-style="none" text-align="center"/>
																		<children>
																			<calltemplate subtype="named" match="SellerTemplate_L10N">
																				<parameters/>
																			</calltemplate>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<styles border-style="none" text-align="center"/>
																	</tgridcell>
																	<tgridcell>
																		<styles border-style="none" text-align="center"/>
																		<children>
																			<calltemplate subtype="named" match="BuyerTemplate_L10N">
																				<parameters/>
																			</calltemplate>
																		</children>
																	</tgridcell>
																</children>
															</tgridrow>
															<tgridrow>
																<children>
																	<tgridcell>
																		<styles border-color="black" border-style="solid" vertical-align="top"/>
																		<children>
																			<template subtype="element" match="n1:supplierInfo">
																				<children>
																					<newline/>
																					<condition>
																						<children>
																							<conditionbranch xpath="not(exists(n1:groupMemberTaxNumber))">
																								<children>
																									<calltemplate subtype="named" match="TaxNumberTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</conditionbranch>
																							<conditionbranch xpath="exists(n1:groupMemberTaxNumber)">
																								<children>
																									<calltemplate subtype="named" match="TaxNumberGroupTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																					<template subtype="element" match="n1:supplierTaxNumber">
																						<children>
																							<calltemplate subtype="named" match="BaseTaxNumberTemplate">
																								<parameters/>
																							</calltemplate>
																						</children>
																						<variables/>
																					</template>
																					<condition>
																						<children>
																							<conditionbranch xpath="exists(n1:communityVatNumber)">
																								<children>
																									<newline/>
																									<calltemplate subtype="named" match="CommunityVatNumberTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:communityVatNumber">
																										<children>
																											<content subtype="regular">
																												<styles font-weight="bold"/>
																											</content>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																					<condition>
																						<children>
																							<conditionbranch xpath="exists(n1:groupMemberTaxNumber)">
																								<children>
																									<newline/>
																									<calltemplate subtype="named" match="GroupMemberTaxNumberTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:groupMemberTaxNumber">
																										<children>
																											<calltemplate subtype="named" match="BaseTaxNumberTemplate">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																					<condition>
																						<children>
																							<conditionbranch xpath="exists(n1:exciseLicenceNum)">
																								<children>
																									<newline/>
																									<calltemplate subtype="named" match="ExciseLicensNumberTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:exciseLicenceNum">
																										<children>
																											<content subtype="regular">
																												<styles font-weight="bold"/>
																											</content>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																					<newline/>
																					<newline/>
																					<calltemplate subtype="named" match="InvoiceHeadNameTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<template subtype="element" match="n1:supplierName">
																						<children>
																							<content subtype="regular">
																								<styles font-weight="bold"/>
																							</content>
																						</children>
																						<variables/>
																					</template>
																					<condition>
																						<children>
																							<conditionbranch xpath="../n1:invoiceDetail/n1:smallBusinessIndicator = true()">
																								<children>
																									<text fixtext=" "/>
																									<calltemplate subtype="named" match="SmallBusinessIndicatorTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																					<condition>
																						<children>
																							<conditionbranch xpath="n1:individualExemption = true()">
																								<children>
																									<text fixtext=" "/>
																									<calltemplate subtype="named" match="IndividualExemptionTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																					<newline/>
																					<calltemplate subtype="named" match="InvoiceHeadAddressTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<template subtype="element" match="n1:supplierAddress">
																						<children>
																							<calltemplate subtype="named" match="BaseAddressTemplate">
																								<parameters/>
																							</calltemplate>
																						</children>
																						<variables/>
																					</template>
																					<condition>
																						<children>
																							<conditionbranch xpath="exists(n1:supplierBankAccountNumber)">
																								<children>
																									<newline/>
																									<calltemplate subtype="named" match="BankAccountNumberTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:supplierBankAccountNumber">
																										<children>
																											<content subtype="regular">
																												<styles font-weight="bold"/>
																											</content>
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
																	</tgridcell>
																	<tgridcell>
																		<styles border-style="none"/>
																	</tgridcell>
																	<tgridcell>
																		<styles border-color="black" border-style="solid" vertical-align="top"/>
																		<children>
																			<template subtype="element" match="n1:customerInfo">
																				<children>
																					<newline/>
																					<condition>
																						<children>
																							<conditionbranch xpath="n1:customerVatStatus != &apos;PRIVATE_PERSON&apos; and exists(n1:customerVatData/n1:customerTaxNumber)">
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="not(exists(n1:customerVatData/n1:customerTaxNumber/n1:groupMemberTaxNumber))">
																												<children>
																													<calltemplate subtype="named" match="TaxNumberTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="exists(n1:customerVatData/n1:customerTaxNumber/n1:groupMemberTaxNumber)">
																												<children>
																													<calltemplate subtype="named" match="TaxNumberGroupTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																									<template subtype="element" match="n1:customerVatData">
																										<children>
																											<template subtype="element" match="n1:customerTaxNumber">
																												<children>
																													<calltemplate subtype="named" match="BaseTaxNumberTemplate">
																														<parameters/>
																													</calltemplate>
																													<condition>
																														<children>
																															<conditionbranch xpath="exists(n1:groupMemberTaxNumber)">
																																<children>
																																	<newline/>
																																	<calltemplate subtype="named" match="GroupMemberTaxNumberTemplate_L10N">
																																		<parameters/>
																																	</calltemplate>
																																	<template subtype="element" match="n1:groupMemberTaxNumber">
																																		<children>
																																			<calltemplate subtype="named" match="BaseTaxNumberTemplate">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																															</conditionbranch>
																														</children>
																													</condition>
																													<newline/>
																												</children>
																												<variables/>
																											</template>
																										</children>
																										<variables/>
																									</template>
																									<newline/>
																								</children>
																							</conditionbranch>
																							<conditionbranch xpath="n1:customerVatStatus != &apos;PRIVATE_PERSON&apos; and exists(n1:customerVatData/n1:communityVatNumber)">
																								<children>
																									<calltemplate subtype="named" match="CommunityVatNumberTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:customerVatData">
																										<children>
																											<template subtype="element" match="n1:communityVatNumber">
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
																									<newline/>
																									<newline/>
																								</children>
																							</conditionbranch>
																							<conditionbranch xpath="n1:customerVatStatus != &apos;PRIVATE_PERSON&apos; and exists(n1:customerVatData/n1:thirdStateTaxId)">
																								<children>
																									<calltemplate subtype="named" match="ThirdStateTaxIdTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:customerVatData">
																										<children>
																											<template subtype="element" match="n1:thirdStateTaxId">
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
																									<newline/>
																									<newline/>
																								</children>
																							</conditionbranch>
																							<conditionbranch xpath="n1:customerVatStatus = &apos;PRIVATE_PERSON&apos;">
																								<children>
																									<calltemplate subtype="named" match="PrivatePersonTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																					<condition>
																						<children>
																							<conditionbranch xpath="n1:customerVatStatus != &apos;PRIVATE_PERSON&apos;">
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:customerName)">
																												<children>
																													<calltemplate subtype="named" match="InvoiceHeadNameTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<template subtype="element" match="n1:customerName">
																														<children>
																															<content subtype="regular">
																																<styles font-weight="bold"/>
																															</content>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																									<newline/>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:customerAddress)">
																												<children>
																													<calltemplate subtype="named" match="InvoiceHeadAddressTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<template subtype="element" match="n1:customerAddress">
																														<children>
																															<calltemplate subtype="named" match="BaseAddressTemplate">
																																<parameters/>
																															</calltemplate>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																					<condition>
																						<children>
																							<conditionbranch xpath="exists(n1:customerBankAccountNumber)">
																								<children>
																									<newline/>
																									<calltemplate subtype="named" match="BankAccountNumberTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:customerBankAccountNumber">
																										<children>
																											<content subtype="regular">
																												<styles font-weight="bold"/>
																											</content>
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
																		</children>
																	</tgridcell>
																</children>
															</tgridrow>
															<tgridrow conditional-processing="exists(n1:fiscalRepresentativeInfo)">
																<children>
																	<tgridcell>
																		<styles border-color="black" border-style="solid"/>
																		<children>
																			<template subtype="element" match="n1:fiscalRepresentativeInfo">
																				<children>
																					<calltemplate subtype="named" match="FiscalRepresentativeNameTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<template subtype="element" match="n1:fiscalRepresentativeName">
																						<children>
																							<content subtype="regular">
																								<styles font-weight="bold"/>
																							</content>
																						</children>
																						<variables/>
																					</template>
																					<newline/>
																					<calltemplate subtype="named" match="TaxNumberTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<template subtype="element" match="n1:fiscalRepresentativeTaxNumber">
																						<children>
																							<calltemplate subtype="named" match="BaseTaxNumberTemplate">
																								<parameters/>
																							</calltemplate>
																						</children>
																						<variables/>
																					</template>
																					<newline/>
																					<calltemplate subtype="named" match="InvoiceHeadAddressTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<template subtype="element" match="n1:fiscalRepresentativeAddress">
																						<children>
																							<calltemplate subtype="named" match="BaseAddressTemplate">
																								<parameters/>
																							</calltemplate>
																						</children>
																						<variables/>
																					</template>
																					<condition>
																						<children>
																							<conditionbranch xpath="exists(n1:fiscalRepresentativeBankAccountNumber)">
																								<children>
																									<calltemplate subtype="named" match="BankAccountNumberTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:fiscalRepresentativeBankAccountNumber">
																										<children>
																											<content subtype="regular">
																												<styles font-weight="bold"/>
																											</content>
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
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<styles border-style="none"/>
																	</tgridcell>
																	<tgridcell>
																		<styles border-style="none"/>
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
									</paragraph>
									<template subtype="element" match="n1:invoiceDetail">
										<children>
											<paragraph>
												<children>
													<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
														<properties border="1" width="100%"/>
														<styles border-collapse="collapse" border-style="none"/>
														<children>
															<tgridbody-cols>
																<children>
																	<tgridcol>
																		<styles width="62.7mm"/>
																	</tgridcol>
																	<tgridcol>
																		<styles width="62.7mm"/>
																	</tgridcol>
																	<tgridcol>
																		<styles width="62.7mm"/>
																	</tgridcol>
																</children>
															</tgridbody-cols>
															<tgridbody-rows>
																<children>
																	<tgridrow>
																		<children>
																			<tgridcell>
																				<styles border-style="none"/>
																				<children>
																					<calltemplate subtype="named" match="InvoiceCategoryTemplate">
																						<parameters/>
																					</calltemplate>
																				</children>
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none"/>
																				<children>
																					<calltemplate subtype="named" match="InvoiceAppearanceTemplate">
																						<parameters/>
																					</calltemplate>
																				</children>
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none"/>
																				<children>
																					<condition>
																						<children>
																							<conditionbranch xpath="n1:selfBillingIndicator = true()">
																								<children>
																									<calltemplate subtype="named" match="SelfBillingIncidatorTemplate_L10N">
																										<parameters/>
																									</calltemplate>
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
																				<styles border-style="none"/>
																				<children>
																					<calltemplate subtype="named" match="InvoiceDeliveryDateTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<condition>
																						<children>
																							<conditionbranch xpath="n1:invoiceCategory != &apos;AGGREGATE&apos;">
																								<children>
																									<template subtype="element" match="n1:invoiceDeliveryDate">
																										<children>
																											<calltemplate subtype="named" match="GenericDateOffset_Inner">
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
																							</conditionbranch>
																							<conditionbranch xpath="n1:invoiceCategory = &apos;AGGREGATE&apos;">
																								<children>
																									<calltemplate subtype="named" match="AggregateInstructionsTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																				</children>
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none"/>
																				<children>
																					<calltemplate subtype="named" match="InvoiceAccountingDeliveryDateTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<template subtype="element" match="n1:invoiceAccountingDeliveryDate">
																						<children>
																							<calltemplate subtype="named" match="GenericDateOffset_Inner">
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
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none"/>
																				<children>
																					<condition>
																						<children>
																							<conditionbranch xpath="n1:cashAccountingIndicator = true()">
																								<children>
																									<calltemplate subtype="named" match="CashAccountingIndicatorTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																				</children>
																			</tgridcell>
																		</children>
																	</tgridrow>
																	<tgridrow conditional-processing="exists(n1:invoiceDeliveryPeriodStart) or exists(n1:invoiceDeliveryPeriodEnd) or n1:periodicalSettlement = true()">
																		<children>
																			<tgridcell>
																				<styles border-style="none"/>
																				<children>
																					<calltemplate subtype="named" match="InvoiceDeliveryPeriodStartTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<template subtype="element" match="n1:invoiceDeliveryPeriodStart">
																						<children>
																							<calltemplate subtype="named" match="GenericDateOffset_Inner">
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
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none"/>
																				<children>
																					<calltemplate subtype="named" match="InvoiceDeliveryPeriodEndTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<template subtype="element" match="n1:invoiceDeliveryPeriodEnd">
																						<children>
																							<calltemplate subtype="named" match="GenericDateOffset_Inner">
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
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none"/>
																				<children>
																					<condition>
																						<children>
																							<conditionbranch xpath="n1:periodicalSettlement = true()">
																								<children>
																									<calltemplate subtype="named" match="PeriodicalSettlementTemplate_L10N">
																										<parameters/>
																									</calltemplate>
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
																				<styles border-style="none"/>
																				<children>
																					<calltemplate subtype="named" match="PaymentMethodTemplate_C5X">
																						<parameters/>
																					</calltemplate>
																				</children>
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none"/>
																				<children>
																					<calltemplate subtype="named" match="PaymentDateTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<template subtype="element" match="n1:paymentDate">
																						<children>
																							<calltemplate subtype="named" match="GenericDateOffset_Inner">
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
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none" vertical-align="top"/>
																				<children>
																					<condition>
																						<children>
																							<conditionbranch xpath="n1:utilitySettlementIndicator = true()">
																								<children>
																									<calltemplate subtype="named" match="UtilitySettlementIndicatorTemplate_L10N">
																										<parameters/>
																									</calltemplate>
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
																				<styles border-style="none"/>
																				<children>
																					<calltemplate subtype="named" match="CurrencyCodeTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<template subtype="element" match="n1:currencyCode">
																						<children>
																							<content subtype="regular">
																								<styles font-weight="bold"/>
																							</content>
																						</children>
																						<variables/>
																					</template>
																				</children>
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none"/>
																				<children>
																					<calltemplate subtype="named" match="ExchangeRateTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																					<condition>
																						<children>
																							<conditionbranch xpath="n1:invoiceCategory != &apos;AGGREGATE&apos;">
																								<children>
																									<template subtype="element" match="n1:exchangeRate">
																										<children>
																											<calltemplate subtype="named" match="GenericExchangeRateOffset">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</conditionbranch>
																							<conditionbranch xpath="n1:invoiceCategory = &apos;AGGREGATE&apos;">
																								<children>
																									<calltemplate subtype="named" match="AggregateInstructionsTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</conditionbranch>
																						</children>
																					</condition>
																				</children>
																			</tgridcell>
																			<tgridcell joinabove="1">
																				<styles border-style="none"/>
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
											</paragraph>
											<paragraph>
												<styles padding-top="5mm"/>
												<children>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:orderNumbers)">
																<children>
																	<tgrid hidecols="when-body-empty" hiderows="when-body-empty" tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:orderNumbers">
																								<children>
																									<template subtype="element" match="n1:orderNumber">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoOrderNumberTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:deliveryNotes)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:deliveryNotes">
																								<children>
																									<template subtype="element" match="n1:deliveryNote">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoDeliveryNoteTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:shippingDates)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:shippingDates">
																								<children>
																									<template subtype="element" match="n1:shippingDate">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoShippingDateTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:contractNumbers)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:contractNumbers">
																								<children>
																									<template subtype="element" match="n1:contractNumber">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoContractNumberTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:supplierCompanyCodes)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:supplierCompanyCodes">
																								<children>
																									<template subtype="element" match="n1:supplierCompanyCode">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoSupplierCompanyCodeTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:customerCompanyCodes)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:customerCompanyCodes">
																								<children>
																									<template subtype="element" match="n1:customerCompanyCode">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoCustomerCompanyCodeTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:dealerCodes)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:dealerCodes">
																								<children>
																									<template subtype="element" match="n1:dealerCode">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoDealerCodeTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:costCenters)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:costCenters">
																								<children>
																									<template subtype="element" match="n1:costCenter">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoCostCenterTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:projectNumbers)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:projectNumbers">
																								<children>
																									<template subtype="element" match="n1:projectNumber">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoProjectNumberTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:generalLedgerAccountNumbers)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:generalLedgerAccountNumbers">
																								<children>
																									<template subtype="element" match="n1:generalLedgerAccountNumber">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoGeneralLedgerAccountNumberTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:glnNumbersSupplier)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:glnNumbersSupplier">
																								<children>
																									<template subtype="element" match="n1:glnNumber">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoGlnSupplierNumberTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:glnNumbersCustomer)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:glnNumbersCustomer">
																								<children>
																									<template subtype="element" match="n1:glnNumber">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoGlnCustomerNumberTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:materialNumbers)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:materialNumbers">
																								<children>
																									<template subtype="element" match="n1:materialNumber">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoMaterialNumberTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:itemNumbers)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:itemNumbers">
																								<children>
																									<template subtype="element" match="n1:itemNumber">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoItemNumberTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="exists(n1:conventionalInvoiceInfo/n1:ekaerIds)">
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.3mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:conventionalInvoiceInfo">
																						<children>
																							<template subtype="element" match="n1:ekaerIds">
																								<children>
																									<template subtype="element" match="n1:ekaerId">
																										<children>
																											<tgridrow>
																												<children>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() &lt; 2">
																																		<children>
																																			<calltemplate subtype="named" match="ConventionalInfoEkaerNumberTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</tgridcell>
																													<tgridcell>
																														<styles border-style="none"/>
																														<children>
																															<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																													</tgridcell>
																												</children>
																											</tgridrow>
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
															</conditionbranch>
														</children>
													</condition>
												</children>
											</paragraph>
											<condition>
												<children>
													<conditionbranch xpath="exists(n1:additionalInvoiceData)">
														<children>
															<paragraph>
																<styles padding-top="5mm" word-break="normal" word-wrap="break-word"/>
																<children>
																	<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																		<properties border="1"/>
																		<styles border-collapse="collapse" border-style="none"/>
																		<children>
																			<tgridbody-cols>
																				<children>
																					<tgridcol>
																						<styles width="62.7mm"/>
																					</tgridcol>
																					<tgridcol>
																						<styles width="127.1mm"/>
																					</tgridcol>
																				</children>
																			</tgridbody-cols>
																			<tgridbody-rows>
																				<children>
																					<template subtype="element" match="n1:additionalInvoiceData">
																						<children>
																							<tgridrow>
																								<styles keep-together="always"/>
																								<children>
																									<tgridcell>
																										<styles border-style="none"/>
																										<children>
																											<template subtype="element" match="n1:dataDescription">
																												<children>
																													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																														<parameters/>
																													</calltemplate>
																												</children>
																												<variables/>
																											</template>
																											<text fixtext=":"/>
																											<newline/>
																											<text fixtext="("/>
																											<template subtype="element" match="n1:dataName">
																												<children>
																													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																														<parameters/>
																													</calltemplate>
																												</children>
																												<variables/>
																											</template>
																											<text fixtext=")"/>
																										</children>
																									</tgridcell>
																									<tgridcell>
																										<styles border-style="none" word-break="break-all" word-wrap="break-word"/>
																										<children>
																											<template subtype="element" match="n1:dataValue">
																												<children>
																													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																														<parameters/>
																													</calltemplate>
																												</children>
																												<variables/>
																											</template>
																										</children>
																									</tgridcell>
																								</children>
																							</tgridrow>
																						</children>
																						<variables/>
																					</template>
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
															</paragraph>
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
							<condition>
								<children>
									<conditionbranch xpath="exists(n1:invoiceLines)">
										<children>
											<paragraph>
												<styles padding-top="5mm"/>
												<children>
													<template subtype="element" match="n1:invoiceLines">
														<children>
															<condition>
																<children>
																	<conditionbranch xpath="n1:mergedItemIndicator = true()">
																		<children>
																			<paragraph>
																				<styles color="red" text-align="left"/>
																				<children>
																					<calltemplate subtype="named" match="MergedItemTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																				</children>
																			</paragraph>
																		</children>
																	</conditionbranch>
																</children>
															</condition>
															<newline/>
															<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																<properties border="1"/>
																<styles border-collapse="collapse" border-style="none" width="100%"/>
																<children>
																	<tgridbody-cols>
																		<children>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																		</children>
																	</tgridbody-cols>
																	<tgridbody-rows>
																		<children>
																			<template subtype="element" match="n1:line">
																				<children>
																					<tgridrow>
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-left-style="none" border-right-style="none" border-top-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="LineNumberTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:lineNumber">
																										<children>
																											<content subtype="regular">
																												<styles font-weight="bold"/>
																												<format basic-type="xsd" datatype="nonNegativeInteger"/>
																											</content>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-left-style="none" border-right-style="none" border-top-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="n1:lineModificationReference/n1:lineOperation = &apos;CREATE&apos;">
																												<children>
																													<calltemplate subtype="named" match="LineOperationCreateTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="n1:lineModificationReference/n1:lineOperation = &apos;MODIFY&apos;">
																												<children>
																													<calltemplate subtype="named" match="LineOperationModifyTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																									<template subtype="element" match="n1:lineModificationReference">
																										<children>
																											<template subtype="element" match="n1:lineNumberReference">
																												<children>
																													<content subtype="regular">
																														<styles font-weight="bold"/>
																														<format basic-type="xsd" datatype="nonNegativeInteger"/>
																													</content>
																												</children>
																												<variables/>
																											</template>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-left-style="none" border-right-style="none" border-top-style="none"/>
																							</tgridcell>
																							<tgridcell>
																								<styles border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-left-style="none" border-right-style="none" border-top-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:referencesToOtherLines)">
																												<children>
																													<calltemplate subtype="named" match="ReferenceToOtherLineTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<template subtype="element" match="n1:referencesToOtherLines">
																														<children>
																															<autocalc xpath="string-join(n1:referenceToOtherLine/text(), &apos;, &apos;)">
																																<styles font-weight="bold"/>
																															</autocalc>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="n1:advanceData/n1:advanceIndicator = true()">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="AdvanceIndicatorTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																						</children>
																					</tgridrow>
																					<tgridrow>
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="LineDescriptionTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<template subtype="element" match="n1:lineDescription">
																										<children>
																											<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow>
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:quantity)">
																												<children>
																													<calltemplate subtype="named" match="QuantityTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:quantity">
																														<children>
																															<content subtype="regular">
																																<styles font-weight="bold"/>
																																<format basic-type="xsd" string="###,###,###,###" datatype="decimal"/>
																															</content>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:unitOfMeasure) or exists(n1:unitOfMeasureOwn)">
																												<children>
																													<calltemplate subtype="named" match="UnitOfMeasureTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<condition>
																														<children>
																															<conditionbranch xpath="not(exists(n1:unitOfMeasureOwn)) and exists(n1:unitOfMeasure)">
																																<children>
																																	<template subtype="element" match="n1:unitOfMeasure">
																																		<children>
																																			<calltemplate subtype="named" match="UnitOfMeasureValueTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																															</conditionbranch>
																															<conditionbranch xpath="exists(n1:unitOfMeasureOwn)">
																																<children>
																																	<template subtype="element" match="n1:unitOfMeasureOwn">
																																		<children>
																																			<content subtype="regular">
																																				<styles font-weight="bold"/>
																																			</content>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																															</conditionbranch>
																														</children>
																													</condition>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:aggregateInvoiceLineData/n1:lineDeliveryDate)">
																												<children>
																													<calltemplate subtype="named" match="LineDeliveryDateTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:aggregateInvoiceLineData">
																														<children>
																															<template subtype="element" match="n1:lineDeliveryDate">
																																<children>
																																	<calltemplate subtype="named" match="GenericDateOffset_Inner">
																																		<parameters/>
																																	</calltemplate>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																									<newline/>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:aggregateInvoiceLineData/n1:lineExchangeRate)">
																												<children>
																													<calltemplate subtype="named" match="LineExchangeRateTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:aggregateInvoiceLineData">
																														<children>
																															<template subtype="element" match="n1:lineExchangeRate">
																																<children>
																																	<content subtype="regular">
																																		<styles font-weight="bold"/>
																																		<format basic-type="xsd" datatype="decimal"/>
																																	</content>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow>
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:unitPrice)">
																												<children>
																													<calltemplate subtype="named" match="UnitPriceTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:unitPrice">
																														<children>
																															<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<autocalc xpath="$CurrencyCodeValue">
																														<styles font-weight="bold"/>
																													</autocalc>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:lineAmountsNormal/n1:lineNetAmountData/n1:lineNetAmount)">
																												<children>
																													<calltemplate subtype="named" match="NetAmountTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:lineAmountsNormal">
																														<children>
																															<template subtype="element" match="n1:lineNetAmountData">
																																<children>
																																	<template subtype="element" match="n1:lineNetAmount">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<autocalc xpath="$CurrencyCodeValue">
																														<styles font-weight="bold"/>
																													</autocalc>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:lineAmountsNormal/n1:lineVatData/n1:lineVatAmount)">
																												<children>
																													<calltemplate subtype="named" match="VatAmountTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:lineAmountsNormal">
																														<children>
																															<template subtype="element" match="n1:lineVatData">
																																<children>
																																	<template subtype="element" match="n1:lineVatAmount">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<autocalc xpath="$CurrencyCodeValue">
																														<styles font-weight="bold"/>
																													</autocalc>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:lineAmountsNormal/n1:lineGrossAmountData/n1:lineGrossAmountNormal)">
																												<children>
																													<calltemplate subtype="named" match="GrossAmountTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:lineAmountsNormal">
																														<children>
																															<template subtype="element" match="n1:lineGrossAmountData">
																																<children>
																																	<template subtype="element" match="n1:lineGrossAmountNormal">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<autocalc xpath="$CurrencyCodeValue">
																														<styles font-weight="bold"/>
																													</autocalc>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="exists(n1:lineAmountsSimplified/n1:lineGrossAmountSimplified)">
																												<children>
																													<calltemplate subtype="named" match="GrossAmountTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:lineAmountsSimplified">
																														<children>
																															<template subtype="element" match="n1:lineGrossAmountSimplified">
																																<children>
																																	<content subtype="regular">
																																		<styles font-weight="bold"/>
																																		<format basic-type="xsd" datatype="decimal"/>
																																	</content>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext="  "/>
																													<autocalc xpath="$CurrencyCodeValue">
																														<styles font-weight="bold"/>
																													</autocalc>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:lineAmountsNormal)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<template subtype="element" match="n1:lineAmountsNormal">
																										<children>
																											<template subtype="element" match="n1:lineVatRate">
																												<children>
																													<calltemplate subtype="named" match="VatRateTypeTemplate_C5X">
																														<parameters/>
																													</calltemplate>
																												</children>
																												<variables/>
																											</template>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:lineAmountsNormal/n1:lineVatRate/n1:vatExemption/n1:reason) or exists(n1:lineAmountsNormal/n1:lineVatRate/n1:vatOutOfScope/n1:reason) or n1:lineAmountsNormal/n1:lineVatRate/n1:vatDomesticReverseCharge = true() or exists(n1:lineAmountsNormal/n1:lineVatRate/n1:marginSchemeIndicator) or exists(n1:lineAmountsNormal/n1:lineVatRate/n1:vatAmountMismatch/n1:case) or n1:lineAmountsNormal/n1:lineVatRate/n1:noVatCharge = true()">
																												<children>
																													<calltemplate subtype="named" match="VatDescriptionTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<template subtype="element" match="n1:lineAmountsNormal">
																														<children>
																															<template subtype="element" match="n1:lineVatRate">
																																<children>
																																	<calltemplate subtype="named" match="VatReasonTemplate_C5X">
																																		<parameters/>
																																	</calltemplate>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:lineAmountsSimplified)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<template subtype="element" match="n1:lineAmountsSimplified">
																										<children>
																											<template subtype="element" match="n1:lineVatRate">
																												<children>
																													<calltemplate subtype="named" match="VatRateTypeTemplate_C5X">
																														<parameters/>
																													</calltemplate>
																												</children>
																												<variables/>
																											</template>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:lineAmountsSimplified/n1:lineVatRate/n1:vatExemption/n1:reason) or exists(n1:lineAmountsSimplified/n1:lineVatRate/n1:vatOutOfScope/n1:reason) or n1:lineAmountsSimplified/n1:lineVatRate/n1:vatDomesticReverseCharge = true() or exists(n1:lineAmountsSimplified/n1:lineVatRate/n1:marginSchemeIndicator) or exists(n1:lineAmountsSimplified/n1:lineVatRate/n1:vatAmountMismatch/n1:case) or n1:lineAmountsSimplified/n1:lineVatRate/n1:noVatCharge = true()">
																												<children>
																													<calltemplate subtype="named" match="VatDescriptionTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<template subtype="element" match="n1:lineAmountsSimplified">
																														<children>
																															<template subtype="element" match="n1:lineVatRate">
																																<children>
																																	<calltemplate subtype="named" match="VatReasonTemplate_C5X">
																																		<parameters/>
																																	</calltemplate>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																						</children>
																					</tgridrow>
																					<tgridrow>
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="UnitPriceHUFTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																									<template subtype="element" match="n1:unitPriceHUF">
																										<children>
																											<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																									<text fixtext=" HUF">
																										<styles font-weight="bold"/>
																									</text>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:lineAmountsNormal/n1:lineNetAmountData/n1:lineNetAmountHUF)">
																												<children>
																													<calltemplate subtype="named" match="LineNetAmountHUFTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:lineAmountsNormal">
																														<children>
																															<template subtype="element" match="n1:lineNetAmountData">
																																<children>
																																	<template subtype="element" match="n1:lineNetAmountHUF">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<text fixtext="HUF">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:lineAmountsNormal/n1:lineVatData/n1:lineVatAmountHUF)">
																												<children>
																													<calltemplate subtype="named" match="LineVatAmountHUFTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:lineAmountsNormal">
																														<children>
																															<template subtype="element" match="n1:lineVatData">
																																<children>
																																	<template subtype="element" match="n1:lineVatAmountHUF">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<text fixtext="HUF">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:lineAmountsNormal/n1:lineGrossAmountData/n1:lineGrossAmountNormalHUF)">
																												<children>
																													<calltemplate subtype="named" match="LineGrossAmountHUFTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:lineAmountsNormal">
																														<children>
																															<template subtype="element" match="n1:lineGrossAmountData">
																																<children>
																																	<template subtype="element" match="n1:lineGrossAmountNormalHUF">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<text fixtext="HUF">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="exists(n1:lineAmountsSimplified/n1:lineGrossAmountSimplified)">
																												<children>
																													<calltemplate subtype="named" match="LineGrossAmountHUFTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:lineAmountsSimplified">
																														<children>
																															<template subtype="element" match="n1:lineGrossAmountSimplifiedHUF">
																																<children>
																																	<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																		<parameters/>
																																	</calltemplate>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:lineDiscountData)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="LineDiscountDataTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="LineDiscountDescriptionTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																									<template subtype="element" match="n1:lineDiscountData">
																										<children>
																											<template subtype="element" match="n1:discountDescription">
																												<children>
																													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																														<parameters/>
																													</calltemplate>
																												</children>
																												<variables/>
																											</template>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="LineDiscountValueTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																									<template subtype="element" match="n1:lineDiscountData">
																										<children>
																											<template subtype="element" match="n1:discountValue">
																												<children>
																													<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																														<parameters/>
																													</calltemplate>
																												</children>
																												<variables/>
																											</template>
																										</children>
																										<variables/>
																									</template>
																									<text fixtext=" "/>
																									<autocalc xpath="$CurrencyCodeValue">
																										<styles font-weight="bold"/>
																									</autocalc>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="LineDiscountRateTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																									<template subtype="element" match="n1:lineDiscountData">
																										<children>
																											<template subtype="element" match="n1:discountRate">
																												<children>
																													<autocalc xpath=". * 100">
																														<styles font-weight="bold"/>
																													</autocalc>
																												</children>
																												<variables/>
																											</template>
																										</children>
																										<variables/>
																									</template>
																									<text fixtext=" %">
																										<styles font-weight="bold"/>
																									</text>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:advanceData/n1:advancePaymentData)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="AdvancePaymentTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:advanceData/n1:advancePaymentData)">
																												<children>
																													<calltemplate subtype="named" match="AdvanceOriginalInvoiceTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:advanceData">
																														<children>
																															<template subtype="element" match="n1:advancePaymentData">
																																<children>
																																	<template subtype="element" match="n1:advanceOriginalInvoice">
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
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:advanceData/n1:advancePaymentData)">
																												<children>
																													<calltemplate subtype="named" match="AdvancePaymentDateTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:advanceData">
																														<children>
																															<template subtype="element" match="n1:advancePaymentData">
																																<children>
																																	<template subtype="element" match="n1:advancePaymentDate">
																																		<children>
																																			<calltemplate subtype="named" match="GenericDateOffset_Inner">
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
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																									<newline/>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:advanceData/n1:advancePaymentData)">
																												<children>
																													<calltemplate subtype="named" match="AdvanceExchangeRateTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:advanceData">
																														<children>
																															<template subtype="element" match="n1:advancePaymentData">
																																<children>
																																	<template subtype="element" match="n1:advanceExchangeRate">
																																		<children>
																																			<content subtype="regular">
																																				<styles font-weight="bold"/>
																																				<format basic-type="xsd" datatype="decimal"/>
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
																											</conditionbranch>
																										</children>
																									</condition>
																									<newline/>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:productCodes)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="ProductCodesData_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<template subtype="element" match="n1:productCodes">
																										<children>
																											<autocalc xpath="string-join(n1:productCode/string-join(*, &apos; - &apos;), &apos;, &apos;)">
																												<styles font-weight="bold"/>
																											</autocalc>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="n1:intermediatedService = true()">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="IntermediatedServiceTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="n1:depositIndicator = true()">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="DepositIndicatorTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="n1:obligatedForProductFee = true()">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="ObligatedForProductFeeTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<text fixtext=" "/>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																							</tgridcell>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:productFeeClause/n1:productFeeTakeoverData)">
																												<children>
																													<calltemplate subtype="named" match="ProductFeeTakeoverTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="exists(n1:productFeeClause/n1:customerDeclaration)">
																												<children>
																													<calltemplate subtype="named" match="ProductFeeCustomerDeclarationTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1"/>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:productFeeClause)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:productFeeClause/n1:productFeeTakeoverData)">
																												<children>
																													<calltemplate subtype="named" match="TakeoverTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:productFeeClause">
																														<children>
																															<template subtype="element" match="n1:productFeeTakeoverData">
																																<children>
																																	<template subtype="element" match="n1:takeoverReason">
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
																											</conditionbranch>
																											<conditionbranch xpath="exists(n1:productFeeClause/n1:customerDeclaration)">
																												<children>
																													<calltemplate subtype="named" match="ProductStreamTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:productFeeClause">
																														<children>
																															<template subtype="element" match="n1:customerDeclaration">
																																<children>
																																	<calltemplate subtype="named" match="ProductStreamTemplate_C5X">
																																		<parameters/>
																																	</calltemplate>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:productFeeClause/n1:productFeeTakeoverData)">
																												<children>
																													<calltemplate subtype="named" match="TakeoverAmountTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:productFeeClause">
																														<children>
																															<template subtype="element" match="n1:productFeeTakeoverData">
																																<children>
																																	<template subtype="element" match="n1:takeoverAmount">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<text fixtext="HUF">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="exists(n1:productFeeClause/n1:customerDeclaration)">
																												<children>
																													<calltemplate subtype="named" match="ProductFeeWeightTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:productFeeClause">
																														<children>
																															<template subtype="element" match="n1:customerDeclaration">
																																<children>
																																	<template subtype="element" match="n1:productFeeWeight">
																																		<children>
																																			<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<text fixtext="kg">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:lineProductFeeContent)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="100%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:lineProductFeeContent">
																														<children>
																															<tgridrow>
																																<styles keep-together="always"/>
																																<children>
																																	<tgridcell>
																																		<styles border-style="none"/>
																																		<children>
																																			<autocalc xpath="string-join(./n1:productFeeCode/*, &apos; - &apos;)">
																																				<styles font-weight="bold"/>
																																			</autocalc>
																																			<text fixtext=" "/>
																																			<calltemplate subtype="named" match="ProductFeeCodeAmount_L10N">
																																				<parameters/>
																																			</calltemplate>
																																			<template subtype="element" match="n1:productFeeAmount">
																																				<children>
																																					<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																				<variables/>
																																			</template>
																																			<text fixtext=" "/>
																																			<text fixtext="HUF">
																																				<styles font-weight="bold"/>
																																			</text>
																																			<text fixtext=", "/>
																																			<calltemplate subtype="named" match="ProductFeeQuantityTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																			<template subtype="element" match="n1:productFeeQuantity">
																																				<children>
																																					<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																				<variables/>
																																			</template>
																																			<text fixtext=" "/>
																																			<template subtype="element" match="n1:productFeeMeasuringUnit">
																																				<children>
																																					<calltemplate subtype="named" match="ProductFeeMeasuringUnitTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																				<variables/>
																																			</template>
																																			<text fixtext=", "/>
																																			<calltemplate subtype="named" match="ProductFeeRateTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																			<template subtype="element" match="n1:productFeeRate">
																																				<children>
																																					<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																				<variables/>
																																			</template>
																																			<text fixtext=" "/>
																																			<text fixtext="HUF / ">
																																				<styles font-weight="bold"/>
																																			</text>
																																			<template subtype="element" match="n1:productFeeMeasuringUnit">
																																				<children>
																																					<calltemplate subtype="named" match="ProductFeeMeasuringUnitTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																				<variables/>
																																			</template>
																																		</children>
																																	</tgridcell>
																																</children>
																															</tgridrow>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:GPCExcise)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="GPCExciseTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<template subtype="element" match="n1:GPCExcise">
																										<children>
																											<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="n1:netaDeclaration = true()">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="NetaDeclarationTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:newTransportMean)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="NewTransportMeanTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:newTransportMean/n1:vehicle)">
																												<children>
																													<calltemplate subtype="named" match="EngineCapacityTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:newTransportMean">
																														<children>
																															<template subtype="element" match="n1:vehicle">
																																<children>
																																	<template subtype="element" match="n1:engineCapacity">
																																		<children>
																																			<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" cm3">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="exists(n1:newTransportMean/n1:vessel)">
																												<children>
																													<calltemplate subtype="named" match="LengthTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:newTransportMean">
																														<children>
																															<template subtype="element" match="n1:vessel">
																																<children>
																																	<template subtype="element" match="n1:length">
																																		<children>
																																			<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" m">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="exists(n1:newTransportMean/n1:aircraft)">
																												<children>
																													<calltemplate subtype="named" match="TakeOffWeightTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:newTransportMean">
																														<children>
																															<template subtype="element" match="n1:aircraft">
																																<children>
																																	<template subtype="element" match="n1:takeOffWeight">
																																		<children>
																																			<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" kg">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:newTransportMean/n1:vehicle)">
																												<children>
																													<calltemplate subtype="named" match="EnginePowerTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:newTransportMean">
																														<children>
																															<template subtype="element" match="n1:vehicle">
																																<children>
																																	<template subtype="element" match="n1:enginePower">
																																		<children>
																																			<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" kw">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="n1:newTransportMean/n1:vessel/n1:activityReferred = true() or n1:newTransportMean/n1:aircraft/n1:airCargo = true()">
																												<children>
																													<calltemplate subtype="named" match="NewTransportException">
																														<parameters/>
																													</calltemplate>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:newTransportMean/n1:vehicle)">
																												<children>
																													<calltemplate subtype="named" match="KmsTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:newTransportMean">
																														<children>
																															<template subtype="element" match="n1:vehicle">
																																<children>
																																	<template subtype="element" match="n1:kms">
																																		<children>
																																			<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" km">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="exists(n1:newTransportMean/n1:vessel)">
																												<children>
																													<calltemplate subtype="named" match="SailedHoursTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:newTransportMean">
																														<children>
																															<template subtype="element" match="n1:vessel">
																																<children>
																																	<template subtype="element" match="n1:sailedHours">
																																		<children>
																																			<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" h">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																											<conditionbranch xpath="exists(n1:newTransportMean/n1:aircraft)">
																												<children>
																													<calltemplate subtype="named" match="OperationHoursTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:newTransportMean">
																														<children>
																															<template subtype="element" match="n1:aircraft">
																																<children>
																																	<template subtype="element" match="n1:operationHours">
																																		<children>
																																			<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" h">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="count(child::n1:newTransportMean) &gt; 0">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="BrandTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																									<template subtype="element" match="n1:newTransportMean">
																										<children>
																											<template subtype="element" match="n1:brand">
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
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="SerialNumTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																									<template subtype="element" match="n1:newTransportMean">
																										<children>
																											<template subtype="element" match="n1:serialNum">
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
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="EngineNumTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																									<template subtype="element" match="n1:newTransportMean">
																										<children>
																											<template subtype="element" match="n1:engineNum">
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
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="FirstEntryIntoServiceTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																									<template subtype="element" match="n1:newTransportMean">
																										<children>
																											<template subtype="element" match="n1:firstEntryIntoService">
																												<children>
																													<calltemplate subtype="named" match="GenericDateOffset_Inner">
																														<parameters/>
																													</calltemplate>
																													<button>
																														<action>
																															<datepicker/>
																														</action>
																														<hyperlink/>
																													</button>
																												</children>
																												<variables/>
																											</template>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:dieselOilPurchase)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="DieselOilPurchaseTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="DieselOilPurchaseDateTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																									<template subtype="element" match="n1:dieselOilPurchase">
																										<children>
																											<template subtype="element" match="n1:purchaseDate">
																												<children>
																													<calltemplate subtype="named" match="GenericDateOffset_Inner">
																														<parameters/>
																													</calltemplate>
																													<button>
																														<action>
																															<datepicker/>
																														</action>
																														<hyperlink/>
																													</button>
																												</children>
																												<variables/>
																											</template>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="DieselOilPurchaseVehicleRegistrationNumberTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																									<newline/>
																									<template subtype="element" match="n1:dieselOilPurchase">
																										<children>
																											<template subtype="element" match="n1:vehicleRegistrationNumber">
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
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<condition>
																										<children>
																											<conditionbranch xpath="exists(n1:dieselOilPurchase/n1:dieselOilQuantity)">
																												<children>
																													<calltemplate subtype="named" match="DieselOilQuantityTemplate_L10N">
																														<parameters/>
																													</calltemplate>
																													<newline/>
																													<template subtype="element" match="n1:dieselOilPurchase">
																														<children>
																															<template subtype="element" match="n1:dieselOilQuantity">
																																<children>
																																	<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																		<parameters/>
																																	</calltemplate>
																																</children>
																																<variables/>
																															</template>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<text fixtext="l">
																														<styles font-weight="bold"/>
																													</text>
																												</children>
																											</conditionbranch>
																										</children>
																									</condition>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:dieselOilPurchase)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;" keep-together="always"/>
																						<children>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<calltemplate subtype="named" match="DieselOilPurchaseLocationTemplate_L10N">
																										<parameters/>
																									</calltemplate>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none"/>
																								<children>
																									<template subtype="element" match="n1:dieselOilPurchase">
																										<children>
																											<template subtype="element" match="n1:purchaseLocation">
																												<children>
																													<template subtype="element" match="base:countryCode">
																														<children>
																															<content subtype="regular">
																																<styles font-weight="bold"/>
																															</content>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<condition>
																														<children>
																															<conditionbranch xpath="exists(n1:dieselOilPurchase/n1:purchaseLocation/base:region)">
																																<children>
																																	<template subtype="element" match="base:region">
																																		<children>
																																			<content subtype="regular">
																																				<styles font-weight="bold"/>
																																			</content>
																																		</children>
																																		<variables/>
																																	</template>
																																	<text fixtext=" "/>
																																</children>
																															</conditionbranch>
																														</children>
																													</condition>
																													<template subtype="element" match="base:postalCode">
																														<children>
																															<content subtype="regular">
																																<styles font-weight="bold"/>
																															</content>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=", "/>
																													<template subtype="element" match="base:city">
																														<children>
																															<content subtype="regular">
																																<styles font-weight="bold"/>
																															</content>
																														</children>
																														<variables/>
																													</template>
																													<text fixtext=" "/>
																													<template subtype="element" match="base:additionalAddressDetail">
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:orderNumbers)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:orderNumbers">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoOrderNumberTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:orderNumber/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:deliveryNotes)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:deliveryNotes">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoDeliveryNoteTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:deliveryNote/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:shippingDates)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:shippingDates">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoShippingDateTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:shippingDate/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:contractNumbers)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:contractNumbers">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoContractNumberTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:contractNumber/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:supplierCompanyCodes)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:supplierCompanyCodes">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoSupplierCompanyCodeTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:supplierCompanyCode/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:customerCompanyCodes)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:customerCompanyCodes">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoCustomerCompanyCodeTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:customerCompanyCode/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:dealerCodes)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:dealerCodes">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoDealerCodeTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:dealerCode/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:costCenters)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:costCenters">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoCostCenterTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:costCenter/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:projectNumbers)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:projectNumbers">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoProjectNumberTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:projectNumber/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:generalLedgerAccountNumbers)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:generalLedgerAccountNumbers">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoGeneralLedgerAccountNumberTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:generalLedgerAccountNumber/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:glnNumbersSupplier)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:glnNumbersSupplier">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoGlnSupplierNumberTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:glnNumber/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:glnNumbersCustomer)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:glnNumbersCustomer">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoGlnCustomerNumberTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:glnNumber/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:materialNumbers)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:materialNumbers">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoMaterialNumberTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:materialNumber/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:itemNumbers)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:itemNumbers">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoItemNumberTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:itemNumber/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:conventionalLineInfo/n1:ekaerIds)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:conventionalLineInfo">
																														<children>
																															<template subtype="element" match="n1:ekaerIds">
																																<children>
																																	<tgridrow>
																																		<children>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<calltemplate subtype="named" match="ConventionalInfoEkaerNumberTemplate_L10N">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																			</tgridcell>
																																			<tgridcell>
																																				<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																				<children>
																																					<autocalc xpath="string-join(for $i in (string-to-codepoints($conventionalLine)) return codepoints-to-string($i), codepoints-to-string(8203))">
																																						<styles font-weight="bold"/>
																																					</autocalc>
																																				</children>
																																			</tgridcell>
																																		</children>
																																	</tgridrow>
																																</children>
																																<variables>
																																	<variable name="conventionalLine" value="string-join(n1:ekaerId/text(), &apos;, &apos;)" valuetype="&lt;auto&gt;"/>
																																</variables>
																															</template>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="exists(n1:additionalLineData)">
																						<styles _xbackground-color="if ( n1:lineNumber mod 2 = 0 ) then &quot;#FFFFFF&quot; else &quot;#E8E8E8&quot;"/>
																						<children>
																							<tgridcell>
																								<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																								<children>
																									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																										<properties border="1"/>
																										<styles border-collapse="collapse" border-style="none" width="100%"/>
																										<children>
																											<tgridbody-cols>
																												<children>
																													<tgridcol>
																														<styles width="25%"/>
																													</tgridcol>
																													<tgridcol>
																														<styles width="75%"/>
																													</tgridcol>
																												</children>
																											</tgridbody-cols>
																											<tgridbody-rows>
																												<children>
																													<template subtype="element" match="n1:additionalLineData">
																														<children>
																															<tgridrow>
																																<children>
																																	<tgridcell>
																																		<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																		<children>
																																			<template subtype="element" match="n1:dataDescription">
																																				<children>
																																					<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																				<variables/>
																																			</template>
																																			<text fixtext=":"/>
																																			<newline/>
																																			<text fixtext="("/>
																																			<template subtype="element" match="n1:dataName">
																																				<children>
																																					<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																				<variables/>
																																			</template>
																																			<text fixtext=")"/>
																																		</children>
																																	</tgridcell>
																																	<tgridcell>
																																		<styles border-left-color="black" border-left-width="1px" border-style="none"/>
																																		<children>
																																			<template subtype="element" match="n1:dataValue">
																																				<children>
																																					<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
																																						<parameters/>
																																					</calltemplate>
																																				</children>
																																				<variables/>
																																			</template>
																																			<text fixtext=" "/>
																																		</children>
																																	</tgridcell>
																																</children>
																															</tgridrow>
																														</children>
																														<variables/>
																													</template>
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
																							</tgridcell>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																							<tgridcell joinleft="1"/>
																						</children>
																					</tgridrow>
																					<tgridrow conditional-processing="position() != last()">
																						<styles height="5mm"/>
																						<children>
																							<tgridcell>
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																							<tgridcell joinleft="1">
																								<styles border-style="none"/>
																							</tgridcell>
																						</children>
																					</tgridrow>
																				</children>
																				<variables/>
																			</template>
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
															<newline/>
														</children>
														<variables/>
													</template>
												</children>
											</paragraph>
										</children>
									</conditionbranch>
								</children>
							</condition>
							<condition>
								<children>
									<conditionbranch xpath="exists(n1:productFeeSummary)">
										<children>
											<paragraph>
												<styles keep-together="always" padding-top="5mm"/>
												<children>
													<calltemplate subtype="named" match="ProductFeeSummaryTemplate_L10N">
														<parameters/>
													</calltemplate>
													<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
														<properties border="1"/>
														<styles border-collapse="collapse" border-color="black" border-style="solid" table-omit-header-at-break="true"/>
														<children>
															<tgridbody-cols>
																<children>
																	<tgridcol>
																		<styles width="47.5mm"/>
																	</tgridcol>
																	<tgridcol>
																		<styles width="47.5mm"/>
																	</tgridcol>
																	<tgridcol>
																		<styles width="47.5mm"/>
																	</tgridcol>
																	<tgridcol>
																		<styles width="47.5mm"/>
																	</tgridcol>
																</children>
															</tgridbody-cols>
															<tgridheader-rows>
																<children>
																	<tgridrow>
																		<children>
																			<tgridcell>
																				<styles border-style="none" font-weight="normal" text-align="left"/>
																				<children>
																					<calltemplate subtype="named" match="ProductFeeSummaryQuantityTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																				</children>
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none" font-weight="normal" text-align="left"/>
																				<children>
																					<calltemplate subtype="named" match="ProductFeeRateSummaryTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																				</children>
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none" font-weight="normal" text-align="left"/>
																				<children>
																					<calltemplate subtype="named" match="ProductFeeAmountSummaryTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																				</children>
																			</tgridcell>
																			<tgridcell>
																				<styles border-style="none" font-weight="normal" text-align="left"/>
																				<children>
																					<calltemplate subtype="named" match="ProductFeeCodeSummaryTemplate_L10N">
																						<parameters/>
																					</calltemplate>
																				</children>
																			</tgridcell>
																		</children>
																	</tgridrow>
																</children>
															</tgridheader-rows>
															<tgridbody-rows>
																<children>
																	<template subtype="element" match="n1:productFeeSummary">
																		<children>
																			<tgridrow>
																				<children>
																					<tgridcell>
																						<styles border-style="none"/>
																						<children>
																							<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																								<styles border-collapse="collapse" border-style="none" width="100%"/>
																								<children>
																									<tgridbody-cols>
																										<children>
																											<tgridcol>
																												<styles width="25%"/>
																											</tgridcol>
																											<tgridcol>
																												<styles width="25%"/>
																											</tgridcol>
																											<tgridcol>
																												<styles width="25%"/>
																											</tgridcol>
																											<tgridcol>
																												<styles width="25%"/>
																											</tgridcol>
																										</children>
																									</tgridbody-cols>
																									<tgridbody-rows>
																										<children>
																											<template subtype="element" match="n1:productFeeData">
																												<children>
																													<tgridrow>
																														<children>
																															<tgridcell>
																																<styles border-style="none"/>
																																<children>
																																	<template subtype="element" match="n1:productFeeQuantity">
																																		<children>
																																			<calltemplate subtype="named" match="GenericQuantityTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																	<text fixtext=" "/>
																																	<template subtype="element" match="n1:productFeeMeasuringUnit">
																																		<children>
																																			<calltemplate subtype="named" match="ProductFeeMeasuringUnitTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																															</tgridcell>
																															<tgridcell>
																																<styles border-style="none"/>
																																<children>
																																	<template subtype="element" match="n1:productFeeRate">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																	<text fixtext=" "/>
																																	<text fixtext="HUF / ">
																																		<styles font-weight="bold"/>
																																	</text>
																																	<template subtype="element" match="n1:productFeeMeasuringUnit">
																																		<children>
																																			<calltemplate subtype="named" match="ProductFeeMeasuringUnitTemplate_L10N">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																															</tgridcell>
																															<tgridcell>
																																<styles border-style="none"/>
																																<children>
																																	<template subtype="element" match="n1:productFeeAmount">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																	<text fixtext=" "/>
																																	<text fixtext="HUF">
																																		<styles font-weight="bold"/>
																																	</text>
																																</children>
																															</tgridcell>
																															<tgridcell>
																																<styles border-style="none"/>
																																<children>
																																	<autocalc xpath="string-join(./n1:productFeeCode/*, &apos; - &apos;)">
																																		<styles font-weight="bold"/>
																																	</autocalc>
																																</children>
																															</tgridcell>
																														</children>
																													</tgridrow>
																												</children>
																												<variables/>
																											</template>
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
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																				</children>
																			</tgridrow>
																			<tgridrow>
																				<children>
																					<tgridcell>
																						<styles border-style="none"/>
																						<children>
																							<calltemplate subtype="named" match="ProductChargeSumTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																							<template subtype="element" match="n1:productChargeSum">
																								<children>
																									<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																										<parameters/>
																									</calltemplate>
																								</children>
																								<variables/>
																							</template>
																							<text fixtext=" "/>
																							<text fixtext="HUF">
																								<styles font-weight="bold"/>
																							</text>
																						</children>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																				</children>
																			</tgridrow>
																			<tgridrow>
																				<children>
																					<tgridcell>
																						<styles border-style="none"/>
																						<children>
																							<calltemplate subtype="named" match="ProductFeeOperationTemplate_C5X">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																				</children>
																			</tgridrow>
																			<tgridrow conditional-processing="exists(n1:paymentEvidenceDocumentData)">
																				<children>
																					<tgridcell>
																						<styles border-style="none"/>
																						<children>
																							<calltemplate subtype="named" match="PaymentEvidenceDocumentDataTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																					<tgridcell joinleft="1"/>
																					<tgridcell joinleft="1"/>
																					<tgridcell joinleft="1"/>
																				</children>
																			</tgridrow>
																			<tgridrow conditional-processing="exists(n1:paymentEvidenceDocumentData)">
																				<children>
																					<tgridcell>
																						<styles border-style="none"/>
																						<children>
																							<calltemplate subtype="named" match="PaymentEvidenceObligatedTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																							<template subtype="element" match="n1:paymentEvidenceDocumentData">
																								<children>
																									<template subtype="element" match="n1:obligatedTaxNumber">
																										<children>
																											<calltemplate subtype="named" match="BaseTaxNumberTemplate">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																									<text fixtext=", "/>
																									<template subtype="element" match="n1:obligatedName">
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
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																				</children>
																			</tgridrow>
																			<tgridrow conditional-processing="exists(n1:paymentEvidenceDocumentData)">
																				<children>
																					<tgridcell>
																						<styles border-style="none"/>
																						<children>
																							<calltemplate subtype="named" match="PaymentEvidenceObligatedAddressTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																							<template subtype="element" match="n1:paymentEvidenceDocumentData">
																								<children>
																									<template subtype="element" match="n1:obligatedAddress">
																										<children>
																											<calltemplate subtype="named" match="BaseAddressTemplate">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																				</children>
																			</tgridrow>
																			<tgridrow conditional-processing="exists(n1:paymentEvidenceDocumentData)">
																				<children>
																					<tgridcell>
																						<styles border-style="none"/>
																						<children>
																							<calltemplate subtype="named" match="PaymentEvidenceDocumentNoTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																							<newline/>
																							<template subtype="element" match="n1:paymentEvidenceDocumentData">
																								<children>
																									<template subtype="element" match="n1:evidenceDocumentNo">
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
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-style="none"/>
																						<children>
																							<calltemplate subtype="named" match="PaymentEvidenceDocumentDateTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																							<newline/>
																							<template subtype="element" match="n1:paymentEvidenceDocumentData">
																								<children>
																									<template subtype="element" match="n1:evidenceDocumentDate">
																										<children>
																											<calltemplate subtype="named" match="GenericDateOffset_Inner">
																												<parameters/>
																											</calltemplate>
																											<button>
																												<action>
																													<datepicker/>
																												</action>
																												<hyperlink/>
																											</button>
																										</children>
																										<variables/>
																									</template>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																					<tgridcell joinleft="1"/>
																				</children>
																			</tgridrow>
																			<tgridrow conditional-processing="$ProductFeeSummaryCount &gt; 1 and position() != last()">
																				<children>
																					<tgridcell>
																						<styles border-style="none"/>
																						<children>
																							<line>
																								<properties size="1"/>
																							</line>
																						</children>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell joinleft="1">
																						<styles border-style="none"/>
																					</tgridcell>
																				</children>
																			</tgridrow>
																			<tgridrow conditional-processing="$ProductFeeSummaryCount &gt; 1 and position() != last()">
																				<styles height="1mm"/>
																				<children>
																					<tgridcell>
																						<styles border-style="none" font-weight="normal"/>
																						<children>
																							<calltemplate subtype="named" match="ProductFeeSummaryQuantityTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-style="none" font-weight="normal"/>
																						<children>
																							<calltemplate subtype="named" match="ProductFeeRateSummaryTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-style="none" font-weight="normal"/>
																						<children>
																							<calltemplate subtype="named" match="ProductFeeAmountSummaryTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-style="none" font-weight="normal"/>
																						<children>
																							<calltemplate subtype="named" match="ProductFeeCodeSummaryTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																				</children>
																			</tgridrow>
																		</children>
																		<variables/>
																	</template>
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
											</paragraph>
										</children>
									</conditionbranch>
								</children>
							</condition>
							<paragraph>
								<styles padding-top="5mm"/>
								<children>
									<template subtype="element" match="n1:invoiceSummary">
										<children>
											<condition>
												<children>
													<conditionbranch xpath="exists(n1:summaryNormal)">
														<children>
															<newline/>
															<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																<properties border="1"/>
																<styles border-collapse="collapse" border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																<children>
																	<tgridbody-cols>
																		<children>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																		</children>
																	</tgridbody-cols>
																	<tgridheader-rows>
																		<children>
																			<tgridrow>
																				<children>
																					<tgridcell>
																						<styles background-color="#E8E8E8" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-style="none" font-weight="normal" text-align="left"/>
																						<children>
																							<calltemplate subtype="named" match="VatTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-style="none" font-weight="normal" text-align="left"/>
																						<children>
																							<calltemplate subtype="named" match="NetAmountTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-style="none" font-weight="normal" text-align="left"/>
																						<children>
																							<calltemplate subtype="named" match="VatAmountTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-style="none" font-weight="normal" text-align="left"/>
																						<children>
																							<calltemplate subtype="named" match="GrossAmountTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																				</children>
																			</tgridrow>
																		</children>
																	</tgridheader-rows>
																	<tgridbody-rows>
																		<children>
																			<template subtype="element" match="n1:summaryNormal">
																				<children>
																					<template subtype="element" match="n1:summaryByVatRate">
																						<children>
																							<tgridrow>
																								<children>
																									<tgridcell>
																										<styles background-color="#E8E8E8" border-style="none"/>
																										<children>
																											<template subtype="element" match="n1:vatRate">
																												<children>
																													<calltemplate subtype="named" match="VatRateTypeTemplate_C5X">
																														<parameters/>
																													</calltemplate>
																												</children>
																												<variables/>
																											</template>
																										</children>
																									</tgridcell>
																									<tgridcell>
																										<styles border-style="none"/>
																										<children>
																											<template subtype="element" match="n1:vatRateNetData">
																												<children>
																													<template subtype="element" match="n1:vatRateNetAmount">
																														<children>
																															<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																														<variables/>
																													</template>
																												</children>
																												<variables/>
																											</template>
																											<text fixtext=" "/>
																											<autocalc xpath="$CurrencyCodeValue">
																												<styles font-weight="bold"/>
																											</autocalc>
																										</children>
																									</tgridcell>
																									<tgridcell>
																										<styles border-style="none"/>
																										<children>
																											<template subtype="element" match="n1:vatRateVatData">
																												<children>
																													<template subtype="element" match="n1:vatRateVatAmount">
																														<children>
																															<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																														<variables/>
																													</template>
																												</children>
																												<variables/>
																											</template>
																											<text fixtext=" "/>
																											<autocalc xpath="$CurrencyCodeValue">
																												<styles font-weight="bold"/>
																											</autocalc>
																										</children>
																									</tgridcell>
																									<tgridcell>
																										<styles border-style="none"/>
																										<children>
																											<condition>
																												<children>
																													<conditionbranch xpath="exists(n1:vatRateGrossData)">
																														<children>
																															<template subtype="element" match="n1:vatRateGrossData">
																																<children>
																																	<template subtype="element" match="n1:vatRateGrossAmount">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																															<text fixtext=" "/>
																															<autocalc xpath="$CurrencyCodeValue">
																																<styles font-weight="bold"/>
																															</autocalc>
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
																										<styles background-color="#E8E8E8" border-style="none"/>
																										<children>
																											<calltemplate subtype="named" match="InvoiceSummaryInHUFTemplate_L10N">
																												<parameters/>
																											</calltemplate>
																										</children>
																									</tgridcell>
																									<tgridcell>
																										<styles border-style="none"/>
																										<children>
																											<template subtype="element" match="n1:vatRateNetData">
																												<children>
																													<template subtype="element" match="n1:vatRateNetAmount">
																														<children>
																															<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																														<variables/>
																													</template>
																												</children>
																												<variables/>
																											</template>
																											<text fixtext=" "/>
																											<text fixtext="HUF">
																												<styles font-weight="bold"/>
																											</text>
																										</children>
																									</tgridcell>
																									<tgridcell>
																										<styles border-style="none"/>
																										<children>
																											<template subtype="element" match="n1:vatRateVatData">
																												<children>
																													<template subtype="element" match="n1:vatRateVatAmountHUF">
																														<children>
																															<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																														<variables/>
																													</template>
																												</children>
																												<variables/>
																											</template>
																											<text fixtext=" "/>
																											<text fixtext="HUF">
																												<styles font-weight="bold"/>
																											</text>
																										</children>
																									</tgridcell>
																									<tgridcell>
																										<styles border-style="none"/>
																										<children>
																											<condition>
																												<children>
																													<conditionbranch xpath="exists(n1:vatRateGrossData)">
																														<children>
																															<template subtype="element" match="n1:vatRateGrossData">
																																<children>
																																	<template subtype="element" match="n1:vatRateGrossAmountHUF">
																																		<children>
																																			<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																				<parameters/>
																																			</calltemplate>
																																		</children>
																																		<variables/>
																																	</template>
																																</children>
																																<variables/>
																															</template>
																															<text fixtext=" "/>
																															<text fixtext="HUF">
																																<styles font-weight="bold"/>
																															</text>
																														</children>
																													</conditionbranch>
																												</children>
																											</condition>
																										</children>
																									</tgridcell>
																								</children>
																							</tgridrow>
																						</children>
																						<variables/>
																					</template>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridbody-rows>
																	<tgridfooter-rows>
																		<children>
																			<tgridrow>
																				<styles height="2.5mm"/>
																				<children>
																					<tgridcell>
																						<styles background-color="#E8E8E8" border-style="none"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-style="none"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-style="none"/>
																					</tgridcell>
																				</children>
																			</tgridrow>
																			<tgridrow>
																				<children>
																					<tgridcell>
																						<styles background-color="#E8E8E8" border-color="black" border-style="none" font-size="9pt"/>
																						<children>
																							<calltemplate subtype="named" match="InvoiceSummarySumTotalTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-color="black" border-style="solid"/>
																						<children>
																							<template subtype="element" match="n1:summaryNormal">
																								<children>
																									<template subtype="element" match="n1:invoiceNetAmount">
																										<children>
																											<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																								</children>
																								<variables/>
																							</template>
																							<text fixtext=" "/>
																							<autocalc xpath="$CurrencyCodeValue">
																								<styles font-weight="bold"/>
																							</autocalc>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-color="black" border-style="solid"/>
																						<children>
																							<template subtype="element" match="n1:summaryNormal">
																								<children>
																									<template subtype="element" match="n1:invoiceVatAmount">
																										<children>
																											<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																								</children>
																								<variables/>
																							</template>
																							<text fixtext=" "/>
																							<autocalc xpath="$CurrencyCodeValue">
																								<styles font-weight="bold"/>
																							</autocalc>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles _xborder-bottom-color="if (exists(n1:summaryGrossData)) then &apos;black&apos; else &apos;white&apos;" _xborder-right-color="if (exists(n1:summaryGrossData)) then &apos;black&apos; else &apos;white&apos;" _xborder-top-color="if (exists(n1:summaryGrossData)) then &apos;black&apos; else &apos;white&apos;" border-left-color="black" border-style="solid"/>
																						<children>
																							<condition>
																								<children>
																									<conditionbranch xpath="exists(n1:summaryGrossData)">
																										<children>
																											<template subtype="element" match="n1:summaryGrossData">
																												<children>
																													<template subtype="element" match="n1:invoiceGrossAmount">
																														<children>
																															<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																														<variables/>
																													</template>
																												</children>
																												<variables/>
																											</template>
																											<text fixtext=" "/>
																											<autocalc xpath="$CurrencyCodeValue">
																												<styles font-weight="bold"/>
																											</autocalc>
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
																						<styles background-color="#E8E8E8" border-color="black" border-style="none" font-size="9pt"/>
																						<children>
																							<calltemplate subtype="named" match="InvoiceSummarySumTotalInHUFTemplate_L10N">
																								<parameters/>
																							</calltemplate>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-color="black" border-style="solid"/>
																						<children>
																							<template subtype="element" match="n1:summaryNormal">
																								<children>
																									<template subtype="element" match="n1:invoiceNetAmountHUF">
																										<children>
																											<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																								</children>
																								<variables/>
																							</template>
																							<text fixtext=" "/>
																							<text fixtext="HUF">
																								<styles font-weight="bold"/>
																							</text>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-color="black" border-style="solid"/>
																						<children>
																							<template subtype="element" match="n1:summaryNormal">
																								<children>
																									<template subtype="element" match="n1:invoiceVatAmountHUF">
																										<children>
																											<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																								</children>
																								<variables/>
																							</template>
																							<text fixtext=" HUF">
																								<styles font-weight="bold"/>
																							</text>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles _xborder-bottom-color="if (exists(n1:summaryGrossData)) then &apos;black&apos; else &apos;white&apos;" _xborder-right-color="if (exists(n1:summaryGrossData)) then &apos;black&apos; else &apos;white&apos;" _xborder-top-color="if (exists(n1:summaryGrossData)) then &apos;black&apos; else &apos;white&apos;" border-left-color="black" border-style="solid"/>
																						<children>
																							<condition>
																								<children>
																									<conditionbranch xpath="exists(n1:summaryGrossData)">
																										<children>
																											<template subtype="element" match="n1:summaryGrossData">
																												<children>
																													<template subtype="element" match="n1:invoiceGrossAmountHUF">
																														<children>
																															<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																														<variables/>
																													</template>
																												</children>
																												<variables/>
																											</template>
																											<text fixtext=" "/>
																											<text fixtext="HUF">
																												<styles font-weight="bold"/>
																											</text>
																										</children>
																									</conditionbranch>
																								</children>
																							</condition>
																						</children>
																					</tgridcell>
																				</children>
																			</tgridrow>
																		</children>
																	</tgridfooter-rows>
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
													</conditionbranch>
													<conditionbranch xpath="exists(n1:summarySimplified)">
														<children>
															<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
																<properties border="1"/>
																<styles border-collapse="collapse" border-style="none" table-omit-header-at-break="true"/>
																<children>
																	<tgridbody-cols>
																		<children>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																			<tgridcol>
																				<styles width="47.5mm"/>
																			</tgridcol>
																		</children>
																	</tgridbody-cols>
																	<tgridheader-rows>
																		<children>
																			<tgridrow>
																				<children>
																					<tgridcell>
																						<styles background-color="#E8E8E8" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true" text-align="left"/>
																						<children>
																							<text fixtext="ÁFA"/>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true" text-align="left"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true" text-align="left"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1px" border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true" text-align="left"/>
																						<children>
																							<text fixtext="Bruttó összeg"/>
																						</children>
																					</tgridcell>
																				</children>
																			</tgridrow>
																		</children>
																	</tgridheader-rows>
																	<tgridbody-rows>
																		<children>
																			<template subtype="element" match="n1:summarySimplified">
																				<children>
																					<tgridrow>
																						<children>
																							<tgridcell>
																								<styles background-color="#E8E8E8" border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																								<children>
																									<template subtype="element" match="n1:vatRate">
																										<children>
																											<calltemplate subtype="named" match="VatRateTypeTemplate_C5X">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																								<children>
																									<text fixtext=" "/>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																								<children>
																									<template subtype="element" match="n1:vatContentGrossAmount">
																										<children>
																											<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																									<text fixtext="  "/>
																									<autocalc xpath="$CurrencyCodeValue">
																										<styles font-weight="bold"/>
																									</autocalc>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																					<tgridrow>
																						<children>
																							<tgridcell>
																								<styles background-color="#E8E8E8" border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																								<children>
																									<text fixtext="Forintban: "/>
																								</children>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																							</tgridcell>
																							<tgridcell>
																								<styles border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																								<children>
																									<template subtype="element" match="n1:vatContentGrossAmountHUF">
																										<children>
																											<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																												<parameters/>
																											</calltemplate>
																										</children>
																										<variables/>
																									</template>
																									<text fixtext=" "/>
																									<text fixtext="HUF">
																										<styles font-weight="bold"/>
																									</text>
																								</children>
																							</tgridcell>
																						</children>
																					</tgridrow>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridbody-rows>
																	<tgridfooter-rows>
																		<children>
																			<tgridrow>
																				<styles height="2.5mm"/>
																				<children>
																					<tgridcell>
																						<styles background-color="#E8E8E8" border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																					</tgridcell>
																				</children>
																			</tgridrow>
																			<tgridrow>
																				<children>
																					<tgridcell>
																						<styles background-color="#E8E8E8" font-size="9pt" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																						<children>
																							<text fixtext="Mindösszesen:">
																								<styles font-weight="bold"/>
																							</text>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-bottom-style="none" border-right-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-bottom-style="none" border-left-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																					</tgridcell>
																					<tgridcell>
																						<styles table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																						<children>
																							<condition>
																								<children>
																									<conditionbranch xpath="exists(n1:summaryGrossData)">
																										<children>
																											<template subtype="element" match="n1:summaryGrossData">
																												<children>
																													<template subtype="element" match="n1:invoiceGrossAmount">
																														<children>
																															<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																														<variables/>
																													</template>
																												</children>
																												<variables/>
																											</template>
																											<text fixtext=" "/>
																											<autocalc xpath="$CurrencyCodeValue">
																												<styles font-weight="bold"/>
																											</autocalc>
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
																						<styles background-color="#E8E8E8" font-size="9pt" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																						<children>
																							<text fixtext="Forintban:">
																								<styles font-weight="bold"/>
																							</text>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<styles border-right-style="none" border-top-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																					</tgridcell>
																					<tgridcell>
																						<styles border-left-style="none" border-top-style="none" table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																					</tgridcell>
																					<tgridcell>
																						<styles table-omit-footer-at-break="true" table-omit-header-at-break="true"/>
																						<children>
																							<condition>
																								<children>
																									<conditionbranch xpath="exists(n1:summaryGrossData)">
																										<children>
																											<template subtype="element" match="n1:summaryGrossData">
																												<children>
																													<template subtype="element" match="n1:invoiceGrossAmountHUF">
																														<children>
																															<calltemplate subtype="named" match="GenericMonetaryTypeOffset">
																																<parameters/>
																															</calltemplate>
																														</children>
																														<variables/>
																													</template>
																												</children>
																												<variables/>
																											</template>
																											<text fixtext=" "/>
																											<text fixtext="HUF">
																												<styles font-weight="bold"/>
																											</text>
																										</children>
																									</conditionbranch>
																								</children>
																							</condition>
																						</children>
																					</tgridcell>
																				</children>
																			</tgridrow>
																		</children>
																	</tgridfooter-rows>
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
													</conditionbranch>
												</children>
											</condition>
											<newline/>
										</children>
										<variables/>
									</template>
								</children>
							</paragraph>
						</children>
						<variables>
							<variable name="CurrencyCodeValue" value="n1:invoiceHead/n1:invoiceDetail/n1:currencyCode" valuetype="&lt;auto&gt;"/>
							<variable name="ProductFeeSummaryCount" value="count(n1:productFeeSummary)" valuetype="&lt;auto&gt;"/>
						</variables>
					</template>
				</children>
			</globaltemplate>
		</children>
	</globalparts>
	<designfragments>
		<children>
			<globaltemplate subtype="named" match="InvoiceCategoryTemplate">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Számla típusa: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Type of invoice: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="RechnungsTyp: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
					<condition>
						<children>
							<conditionbranch xpath="n1:invoiceCategory = &apos;NORMAL&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Normál számla">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Regular invoice">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Normales Rechnung">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:invoiceCategory = &apos;SIMPLIFIED&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Egyszerűsített számla">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Simplified invoice">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Vereinfachte Rechnung">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:invoiceCategory = &apos;AGGREGATE&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Gyűjtő számla">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Aggregated invoice">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Aggregierte Rechnung">
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
			<globaltemplate subtype="named" match="InvoiceAppearanceTemplate">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Megjelenési forma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Invoice appearance: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Erscheinungsform: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
					<condition>
						<children>
							<conditionbranch xpath="n1:invoiceAppearance = &apos;PAPER&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Papír">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Paper">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Papier">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:invoiceAppearance = &apos;ELECTRONIC&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Elektronikus">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Electronic">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Electronish">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:invoiceAppearance = &apos;EDI&apos;">
								<children>
									<text fixtext="EDI">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:invoiceAppearance = &apos;UNKNOWN&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Ismeretlen">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Unknown">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Unbekannt">
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
			<globaltemplate subtype="named" match="PeriodicalSettlementTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Folyamatos teljesítésű ügylet">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Periodic settlement">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Periodische Abrechnung">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="PaymentMethodTemplate_C5X">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Fizetési mód: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Payment method: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Zahlungsweise: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
					<condition>
						<children>
							<conditionbranch xpath="n1:paymentMethod = &apos;TRANSFER&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Átutalás">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Bank transfer">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Banküberweisung">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:paymentMethod = &apos;CASH&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Készpénz">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Cash">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Bargeld">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:paymentMethod = &apos;CARD&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Kártya">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Card">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Karte">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:paymentMethod = &apos;VOUCHER&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Utalvány, váltó">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Voucher, bill of exchange">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Gutschein, Weschel">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:paymentMethod = &apos;OTHER&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Egyéb">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Other">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Sonstiges">
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
			<globaltemplate subtype="named" match="CashAccountingIndicatorTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Pénzforgalmi elszámolás">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Cash accounting">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Verrechnung des Geldverkehrs">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="SelfBillingIncidatorTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Önszámlázás">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Self billing">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Selbstfakturierung">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="UtilitySettlementIndicatorTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Közmű elszámoló számla">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Public utility settlement invoice">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Verrechnungskonto für Versorgungsunternehmen">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="OriginalInvoiceNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Módosított számla sorszáma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Original invoice reference number: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Original Rechnungsreferenznummer: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ModificationIndexTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Módosítás sorszáma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Modification index: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Änderungsindex: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="SellerTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="ELADÓ">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="SELLER">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="VERKÄUFER">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="BuyerTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="VEVŐ">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="CUSTOMER">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="KUNDE">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="TaxNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Adószám: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Tax number: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Steuernummer: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="TaxNumberGroupTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Csoportazonosító szám: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Group identifier number: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Gruppenidentifikationsnummer: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="CommunityVatNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Közösségi adószám: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="EU VAT number: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="EU-Steuernummer: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ThirdStateTaxIdTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Harmadik országbeli adóazonosító: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Third state tax ID: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Dritte staatliche Steuer ID: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="GroupMemberTaxNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Csoporttag adószáma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Group member tax number: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Steuernummer des Gruppenmitglieds: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceHeadNameTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Név: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Name: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Name: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceHeadAddressTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Cím: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Address: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Anschrift: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="FiscalRepresentativeNameTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Pénzügyi képviselő neve: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Fiscal representative&apos;s name: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Name des Finanzvertreters: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceDeliveryDateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Teljesítés dátuma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Delivery date: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Lieferdatum: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceAccountingDeliveryDateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Számviteli teljesítés dátuma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Accounting delivery date: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Abrechnungsdatum: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceDeliveryPeriodStartTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Teljesítési időszak kezdete: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Start of delivery period: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Beginn der Lieferfrist: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceDeliveryPeriodEndTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Teljesítési időszak vége: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="End of delivery date: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Ende der Lieferfrist: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="PaymentDateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Fizetési határidő: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Payment date: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Zahlungsfrist: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="CurrencyCodeTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Számla pénzneme: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Invoice currency: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Währung der Rechnung: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ExchangeRateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Átváltási árfolyam: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Exchange rate: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Tauschrate: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoOrderNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Megrendelés szám(ok):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Order number(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Bestellnummer(n):"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoDeliveryNoteTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Szállítólevél szám(ok):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Delivery note(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Lieferschein(en):"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoShippingDateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Szállítási dátum(ok):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Shipping date(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Versanddatum (daten):"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="GenericDateOffset_Inner">
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
			<globaltemplate subtype="named" match="AggregateInstructionsTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Ld: tételsorok!">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="See invoice lines!">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Siehe Rechnungspositionen!">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="PrivatePersonTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="A vevő nem áfaalany természetes személy, ezért adatai az adatszolgáltatásban nem szerepelnek.">
										<styles color="red" font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="The customer is non-VAT liable natural person and therefore his / her data is not included in the data report.">
										<styles color="red" font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Der Kunde ist eine nicht umsatzsteuerpflichtige natürliche Person und daher werden seine Daten nicht in den Rechnungsdatenberichts aufgenommen.">
										<styles color="red" font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="SmallBusinessIndicatorTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="(kisadózó)">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="(low-tax bracket enterprise)">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="(kleinunternehmer)">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="IndividualExemptionTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="(alanyi áfamentes)">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="(individual VAT exempt)">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="(Individuell steuerfrei)">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="BankAccountNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Bankszámlaszám: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Bank account number: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Bankkontonummer: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ExciseLicensNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Jövedéki engedély száma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Excise license number: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Verbrauchsteuer-Lizenznummer: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoContractNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Szerződésszám(ok):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Contract number(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Vertragsnummer(n):"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoSupplierCompanyCodeTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Eladó vállalati kódja(i):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Supplier company code(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Buchungskreise(n) des Verkäufer:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoCustomerCompanyCodeTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Vevő vállalati kódja(i):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Customer company codes:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Buchungskreise(n) des Kunden:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoDealerCodeTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Beszállító kód(ok):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Dealer code(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Händlercode(n):"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoCostCenterTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Költséghely(ek):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Cost center(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Kostenstelle(n):"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoProjectNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Projektszám(ok):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Project number(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Projektnummer(n):"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoGeneralLedgerAccountNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Főkönyvi számlaszám(ok)"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="General ledger account number(s)"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Hauptbuchkontonummer(n)"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoGlnSupplierNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Kiállítói globális helyazonosító szám(ok):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Supplier global location number(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Globale Standortnummer(n) des Verkäufer:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoGlnCustomerNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Vevői globális helyazonosító szám(ok):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Customer global location number(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Globale Standortnummer(n) des Kunden:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoMaterialNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Anyagszám(ok):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Material number(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Materialnummer(n):"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoItemNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Cikkszám(ok):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Item number(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Artikelnummer(n):"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ConventionalInfoEkaerNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="EKÁER azonosító(k):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="EKAER ID(s):"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="EKAER ID(s):"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="GenericQuantityTypeOffset">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<autocalc xpath="translate(replace(format-number(., &apos;###,###,###,##0.##########&apos;), &apos;,&apos;, &apos; &apos;), &apos;.&apos;, &apos;,&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<autocalc xpath="format-number(., &apos;###,###,###,##0.##########&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<autocalc xpath="translate(translate(replace(format-number(., &apos;###,###,###,##0.##########&apos;), &apos;,&apos;, &apos; &apos;), &apos;.&apos;, &apos;,&apos;), &apos; &apos;, &apos;.&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="GenericMonetaryTypeOffset">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<autocalc xpath="translate(replace(format-number(., &apos;#,###,###,###,###,##0.##&apos;), &apos;,&apos;, &apos; &apos;), &apos;.&apos;, &apos;,&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<autocalc xpath="format-number(., &apos;#,###,###,###,###,##0.##&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<autocalc xpath="translate(translate(replace(format-number(., &apos;#,###,###,###,###,##0.##&apos;), &apos;,&apos;, &apos; &apos;), &apos;.&apos;, &apos;,&apos;), &apos; &apos;, &apos;.&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
				<parameters/>
				<children>
					<autocalc xpath="string-join(for $i in (string-to-codepoints(.)) return codepoints-to-string($i), codepoints-to-string(8203))">
						<styles font-weight="bold"/>
					</autocalc>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="VatRateTypeTemplate_C5X">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="exists(n1:vatPercentage)">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="ÁFA mérték"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="VAT percentage"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="MwSt Prozentsatz"/>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=": "/>
									<autocalc xpath="n1:vatPercentage * 100">
										<styles font-weight="bold"/>
									</autocalc>
									<text fixtext=" %">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="exists(n1:vatContent)">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="ÁFA tartalom"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="VAT content"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="MwSt Inhalt"/>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=": "/>
									<autocalc xpath="xs:decimal(n1:vatContent) * 100">
										<styles font-weight="bold"/>
									</autocalc>
									<text fixtext=" %">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="exists(n1:vatExemption)">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="ÁFA"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="VAT"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="MwSt"/>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=": "/>
									<template subtype="element" match="n1:vatExemption">
										<children>
											<template subtype="element" match="n1:case">
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
							</conditionbranch>
							<conditionbranch xpath="exists(n1:vatOutOfScope)">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="ÁFA"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="VAT"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="MwSt"/>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=": "/>
									<template subtype="element" match="n1:vatOutOfScope">
										<children>
											<template subtype="element" match="n1:case">
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
							</conditionbranch>
							<conditionbranch xpath="n1:vatDomesticReverseCharge = true()">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="ÁFA"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="VAT"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="MwSt"/>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=": "/>
									<text fixtext="FAD">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="exists(n1:marginSchemeIndicator)">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="ÁFA"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="VAT"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="MwSt"/>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=": "/>
									<condition>
										<children>
											<conditionbranch xpath="n1:marginSchemeIndicator = &apos;TRAVEL_AGENCY&apos;">
												<children>
													<text fixtext="KAU">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="n1:marginSchemeIndicator = &apos;SECOND_HAND&apos;">
												<children>
													<text fixtext="KAH">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="n1:marginSchemeIndicator = &apos;ARTWORK&apos;">
												<children>
													<text fixtext="KAM">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="n1:marginSchemeIndicator = &apos;ANTIQUES&apos;">
												<children>
													<text fixtext="KAR">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="exists(n1:vatAmountMismatch)">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="ÁFA"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="VAT"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="MwSt"/>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=": "/>
									<autocalc xpath="n1:vatAmountMismatch/n1:vatRate * 100">
										<styles font-weight="bold"/>
									</autocalc>
									<text fixtext=" "/>
									<text fixtext="%">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:noVatCharge = true()">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="ÁFA"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="VAT"/>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="MwSt"/>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=": "/>
									<text fixtext="NFA">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="VatReasonTemplate_C5X">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="exists(n1:vatExemption/n1:reason)">
								<children>
									<template subtype="element" match="n1:vatExemption">
										<children>
											<template subtype="element" match="n1:reason">
												<children>
													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
														<parameters/>
													</calltemplate>
												</children>
												<variables/>
											</template>
										</children>
										<variables/>
									</template>
								</children>
							</conditionbranch>
							<conditionbranch xpath="exists(n1:vatOutOfScope/n1:reason)">
								<children>
									<template subtype="element" match="n1:vatOutOfScope">
										<children>
											<template subtype="element" match="n1:reason">
												<children>
													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
														<parameters/>
													</calltemplate>
												</children>
												<variables/>
											</template>
										</children>
										<variables/>
									</template>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:vatDomesticReverseCharge = true()">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Belföldi fordított adózás">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Domestic reverse charging">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Umgekehrte Gebühr im Inland">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="exists(n1:marginSchemeIndicator)">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="n1:marginSchemeIndicator = &apos;TRAVEL_AGENCY&apos;">
												<children>
													<condition>
														<children>
															<conditionbranch xpath="$lang = &apos;HU&apos;">
																<children>
																	<text fixtext="Különbözet szerinti szabályozás - utazási irodák">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
															<conditionbranch xpath="$lang = &apos;EN&apos;">
																<children>
																	<text fixtext="Margin scheme taxation - travel agencies">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
															<conditionbranch xpath="$lang = &apos;DE&apos;">
																<children>
																	<text fixtext="Differenzbesteuerung - Reiseagenturen">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
														</children>
													</condition>
												</children>
											</conditionbranch>
											<conditionbranch xpath="n1:marginSchemeIndicator = &apos;SECOND_HAND&apos;">
												<children>
													<condition>
														<children>
															<conditionbranch xpath="$lang = &apos;HU&apos;">
																<children>
																	<text fixtext="Különbözet szerinti szabályozás - használt cikkek">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
															<conditionbranch xpath="$lang = &apos;EN&apos;">
																<children>
																	<text fixtext="Margin scheme taxation - second hand goods">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
															<conditionbranch xpath="$lang = &apos;DE&apos;">
																<children>
																	<text fixtext="Differenzbesteuerung - Gebrauchtwaren">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
														</children>
													</condition>
												</children>
											</conditionbranch>
											<conditionbranch xpath="n1:marginSchemeIndicator = &apos;ARTWORK&apos;">
												<children>
													<condition>
														<children>
															<conditionbranch xpath="$lang = &apos;HU&apos;">
																<children>
																	<text fixtext="Különbözet szerinti szabályozás - műalkotások">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
															<conditionbranch xpath="$lang = &apos;EN&apos;">
																<children>
																	<text fixtext="Margin scheme taxation - works of art">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
															<conditionbranch xpath="$lang = &apos;DE&apos;">
																<children>
																	<text fixtext="Differenzbesteuerung - Kunstwerke">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
														</children>
													</condition>
												</children>
											</conditionbranch>
											<conditionbranch xpath="n1:marginSchemeIndicator = &apos;ANTIQUES&apos;">
												<children>
													<condition>
														<children>
															<conditionbranch xpath="$lang = &apos;HU&apos;">
																<children>
																	<text fixtext="Különbözet szerinti szabályozás - gyűjteménydarabok és régiségek">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
															<conditionbranch xpath="$lang = &apos;EN&apos;">
																<children>
																	<text fixtext="Margin scheme taxation - collector&apos;s item and antiques">
																		<styles font-weight="bold"/>
																	</text>
																</children>
															</conditionbranch>
															<conditionbranch xpath="$lang = &apos;DE&apos;">
																<children>
																	<text fixtext="Differenzbesteuerung - Sammlerstücke und Antiquitäten">
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
							</conditionbranch>
							<conditionbranch xpath="exists(n1:vatAmountMismatch)">
								<children>
									<template subtype="element" match="n1:vatAmountMismatch">
										<children>
											<template subtype="element" match="n1:case">
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
							</conditionbranch>
							<conditionbranch xpath="n1:noVatCharge = true()">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Nincs felszámított adó az ÁFA törvény 17.§ alapján.">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="No VAT is charged under Section 17 of the VAT Act.">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Nach § 17 des Mehrwertsteuergesetzes wird keine Mehrwertsteuer erhoben.">
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
			<globaltemplate subtype="named" match="MergedItemTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Az adatszolgáltatás összevont soradatokat tartalmaz!">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="The invoice data report contains merged line data!">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Der Rechnungsdatenbericht enthält zusammengeführte Zeilendaten!">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Tétel sorszám: ">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Line number: ">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Zeilennummer: ">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineOperationCreateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Eredeti számlán létrehozott új tétel sorszáma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Line number of newly created item on original invoice: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Zeilennummer des neu erstellten Artikels auf der Originalrechnung: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineOperationModifyTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Eredeti számla módosítással érintett tétel sorszáma: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Line number of modified item on original invoice: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Zeilennummer des geänderten Artikels auf der Originalrechnung: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ReferenceToOtherLineTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Kapcsolódó tételek: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Referenced lines: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Referenzierte Zeilen: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="AdvanceIndicatorTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="(Előleg jellegű tétel)">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="(Advance payment type)"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="(Vorauszahlungsart)"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineDescriptionTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Megnevezés: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Description: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Beschreibung: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="QuantityTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Mennyiség:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Quantity:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Menge:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="UnitOfMeasureTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Mennyiségi egység:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Unit of measure:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Mengeneinheit:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineDeliveryDateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Tétel teljesítési dátuma:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Line delivery date:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Lieferdatum der Linie:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineExchangeRateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Tétel átváltási árfolyama:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Line exchange rate:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Wechselkurs der Linie:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="UnitPriceTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Egységár:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Unit price:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Einheitpreis:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="NetAmountTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Nettó összeg:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Net amount:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Nettobetrag:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="VatAmountTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Áfa összeg:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="VAT amount:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="MwSt Betrag:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="GrossAmountTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Bruttó összeg:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Gross amount:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Bruttowert:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="VatDescriptionTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Áfa eset leírása: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="VAT case description: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Beschreibung des Mwst: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="UnitPriceHUFTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Egységár forintban:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Unit price in HUF:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Einheitpreis im HUF:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineNetAmountHUFTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Nettó forintban:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Net amount in HUF:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Nettobetrag im HUF:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineVatAmountHUFTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Áfa forintban:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="VAT amount in HUF:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="MwSt Betrag im HUF:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineGrossAmountHUFTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Bruttó forintban:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Gross amount in HUF:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Bruttowert im HUF:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineDiscountDataTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Tételsor árengedmény adatok">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Line discount data">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Rabattdaten der Linie">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineDiscountDescriptionTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Leírása:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Description:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Bezeichnung:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineDiscountValueTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Összege:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Sum:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Summe:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LineDiscountRateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Aránya:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Rate:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Bewertung:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="AdvancePaymentTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Előleg beszámítás adatok">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Advance payment data">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Vorauszahlungsdaten">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="AdvanceOriginalInvoiceTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Előlegszámla sorszáma:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Advance payment invoice number:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Vorauszahlungsrechnung:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="AdvancePaymentDateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Előleg fizetésének dátuma:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Advance payment date:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Datum der Vorauszahlung:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="AdvanceExchangeRateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Előleg árfolyama:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Exchange rate of advance payment:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Wechselkurs der Vorauszahlung:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductCodesData_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Termékkód adatok:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Product codes data:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Daten zu Produktcodes:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="IntermediatedServiceTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="A tétel közvetített szolgáltatást tartalmaz.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="The item is an intermediated service.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Der Artikel enthält einen vermittelten Dienst.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="DepositIndicatorTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="A tétel betétdíj jellegű.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="The item is of a deposit nature.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Der Artikel hat Pfandcharakter.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ObligatedForProductFeeTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="A tételt termékdíj fizetési kötelezettség terheli.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="The item is liable to product fee.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Der Artikel unterliegt der Produktgebühr">
										<styles font-weight="bold"/>
									</text>
									<text fixtext="."/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="NetaDeclarationTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="A tétel vonatkozásában a Neta törvényben (2011. évi CIII. törvény) meghatározott adófizetési kötelezettség az eladót terheli.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="In the relation of the item, the seller is liable to pay the tax specified in the Neta Act (Act CIII of 2011).">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="In Bezug auf den Artikel ist der Verkäufer verpflichtet, die im Neta-Gesetz (Gesetz CIII von 2011) festgelegte Steuer zu zahlen.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="BrandTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Gyártmány / típus:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Brand / type:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Marke / Typ:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="SerialNumTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Alvázszám / gyári szám:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Chassis / serial number:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Fahrgestell / Seriennummer:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="EngineNumTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Motorszám:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Engine number:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Motornummer:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="FirstEntryIntoServiceTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Első forgalomba helyezés időpontja:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="First entry into service:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Erstinbetriebnahme:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="NewTransportMeanTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Új közlekedési eszköz"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="New means of transport"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Neuen Verkehrsmitteln"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
					<text fixtext=" - "/>
					<condition>
						<children>
							<conditionbranch xpath="exists(n1:newTransportMean/n1:vehicle)">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="szárazföldi">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="land vehicle">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="landfahrzeug">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="exists(n1:newTransportMean/n1:vessel)">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="vízi">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="watercraft">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Wasserfahrzeug">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="exists(n1:newTransportMean/n1:aircraft)">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="légi">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="aircraft">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Flugzeug">
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
			<globaltemplate subtype="named" match="EngineCapacityTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Hengerűrtartalom:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Engine capacity:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Motorleistung:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="LengthTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Hossza:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Length:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Länge:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="TakeOffWeightTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Felszállási tömeg:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Take off weight:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Start - Masse:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="KmsTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Futott kilométer:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Kilometers traveled:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Gefahrene Kilometer:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="SailedHoursTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Hajózott órák:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Sailed hours:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Stunden gesegelt:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="OperationHoursTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Repült órák:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Aviated hours:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Geflogene Stunden:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="EnginePowerTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Teljesítmény:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Output:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Leistung:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="NewTransportException">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Áfa törvény 259.§ 25.">
										<styles font-weight="bold"/>
									</text>
									<condition>
										<children>
											<conditionbranch xpath="n1:newTransportMean/n1:vessel/n1:activityReferred = true()">
												<children>
													<text fixtext="b">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="n1:newTransportMean/n1:aircraft/n1:airCargo = true()">
												<children>
													<text fixtext="c">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=") szerinti kivétel">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Exception under Section 259 (25)">
										<styles font-weight="bold"/>
									</text>
									<text fixtext=" "/>
									<condition>
										<children>
											<conditionbranch xpath="n1:newTransportMean/n1:vessel/n1:activityReferred = true()">
												<children>
													<text fixtext="b">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="n1:newTransportMean/n1:aircraft/n1:airCargo = true()">
												<children>
													<text fixtext="c">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=" "/>
									<text fixtext="of the VAT Act">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Ausnahme gemäß § 259 Nr.25 Buchstabe">
										<styles font-weight="bold"/>
									</text>
									<text fixtext=" "/>
									<condition>
										<children>
											<conditionbranch xpath="n1:newTransportMean/n1:vessel/n1:activityReferred = true()">
												<children>
													<text fixtext="b">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="n1:newTransportMean/n1:aircraft/n1:airCargo = true()">
												<children>
													<text fixtext="c">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<text fixtext=" UStG.">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="GenericExchangeRateOffset">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<autocalc xpath="translate(replace(format-number(., &apos;##,###,##0.00####&apos;), &apos;,&apos;, &apos; &apos;), &apos;.&apos;, &apos;,&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<autocalc xpath="format-number(., &apos;##,###,##0.00####&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<autocalc xpath="translate(translate(replace(format-number(., &apos;##,###,##0.00####&apos;), &apos;,&apos;, &apos; &apos;), &apos;.&apos;, &apos;,&apos;), &apos; &apos;, &apos;.&apos;)">
										<styles font-weight="bold"/>
									</autocalc>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="GPCExciseTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Földgáz, villamos energia, szén jövedéki adója forintban: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Excise duty on natural gas, electricity and coal in HUF: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Verbrauchsteuer auf Erdgas, Strom und Kohle in HUF: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="BaseTaxNumberTemplate">
				<parameters/>
				<children>
					<template subtype="element" match="base:taxpayerId">
						<children>
							<content subtype="regular">
								<styles font-weight="bold"/>
							</content>
						</children>
						<variables/>
					</template>
					<condition>
						<children>
							<conditionbranch xpath="exists(base:vatCode)">
								<children>
									<text fixtext="-"/>
									<template subtype="element" match="base:vatCode">
										<children>
											<content subtype="regular">
												<styles font-weight="bold"/>
											</content>
										</children>
										<variables/>
									</template>
								</children>
							</conditionbranch>
						</children>
					</condition>
					<condition>
						<children>
							<conditionbranch xpath="exists(base:countyCode)">
								<children>
									<text fixtext="-"/>
									<template subtype="element" match="base:countyCode">
										<children>
											<content subtype="regular">
												<styles font-weight="bold"/>
											</content>
										</children>
										<variables/>
									</template>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="BaseAddressTemplate">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="exists(base:simpleAddress)">
								<children>
									<template subtype="element" match="base:simpleAddress">
										<children>
											<template subtype="element" match="base:countryCode">
												<children>
													<content subtype="regular">
														<styles font-weight="bold"/>
													</content>
												</children>
												<variables/>
											</template>
											<condition>
												<children>
													<conditionbranch xpath="exists(base:region)">
														<children>
															<text fixtext=" ">
																<styles font-weight="bold"/>
															</text>
															<template subtype="element" match="base:region">
																<children>
																	<content subtype="regular">
																		<styles font-weight="bold"/>
																	</content>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<text fixtext=" ">
												<styles font-weight="bold"/>
											</text>
											<template subtype="element" match="base:postalCode">
												<children>
													<content subtype="regular">
														<styles font-weight="bold"/>
													</content>
												</children>
												<variables/>
											</template>
											<text fixtext=" ">
												<styles font-weight="bold"/>
											</text>
											<template subtype="element" match="base:city">
												<children>
													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
														<parameters/>
													</calltemplate>
												</children>
												<variables/>
											</template>
											<text fixtext=" ">
												<styles font-weight="bold"/>
											</text>
											<template subtype="element" match="base:additionalAddressDetail">
												<children>
													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
														<parameters/>
													</calltemplate>
												</children>
												<variables/>
											</template>
										</children>
										<variables/>
									</template>
								</children>
							</conditionbranch>
							<conditionbranch xpath="exists(base:detailedAddress)">
								<children>
									<template subtype="element" match="base:detailedAddress">
										<children>
											<template subtype="element" match="base:countryCode">
												<children>
													<content subtype="regular">
														<styles font-weight="bold"/>
													</content>
												</children>
												<variables/>
											</template>
											<text fixtext=" ">
												<styles font-weight="bold"/>
											</text>
											<condition>
												<children>
													<conditionbranch xpath="exists(base:detailedAddress/base:region)">
														<children>
															<template subtype="element" match="base:region">
																<children>
																	<content subtype="regular">
																		<styles font-weight="bold"/>
																	</content>
																</children>
																<variables/>
															</template>
															<text fixtext=" ">
																<styles font-weight="bold"/>
															</text>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<template subtype="element" match="base:postalCode">
												<children>
													<content subtype="regular">
														<styles font-weight="bold"/>
													</content>
												</children>
												<variables/>
											</template>
											<text fixtext=" ">
												<styles font-weight="bold"/>
											</text>
											<template subtype="element" match="base:city">
												<children>
													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
														<parameters/>
													</calltemplate>
												</children>
												<variables/>
											</template>
											<text fixtext=", ">
												<styles font-weight="bold"/>
											</text>
											<template subtype="element" match="base:streetName">
												<children>
													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
														<parameters/>
													</calltemplate>
												</children>
												<variables/>
											</template>
											<text fixtext=" ">
												<styles font-weight="bold"/>
											</text>
											<template subtype="element" match="base:publicPlaceCategory">
												<children>
													<calltemplate subtype="named" match="GenericZeroWidthWhitespaceOffset">
														<parameters/>
													</calltemplate>
												</children>
												<variables/>
											</template>
											<condition>
												<children>
													<conditionbranch xpath="exists(base:number)">
														<children>
															<text fixtext=" ">
																<styles font-weight="bold"/>
															</text>
															<template subtype="element" match="base:number">
																<children>
																	<content subtype="regular">
																		<styles font-weight="bold"/>
																	</content>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="exists(base:building)">
														<children>
															<text fixtext=" ">
																<styles font-weight="bold"/>
															</text>
															<template subtype="element" match="base:building">
																<children>
																	<content subtype="regular">
																		<styles font-weight="bold"/>
																	</content>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="exists(base:staircase)">
														<children>
															<text fixtext=" ">
																<styles font-weight="bold"/>
															</text>
															<template subtype="element" match="base:staircase">
																<children>
																	<content subtype="regular">
																		<styles font-weight="bold"/>
																	</content>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="exists(base:floor)">
														<children>
															<text fixtext=" ">
																<styles font-weight="bold"/>
															</text>
															<template subtype="element" match="base:floor">
																<children>
																	<content subtype="regular">
																		<styles font-weight="bold"/>
																	</content>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="exists(base:door)">
														<children>
															<text fixtext=" ">
																<styles font-weight="bold"/>
															</text>
															<template subtype="element" match="base:door">
																<children>
																	<content subtype="regular">
																		<styles font-weight="bold"/>
																	</content>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="exists(base:lotNumber)">
														<children>
															<text fixtext=" ">
																<styles font-weight="bold"/>
															</text>
															<template subtype="element" match="base:lotNumber">
																<children>
																	<content subtype="regular">
																		<styles font-weight="bold"/>
																	</content>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<newline/>
										</children>
										<variables/>
									</template>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeTakeoverTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="A termékdíj átvállalás adatai">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Data of the product fee takeover">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Daten der Produktgebührenübernahme">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeCustomerDeclarationTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="A termékdíj mentesülés adatai">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Product fee charge exemption details">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Einzelheiten zur Produktgebührenbefreiung">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="TakeoverTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Átvállalás iránya és jogszabályi alapja:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Direction and legal base of takeover:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Richtung und Rechtsgrundlage der Übernahme:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductStreamTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Termékáram:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Product stream:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Produktstrom:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="TakeoverAmountTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Átvállalt termékdíj összege forintban:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Amount of product fee assumed in HUF:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Summe der übernommenen Produktgebühr im HUF:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeWeightTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Termékdíj köteles termék tömege kilogrammban:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Weight of product fee obligated product in kg:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Gewicht des produktgebührenpflichtigen Produkts in kg:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeCodeAmount_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="termékdíj összege: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="product fee amount: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Produktgebührenbetrag: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeQuantityTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="mennyiség: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="quantity: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Anzahl: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeRateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="díjtétel: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="product fee rate: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Produktgebührensatz: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="DieselOilPurchaseLocationTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Gázolaj beszerzés helye:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Diesel oil purchase location:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Einkaufsort für Dieselöl:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="DieselOilPurchaseTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Gázolaj beszerzés adatai">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Diesel oil purchase data">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Daten zum Kauf von Dieselöl">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="DieselOilPurchaseDateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Beszerzés dátuma:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Date of purchase:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Kaufdatum:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="DieselOilPurchaseVehicleRegistrationNumberTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Rendszám:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Plate number:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Kennzeichen:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="DieselOilQuantityTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Bérmunka szolgáltatás:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Contract work service:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Auftragsarbeiten:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeRateSummaryTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Díjtétel"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Rate unit"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Gebühreneinheit"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeAmountSummaryTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Termékdíj összeg"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Product fee amount"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Produktgebühr"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeCodeSummaryTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Termékkód"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Product code"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Produktcode"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductChargeSumTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Termékdíj összesen: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Product charge sum: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Produktgebührensumme: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeOperationTemplate_C5X">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="n1:productFeeOperation = &apos;REFUND&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="A termékdíj összege visszaigénylésre vonatkozik.">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="The amount of the product fee is for a refund.">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Für eine Rückerstattung gilt die Höhe der Produktgebühr.">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:productFeeOperation = &apos;DEPOSIT&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="A termékdíj összege raktárba történő beszállításra vonatkozik.">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="The amount of the product fee applies to delivery to the warehouse.">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Die Höhe der Produktpauschale gilt für die Lieferung an das Lager.">
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
			<globaltemplate subtype="named" match="PaymentEvidenceDocumentDataTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Termékdíj bevallását igazoló dokumentum adatai">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Details of the document certifying the product fee declaration">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Angaben zum Dokument zur Bescheinigung der Produktgebührenerklärung">
										<styles text-decoration="underline"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="PaymentEvidenceObligatedTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Kötelezett adószáma, neve: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Obligated name, tax number: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Obligatorischer Name, Steuernummer: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="PaymentEvidenceObligatedAddressTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Kötelezett címe: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Obligor&apos;s address: "/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Adresse des Schuldners: "/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="PaymentEvidenceDocumentNoTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Dokumentum azonosító száma:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Document ID number:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Dokument ID Nummer:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="PaymentEvidenceDocumentDateTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Dokumentum kelte:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Document date:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Datum des Dokuments:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeSummaryTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Termékdíj összesítő adatok"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Product fee summary data"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Summierung der Produktgebühren"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="VatTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="ÁFA"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="VAT"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="MwSt"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceSummaryInHUFTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Forintban:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="In HUF:"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Im HUF:"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceSummarySumTotalTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Mindösszesen:">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Sumtotal:">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Gesamtsumme:">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="InvoiceSummarySumTotalInHUFTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Forintban:">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="In HUF:">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Im HUF:">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="ProductFeeMeasuringUnitTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath=". = &apos;DARAB&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="darab">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="piece">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="stück">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;KG&apos;">
								<children>
									<text fixtext="kg">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="UnitOfMeasureValueTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath=". = &apos;PIECE&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Darab">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Piece">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Stück">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;KILOGRAM&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Kilogramm">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Kilogram">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Kilogramm">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;TON&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Tonna">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Ton">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Tonne">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;KWH&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Kilowatt óra">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Kilowatt hour">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Kilowattstunde">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;DAY&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Nap">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Day">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Tag">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;HOUR&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Óra">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Hour">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Stunde">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;MINUTE&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Perc">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Minute">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Minute">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;MONTH&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Hónap">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Month">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Monat">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;LITER&apos;">
								<children>
									<text fixtext="Liter">
										<styles font-weight="bold"/>
									</text>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;KILOMETER&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Kilométer">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Kilometer">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Kilometer">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;CUBIC_METER&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Köbméter">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Cubic meter">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Kubikmeter">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;METER&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Méter">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Meter">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Meter">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;LINEAR_METER&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Folyóméter">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Linear meter">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="laufender Meter">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;CARTON&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Karton">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Carton">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Karton">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath=". = &apos;PACK&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Csomag">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Pack">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Pack">
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
			<globaltemplate subtype="named" match="ProductStreamTemplate_C5X">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="n1:productStream = &apos;BATTERY&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Akkumulátor">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Battery">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Batterie">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:productStream = &apos;PACKAGING&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Csomagolószer">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Packaging">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Verpackungsmaterial">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:productStream = &apos;OTHER_PETROL&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Egyéb kőolajtermék">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Other petroleum product">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Andere Erdölprodukte">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:productStream = &apos;ELECTRONIC&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Elektromos, elektronikai berendezés">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Electric appliance, electronic equipment">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Elektrische, elektronische Ausrüstung">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:productStream = &apos;TIRE&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Gumiabroncs">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Tire">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Reifen">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:productStream = &apos;COMMERCIAL&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Reklámhordozó papír">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Commercial printing paper">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Werbepapier">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:productStream = &apos;PLASTIC&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Egyéb műanyag termék">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Other plastic product">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Andere Kunstsoffprodukte">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:productStream = &apos;OTHER_CHEMICAL&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Egyéb vegyipari termék">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Other chemical product">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Andere chemische Produkte">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</conditionbranch>
							<conditionbranch xpath="n1:productStream = &apos;PAPER&apos;">
								<children>
									<condition>
										<children>
											<conditionbranch xpath="$lang = &apos;HU&apos;">
												<children>
													<text fixtext="Irodai papír">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;EN&apos;">
												<children>
													<text fixtext="Paper stationery">
														<styles font-weight="bold"/>
													</text>
												</children>
											</conditionbranch>
											<conditionbranch xpath="$lang = &apos;DE&apos;">
												<children>
													<text fixtext="Büropapier">
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
			<globaltemplate subtype="named" match="ProductFeeSummaryQuantityTemplate_L10N">
				<parameters/>
				<children>
					<condition>
						<children>
							<conditionbranch xpath="$lang = &apos;HU&apos;">
								<children>
									<text fixtext="Mennyiség"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;EN&apos;">
								<children>
									<text fixtext="Quantity"/>
								</children>
							</conditionbranch>
							<conditionbranch xpath="$lang = &apos;DE&apos;">
								<children>
									<text fixtext="Menge"/>
								</children>
							</conditionbranch>
						</children>
					</condition>
				</children>
			</globaltemplate>
		</children>
	</designfragments>
	<xmltables/>
	<authentic-custom-toolbar-buttons/>
</structure>
