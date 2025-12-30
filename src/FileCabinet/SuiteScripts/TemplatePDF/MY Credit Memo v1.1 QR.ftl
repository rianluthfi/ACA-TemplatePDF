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
						<td width="35%">
							<@filecabinet nstype="image" src="https://6250403.app.netsuite.com/core/media/media.nl?id=2780&c=6250403&h=Qsg396rBV8OQQ_FB8wmK7rt47VZc0DHa5i8pcIB9VXSg8Ghx" width="110" height="21" />
						</td>
						<td class="judul border" align="center" vertical-align="middle" width="30%">
							CREDIT NOTE
						</td>
						<td width="15%">
							&nbsp;
						</td>
						<td class="borderkiri borderatas borderkanan" align="center" vertical-align="middle" width="9%">
							<p style="text-align: center;">
								<strong>Date</strong>
								<br />${record.trandate}
							</p>
						</td>
						<td class="borderatas borderkanan" align="center" vertical-align="middle" width="9%">
							<p style="text-align: center;">
								<strong>Page</strong>
								<br /><pagenumber/>of <totalpages/>
							</p>
						</td>
					</tr>
					<tr>
						<td>
							<span style="font-size: 11px;"><b>${subsidiary.legalname}</b></span>
							<br />
							<b>Co. Registration No.: ${subsidiary.custrecord_myei_seller_id_number}</b>
						</td>
						<td>
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
						<td class="border" colspan="2" align="center">
							<p style="text-align: center;">
								<strong>Credit Note Number</strong>
								<br />
								<span class="docnumber">${record.tranid}</span>
							</p>
						</td>
					</tr>
					<tr>
						<td>
							${subsidiary.custrecord_aca_print_out_address}
							<br />
							Web: ${subsidiary.custrecord_aca_print_out_web}
							<br/>
							Tel: ${subsidiary.custrecord_aca_print_out_telphone} Fax: ${subsidiary.custrecord_aca_print_out_fax_number}
							<br/>
							SST Reg No: ${subsidiary.custrecord_myei_seller_sst_id}
						</td>
						<td>
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>

				<table class="atas" style="margin-top: 5px;">
					<tr>
						<td>
							Sold To:
						</td>
						<td>&nbsp;</td>
						<td>
							Ship To:
						</td>
					</tr>
					<tr>
						<td class="border">
							${record.billaddress}<br />
							SST No. ${record.custbody_my_sst_number}
						</td>
						<td>&nbsp;</td>
						<td class="border">
							${record.shipaddress}
						</td>
					</tr>
				</table>

				<table class="subatas" style="margin-top: 10px;" border="1">
					<tr>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Reference</strong>
								<br />
								-
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>PO Number</strong>
								<br />
								${record.otherrefnum}
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Invoice No.</strong>
								<br />
                                <#if record.custbody_aca_related_invoice.tranid?has_content>
								    ${record.custbody_aca_related_invoice.tranid}
                                <#else>
                                    ${record.createdfrom.tranid}
                                </#if>
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Sales Rep</strong>
								<br />
								${record.salesrep}
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Order Date</strong>
								<br />
								${record.custbody_aca_related_invoice.createdfrom.trandate}
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Ship Via</strong>
								<br />
								${record.custbody_aca_related_invoice.createdfrom.custbody_my_ship_via_so}
							</p>
						</td>
						<td align="center">
							<p style="text-align: center;">
								<strong>Terms</strong>
								<br />
								${record.custbody_aca_related_invoice.terms}
							</p>
						</td>
					</tr>
				</table>

			</macro>
			<macro id="nlfooter">

				<table class="comment" style="break-inside: avoid; margin-top: 10px; width: 676.27px;" border="1">
					<#assign qrUrl = record.custbody_my_url_text />
					<#assign subtotal = record.subtotal>
					<#assign taxtotal = record.taxtotal>
					<#assign total = record.total>

					<tr>
						<td rowspan="6" width="40%">
							<#if record.custbody_item_commentsg?has_content>
								${record.custbody_item_commentsg}
							</#if>
						</td>
						<td rowspan="4" width="30%" align="center">
							<#if qrUrl?has_content>
								<barcode codetype="qrcode" showtext="false" height="55" width="55" value="${qrUrl}" />
							</#if>
						</td>
						<td width="13%"><b>Less</b></td>
						<td width="17%"></td>
					</tr>
					<tr>
						<td>&nbsp; &nbsp;<b>Included Tax</b></td>
						<td></td>
					</tr>
					<tr>
						<td>&nbsp; &nbsp;<b>Order Discount</b></td>
						<td></td>
					</tr>
					<tr>
						<td><b>Subtotal</b></td>
						<td align="right">${subtotal?string['#,##0.00']}</td>
					</tr>
					<tr>
						<td align="center">
							<#if record.custbody_my_uuid?has_content>
								UUID: ${record.custbody_my_uuid}
							</#if>
						</td>
						<td><b>SST (8%)</b></td>
						<td align="right">${taxtotal?string['#,##0.00']}</td>
					</tr>
					<tr>
						<td align="center">
							<#if record.custbody_my_date_time_validated?has_content>
								Validated Time: ${record.custbody_my_date_time_validated}
							</#if>
						</td>
						<td><b>Total Order (${record.currency})</b></td>
						<td align="right">${total?string['#,##0.00']}</td>
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
			table.comment{
				width:100%;
				border-collapse: collapse;
				font-size: 9px;
				border: 1px solid #000000;
				table-layout: fixed;
			}
			tr.serial {
				line-height: 1.2;
				height: auto;
			}
		</style>
	</head>
	<body header="nlheader" header-height="25%" footer="nlfooter" footer-height="15%"
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