<?xml version="1.0"?>
<!DOCTYPE pdf PUBLIC "-//big.faceless.org//report" "report-1.1.dtd">
<pdf>
	<head>
		<link name="NotoSans" type="font" subtype="truetype" src="${nsfont.NotoSans_Regular}"
			src-bold="${nsfont.NotoSans_Bold}" src-italic="${nsfont.NotoSans_Italic}"
			src-bolditalic="${nsfont.NotoSans_BoldItalic}" bytes="2" />
		<#if .locale == "zh_CN">
		<link name="NotoSansCJKsc" type="font" subtype="opentype"
			src="${nsfont.NotoSansCJKsc_Regular}" src-bold="${nsfont.NotoSansCJKsc_Bold}" bytes="2" />
		<#elseif .locale == "zh_TW">
		<link name="NotoSansCJKtc" type="font" subtype="opentype"
			src="${nsfont.NotoSansCJKtc_Regular}" src-bold="${nsfont.NotoSansCJKtc_Bold}" bytes="2" />
		<#elseif .locale == "ja_JP">
		<link name="NotoSansCJKjp" type="font" subtype="opentype"
			src="${nsfont.NotoSansCJKjp_Regular}" src-bold="${nsfont.NotoSansCJKjp_Bold}" bytes="2" />
		<#elseif .locale == "ko_KR">
		<link name="NotoSansCJKkr" type="font" subtype="opentype"
			src="${nsfont.NotoSansCJKkr_Regular}" src-bold="${nsfont.NotoSansCJKkr_Bold}" bytes="2" />
		<#elseif .locale == "th_TH">
			<link name="NotoSansThai" type="font" subtype="opentype"
				src="${nsfont.NotoSansThai_Regular}" src-bold="${nsfont.NotoSansThai_Bold}"
				bytes="2" />
		</#if>
		<macrolist>
			<macro id="nlheader">
				<table class="atas">
					<tr>
						<td style="width: 320px; height: 50px;" rowspan="3" width="35%">
							<strong>
								<span style="font-size: 11px;">ACA Pacific Technology (S) Pte Ltd</span>
							</strong>
							<br />
							<br />
							<span style="font-size: 10px;">20 Upper Circular Road, #03-01/05<br />The
								Riverwalk, Singapore 058416<br />http://www.aca-apac.com<br />Tel:
								(+65) 6536-1728 Fax: (+65) 6536-1729<br />Web:
								http://www.aca-apac.com<br />Co. Reg. No. 198600936N</span>
						</td>
						<td class="judul border" style="width: 230px;" align="center" width="30%">
							<span style="font-size: 16px;">CREDIT NOTE</span>
						</td>
						<td style="width: 70px;" width="10%">&nbsp;</td>
						<td class="borderkiri borderatas borderkanan" style="width: 111px;"
							align="center" width="11%">
							<p style="text-align: center;"><strong>Date</strong><br />
								${record.trandate}</p>
						</td>
						<td class="borderatas borderkanan" align="center" width="9%">
							<p style="text-align: center;"><strong>Page</strong><br />&nbsp;<pagenumber />
								of <totalpages /></p>
						</td>
					</tr>
					<tr>
						<td style="width: 70px;" rowspan="2"><br />&nbsp;</td>
						<td style="width: 70px;" rowspan="2">&nbsp;</td>
						<td class="border" style="width: 70px;" colspan="2" align="center">
							<p style="text-align: center;">
								<strong>Document Number</strong>
								<br />
								<span class="docnumber">${record.tranid}</span>
							</p>
						</td>
					</tr>
					<tr>
						<td class="borderless" style="width: 170px;" colspan="2" align="center">
							<span style="font-size: 9px;">GST Reg. No.: M2-0072794-X</span>
						</td>
					</tr>
				</table>
				<table
					style="margin-top: 10px; width: 100%; border-collapse: collapse; border-width: 0.6px;"
					border="1">
					<tr>
						<td
							style="font-size: 8pt; padding: 6px 2px 2px; font-weight: bold; color: rgb(51, 51, 51); width: 383px; border-width: 0.6px;"
							colspan="3" width="50%">Sold To</td>
						<td
							style="font-size: 8pt; padding: 6px 2px 2px; font-weight: bold; color: rgb(51, 51, 51); border-width: 0.6px;"
							colspan="3" width="50%">${record.shipaddress@label}</td>
					</tr>
					<tr>
						<td style="padding: 2px; width: 383px; height: 64px; border-width: 0.6px;"
							colspan="3">
							<span style="font-size: 9px;">${record.billaddress}</span>
						</td>
						<td style="padding: 2px; height: 64px; border-width: 0.6px;" colspan="3">
							<span style="font-size: 9px;">${record.shipaddress}</span>
						</td>
					</tr>
				</table>
				<table
					style="margin-top: 10px; width: 100%; border-collapse: collapse; border-width: 0.6px;"
					border="1" align="center">
					<tr>
						<th style="height: 18px; border-width: 0.6px;">Reference</th>
						<th style="height: 18px; border-width: 0.6px;">PO Number</th>
						<th style="height: 18px; border-width: 0.6px;">Customer No.</th>
						<th style="height: 18px; border-width: 0.6px;">Sales Person</th>
						<th style="height: 18px; border-width: 0.6px;">Order Date</th>
						<th style="height: 18px; border-width: 0.6px;">Ship VIA</th>
						<th style="height: 18px; border-width: 0.6px;">Terms</th>
					</tr>
					<tr>
						<td style="padding-top: 2px; text-align: center; border-width: 0.6px;"
							align="center">
							<span style="font-size: 10px;">${record.custbody_sii_ref_no}</span>
						</td>
						<td style="padding-top: 2px; text-align: center; border-width: 0.6px;"
							align="center">
							<span style="font-size: 10px;">${record.otherrefnum}</span>
						</td>
						<td style="padding-top: 2px; text-align: center; border-width: 0.6px;"
							align="center">
							<span style="font-size: 10px;">${record.entity}</span>
						</td>
						<td style="padding-top: 2px; text-align: center; border-width: 0.6px;"
							align="center">
							<span style="font-size: 10px;">${record.salesrep}</span>
						</td>
						<td style="padding-top: 2px; text-align: center; border-width: 0.6px;"
							align="center">
							<span style="font-size: 10px;">${record.trandate}</span>
						</td>
						<td style="padding-top: 2px; text-align: center; border-width: 0.6px;"
							align="center">
							<span style="font-size: 10px;">${record.custbody_aca_ship_via_po}</span>
						</td>
						<td style="padding-top: 2px; text-align: center; border-width: 0.6px;"
							align="center">
							<span style="font-size: 10px;">${record.terms}</span>
						</td>
					</tr>
				</table>
			</macro>
			<macro id="nlfooter">

                <#assign subtotal_after_discount = record.subtotal+record.discounttotal />

                <table class="bawah" style="margin-bottom: 7px;">
                    <#assign nolkan = record.total-record.total />
                    <tr>
                        <td width="35%">
                            <strong>Comments:</strong>
                        </td>
                        <td width="25%">
                            <#if subsidiary.currency != record.currency>
                                <strong><u>For Singapore GST Purpose Only</u></strong>
                            </#if>
                        </td>
                        <td class="borderkiri borderkanan" width="20%">
                            <strong>Less</strong>
                        </td>
                        <td align="right" width="20%">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="4">
                            <#if record.custbody_item_commentsg !="">${record.custbody_item_commentsg}</#if>
                        </td>
                        <td rowspan="5" colspan="1">
                            <#if subsidiary.currency != record.currency>
                            <table width="100%">
                                <#assign exchangerate = record.exchangerate * 1 />
                                <#assign sgd_baseamount = (record.subtotal+record.discounttotal) * record.exchangerate />
                                <#assign sgd_taxamount = record.taxtotal * record.exchangerate />
                                <#assign sgd_totalamount = record.total * record.exchangerate />
                                <tr>
                                    <td>Exchange Rate to SGD</td>
                                    <td align="right">${exchangerate?number}</td>
                                </tr>
                                <tr>
                                    <td>Base Amount in SGD</td>
                                    <td align="right">${sgd_baseamount?string["#,##0.00"]}</td>
                                </tr>
                                <tr>
                                    <td>Add (GST 9%)</td>
                                    <td align="right">${sgd_taxamount?string["#,##0.00"]}</td>
                                </tr>
                                <tr>
                                    <td>Total Amount in SGD</td>
                                    <td align="right">${sgd_totalamount?string["#,##0.00"]}</td>
                                </tr>
                            </table>
                            </#if>
                        </td>
                        <td class="borderkiri borderkanan" width="20%">
                            &nbsp;&nbsp;&nbsp;&nbsp;<strong>Included Tax</strong>
                        </td>
                        <td align="right" width="20%">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;<strong>Order Discount</strong>
                        </td>
                        <td style="padding-bottom: 5px; padding-top: 5px;" align="right">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">
                            <strong>Subtotal</strong>
                        </td>
                        <td style="padding-bottom: 5px; padding-top: 5px;" align="right">
                            ${record.subtotal}
                        </td>
                    </tr>
                    <tr>
                        <td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">
                            <strong>Tax Total (GST 9%)</strong>
                        </td>
                        <td style="padding-bottom: 5px; padding-top: 5px;" align="right">${record.taxtotal}</td>
                    </tr>
                    <tr>
                        <td>${record.custbody_aca_so_reference}</td>
                        <td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">
                            <strong>Total Order ${record.currency}</strong>
                        </td>
                        <td style="padding-bottom: 5px; padding-top: 5px;" align="right">
                            ${record.total}
                        </td>
                    </tr>
                </table>
                <table class="atas" style="border-collapse: collapse; border-style: none; border-width: 1px; margin-right: 0px; margin-left: auto;" border="1">
                    <tr>
                        <td width="50%">
                            <strong>Banking Instructions (Bank Charges to be borne by Payer):</strong>
                        </td>
                        <td align="right">
                            <strong>
                                Digitally Signed by authorized personnel : Mr. Craig Gledhill
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <#if record.currency == "USD">
                            <td style="height: 5px;" width="20%">
                                "Oversea-Chinese Banking Corporation Ltd<br />
                                65 Chulia Street, OCBC Centre (S) 049513<br />
                                Swift Code: OCBCSGSG<br />
                                Account Name: ACA Pacific Technology (S) Pte Ltd<br />
                                Account Number (USD): 501-002927-301"
                            </td>
                        <#else>
                            <td style="height: 5px;" width="20%">
                                "Oversea-Chinese Banking Corporation Ltd<br />
                                65 Chulia Street, OCBC Centre (S) 049513<br />
                                Swift Code: OCBCSGSG<br />
                                Account Name: ACA Pacific Technology (S) Pte Ltd<br />
                                Account Number (SGD): 504-032483-001"
                            </td>
                        </#if>
                    </tr>
                </table>
			</macro>
		</macrolist>
		<style type="text/css">
			* {
					<#if .locale == "zh_CN">
				font-family: NotoSans, NotoSansCJKsc, sans-serif;
						<#elseif .locale == "zh_TW">
				font-family: NotoSans, NotoSansCJKtc, sans-serif;
							<#elseif .locale == "ja_JP">
				font-family: NotoSans, NotoSansCJKjp, sans-serif;
								<#elseif .locale == "ko_KR">
				font-family: NotoSans, NotoSansCJKkr, sans-serif;
									<#elseif .locale == "th_TH">
				font-family: NotoSans, NotoSansThai, sans-serif;
										<#else>
				font-family: NotoSans, sans-serif;
										</#if>
			}
			
												<!--
			table tr td {
				border: 1px solid #000000;
			}
			-->
			
			table.atas{
				font-size: 9px;
				width:100%;
				border-collapse: collapse;
			}
			
			table.subatas{
				font-size: 9px;
				width:100%;
				border-collapse: collapse;
			}
			
			td.judul {
				font-size: 13px;
				font-weight: bold;
				color: #333333;
			}
			
			span.docnumber {
				font-size: 10px;
				font-weight: bold;
				color: #333333;
			}
			
			table.bawah{
				font-size: 9px;
				width:100%;
				border: 1px solid #000000;
				border-collapse: collapse;
			}
			
			td.border{
				border-collapse: collapse;
				border: 1px solid #000000;
			}
			
			td.borderless{
				border-collapse: collapse;
				border: 0px;
			}
			
			td.borderatas{
				border-collapse: collapse;
				border-top: 1px solid #000000;
			}
			
			td.borderbawah{
				border-collapse: collapse;
				border-bottom: 1px solid #000000;
			}
			
			td.borderkiri{
				border-collapse: collapse;
				border-left: 1px solid #000000;
			}
			
			td.borderkanan{
				border-collapse: collapse;
				border-right: 1px solid #000000;
			}
			
			th.borderbawah{
				border-collapse: collapse;
				border-bottom: 1px solid #000000;
			}
			
			th.borderkanan{
				border-right: 1px solid #000000;
			}
			
			th{
				padding-bottom: 10px;
				padding-top: 10px;
				font-size: 9px;
				font-weight: bold;
				align: center;
			}
			
			table.itemtable td{
				padding-bottom: 5px;
				padding-top: 5px;
				font-size: 9px;
				align: center;
			}
			table.comment td{
				padding-bottom: 5px;
				padding-top: 5px;
				font-size: 9px;
				align: left;
			}
			tr.serial {
				line-height: 1.2;
				height: auto;
			}
		</style>
	</head>
	<body header="nlheader" header-height="25%" footer="nlfooter" footer-height="18%"
		padding="0.5in 0.5in 0.5in 0.5in" size="Letter">
		
		<#if record.item?has_content>
			<table
				class="itemtable" style="margin-top: 10px; width: 796.27px; border-collapse: collapse; border-width: 0.5px;"
				border="1" width="100%"><!-- start items -->
				<#list record.item as item>
					<#if item_index==0>
						<thead>
							<tr>
								<th class="borderkanan borderbawah" align="center" width="5%">Qty<br />Ship</th>
								<th class="borderkanan borderbawah" align="center" width="5%">Credit<br /></th>
								<th class="borderkanan borderbawah" align="center" width="5%">Qty<br />Ret.</th>
								<th class="borderkanan borderbawah" align="center" width="15%">Item Number</th>
								<th class="borderkanan borderbawah" align="center" width="38%">Description</th>
								<th class="borderkanan borderbawah" align="center" width="12%">Unit Price</th>
								<th class="borderkanan borderbawah" align="center" width="5%">UOM</th>
								<th class="borderbawah" align="center" width="15%">Extended Price</th>
							</tr>
						</thead>
					</#if>
					<tr>
						<td class="borderkanan" align="right">${item.quantity}</td>
						<td class="borderkanan" align="right">&nbsp;</td>
						<td class="borderkanan" align="right">&nbsp;</td>
						<td class="borderkanan" align="left">${item.item}</td>
						<td class="borderkanan" align="left">
							${item.description}
							
						</td>
						<td class="borderkanan" align="right">${item.rate}</td>
						<td class="borderkanan" align="left">${item.units}</td>
						<td align="right">${item.amount}</td>
					</tr>

					<#if item.custcol_itemcomm?has_content>
						<tr>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td class="borderkanan" align="left">
								<b>COMMENT :</b>
								<br />
								${item.custcol_itemcomm}
							</td>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td></td>
						</tr>
					</#if>

					<#if item.custcol_aca_inv_detail_number?? && item.custcol_aca_inv_detail_number?has_content>
						<#assign serials = item.custcol_aca_inv_detail_number?split(",") />
						<#assign serialCount = serials?size />

						<tr>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td class="borderkanan" align="left"><b>SERIAL NUMBER :</b></td>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td></td>
						</tr>

						<#list serials as serial>
							<tr class="serial">
								<td class="borderkanan"></td>
								<td class="borderkanan"></td>
								<td class="borderkanan"></td>
								<td class="borderkanan"></td>
								<td class="borderkanan" align="left">${serial}</td>
								<td class="borderkanan"></td>
								<td class="borderkanan"></td>
								<td></td>
							</tr>
						</#list>
					</#if>

					<#if item?is_last>
						<tr>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td class="borderkanan" align="left">
								<b>END USER :</b>
								<br />
								${record.cseg1}
							</td>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td></td>
						</tr>
					</#if>

				</#list><!--
				end items -->
			</table>
			<hr style="width: 100%; color: #d3d3d3; background-color: #d3d3d3; height: 1px;" />
		</#if>
	</body>
</pdf>