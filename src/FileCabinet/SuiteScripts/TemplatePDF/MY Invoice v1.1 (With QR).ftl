<?xml version="1.0"?><!DOCTYPE pdf PUBLIC "-//big.faceless.org//report" "report-1.1.dtd">
<pdf>
	<head>
		<link name="NotoSans" type="font" subtype="truetype" src="${nsfont.NotoSans_Regular}" src-bold="${nsfont.NotoSans_Bold}" src-italic="${nsfont.NotoSans_Italic}" src-bolditalic="${nsfont.NotoSans_BoldItalic}" bytes="2" />
		<#if .locale == "zh_CN">
			<link name="NotoSansCJKsc" type="font" subtype="opentype" src="${nsfont.NotoSansCJKsc_Regular}" src-bold="${nsfont.NotoSansCJKsc_Bold}" bytes="2" />
			<#elseif .locale == "zh_TW">
				<link name="NotoSansCJKtc" type="font" subtype="opentype" src="${nsfont.NotoSansCJKtc_Regular}" src-bold="${nsfont.NotoSansCJKtc_Bold}" bytes="2" />
				<#elseif .locale == "ja_JP">
					<link name="NotoSansCJKjp" type="font" subtype="opentype" src="${nsfont.NotoSansCJKjp_Regular}" src-bold="${nsfont.NotoSansCJKjp_Bold}" bytes="2" />
					<#elseif .locale == "ko_KR">
						<link name="NotoSansCJKkr" type="font" subtype="opentype" src="${nsfont.NotoSansCJKkr_Regular}" src-bold="${nsfont.NotoSansCJKkr_Bold}" bytes="2" />
						<#elseif .locale == "th_TH">
							<link name="NotoSansThai" type="font" subtype="opentype" src="${nsfont.NotoSansThai_Regular}" src-bold="${nsfont.NotoSansThai_Bold}" bytes="2" />
						</#if>
						<macrolist>
							<macro id="nlheader">
								<table class="atas">
									<tr>
										<td width="35%">
											<@filecabinet nstype="image" src="https://6250403.app.netsuite.com/core/media/media.nl?id=2780&c=6250403&h=Qsg396rBV8OQQ_FB8wmK7rt47VZc0DHa5i8pcIB9VXSg8Ghx" width="110" height="21" />
										</td>
										<td class="judul border" align="center" vertical-align="middle" width="30%">
											INVOICE
										</td>
										<td width="15%">
											&nbsp;
										</td>
										<td class="borderkiri borderatas borderkanan" align="center" vertical-align="middle" width="9%">
											<p style="text-align: center;">
												<strong>Invoice Date</strong>
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
												<strong>Invoice Number</strong>
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
								<table class="subatas" style="margin-top: 10px;">
									<tr>
										<#assign sonumber = record.createdfrom.tranid/>
										<td class="border" align="center">
											<p style="text-align: center;">
												<#if record.custbody_aca_related_do?has_content>
													<strong>D/O No.</strong>
													<br />
													${record.custbody_aca_related_do.tranid}
												<#else>
													<strong>S/O No.</strong>
													<br />
													${record.createdfrom.tranid}
												</#if>
											</p>
										</td>
										<td class="borderatas borderbawah" align="center">
											<p style="text-align: center;">
												<#if record.custbody_aca_related_do?has_content>
													<strong>D/O Date</strong>
													<br />
													${record.custbody_aca_related_do.trandate}
												<#else>
													<strong>S/O Date</strong>
													<br />
													${record.createdfrom.trandate}
												</#if>
												<!-- <strong>D/O Date</strong>
												<br />
												${record.custbody_my_related_date} -->
											</p>
										</td>
										<td class="border" align="center">
											<p style="text-align: center;">
												<strong>Department</strong>
												<br />
												${record.department}
											</p>
										</td>
										<td class="borderatas borderbawah" align="center">
											<p style="text-align: center;">
												<strong>Sales Rep</strong>
												<br />
												${record.salesrep}
											</p>
										</td>
										<td class="border" align="center">
											<p style="text-align: center;">
												<strong>PO Number</strong>
												<br />
												${record.otherrefnum}
											</p>
										</td>
										<td class="borderatas borderbawah borderkanan" align="center">
											<p style="text-align: center;">
												<strong>Due Date</strong>
												<br />
												${record.duedate}
											</p>
										</td>
										<td class="borderatas borderbawah borderkanan" align="center">
											<p style="text-align: center;">
												<strong>Terms</strong>
												<br />
												${record.terms}
											</p>
										</td>
									</tr>
								</table>
							</macro>
							<macro id="nlfooter">
								<table class="bawah" style="margin-bottom:7px; width:100%;">

									<#assign nolkan = record.total - record.total />
									<#assign qrUrl = record.custbody_my_url_text />

									<tr>
										<td rowspan="7" width="40%">
											<strong>Comments:</strong>
											<#if record.custbody_item_commentsg?has_content>
												<br/>
												<p text-align="left">
													${record.custbody_item_commentsg}
												</p>
											</#if>
										</td>
										<td rowspan="5" width="30%" align="center">
											<#if qrUrl?has_content>
												<barcode codetype="qrcode" showtext="false" height="55" width="55" value="${qrUrl}" />
											</#if>
										</td>
										<td class="bl br" width="13%">
											<strong>Discount</strong>
										</td>
										<td align="right" width="17%">
											<#assign discount = record.discounttotal>
											<#if discount lt 0>${discount?string['#,##0.00']}<#else>0.00</#if>
										</td>
									</tr>

									<tr>
										<td class="bl br"><strong>Subtotal</strong></td>
										<td align="right">${record.subtotal?string['#,##0.00']}</td>
									</tr>

									<tr>
										<td class="bl br"><strong>Tax Total (SST 8%)</strong></td>
										<td class="bb" align="right">${record.taxtotal?string['#,##0.00']}</td>
									</tr>

									<tr>
										<td class="bl br"><strong>Total Amount</strong></td>
										<td align="right">${record.total?string['#,##0.00']}</td>
									</tr>

									<tr>
										<td class="bl br">Less Payment</td>
										<td align="right">${nolkan}</td>
									</tr>

									<tr>
										<td align="center">
											<#if record.custbody_my_uuid?has_content>
											UUID: ${record.custbody_my_uuid}
											</#if>
										</td>
										<td class="bl br">Less Pmt. Disc</td>
										<td align="right">${nolkan}</td>
									</tr>

									<tr>
									<td align="center">
										<#if record.custbody_my_date_time_validated?has_content>
											Validated Time: ${record.custbody_my_date_time_validated}
										</#if>
									</td>
									<td class="bl br"><strong>Amount Due ${record.currency}</strong></td>
									<td align="right">${record.total?string['#,##0.00']}</td>
									</tr>
								</table>

								<table class="atas" style="width:100%; margin-top:4px;">
									<colgroup>
										<col style="width:50%;" />
										<col style="width:50%;" />
									</colgroup>

									<tr>
									<td><strong>INTEREST OF 1.5% PER MONTH WILL BE CHARGED ON OVERDUE ACCOUNT.</strong></td>
									<td align="right"><strong>CLAUSE, GOODS SOLD ARE NOT RETURNABLE</strong></td>
									</tr>

									<tr>
									<td>
										<strong>Banking Instructions:</strong><br/>
										${subsidiary.custrecord_aca_print_out_bank_instr}
									</td>
									<td align="right" valign="bottom">
										<strong>This Invoice Computer Generated, No Signature Required</strong>
									</td>
									</tr>
								</table>
							</macro>
						</macrolist>
<style type="text/css">* {
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
			width:100%;
			border-collapse: collapse;
            font-size: 9px;
			border: 1px solid #000000;
			table-layout: fixed;
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
		</style>
	</head>
	<body header="nlheader" header-height="25%" footer="nlfooter" footer-height="20%" padding="0.5in 0.5in 0.5in 0.5in" size="Letter">
		<#if record.item?has_content>
			<table class="itemtable" style="width: 100%; margin-top: 10px;" border="1px">			<!-- start items -->
				<#list record.item as item>
					<#if item_index==0>
						<thead>
							<tr>
								<th class="borderkanan borderbawah" align="center" width="5%">Qty</th>
								<th class="borderkanan borderbawah" align="center" width="20%">Item Number</th>
								<th class="borderkanan borderbawah" align="center" width="30%">Description</th>
								<th class="borderkanan borderbawah" align="center" width="18%">Unit Price</th>
								<th class="borderkanan borderbawah" align="center" width="7%">UOM</th>
								<th class="borderbawah" align="center" width="20%">Extended Price (${record.currency})</th>
							</tr>
						</thead>
					</#if>
				<tr>
					<#if !item.custcol_aca_hide_item_on_print>
						<#if item.quantity gt 0>
							<td class="borderkanan" align="right">${item.quantity}</td>
							<td class="borderkanan" align="left">${item.item}</td>
							<td class="borderkanan" align="left">
								${item.description}
								
								<#if item.custcol_itemcomm!="">
									<br />
									<br />	
									${item.custcol_itemcomm}
								</#if>
								<#if item.custcol_my_license_key!="">
									<br />
									<br />
									<strong>License Key : </strong>${item.custcol_my_license_key}
								</#if>
								<#if item.custcol_my_expire_date?has_content>
									<br />
									<br />
									<strong>Expiry Date : </strong>${item.custcol_my_expire_date}
								</#if>
								<!-- Add this condition for the last item --> 
								<#if item_index + 1 == record.item?size> 
									<!-- This is the last item -->
									<#if item.cseg1?has_content>
										<br />
										<br />
										<strong>END USER : </strong>${item.cseg1}
									</#if>
								</#if>
							</td>
							<#assign itemrate = item.rate>
							<td class="borderkanan" align="right">${itemrate?string['#,##0.00']}</td>
							<td class="borderkanan" align="center">${item.units}</td>
							<#assign itemamount = item.amount>
							<td align="right">${itemamount?string['#,##0.00']}</td>
						</#if>
					</#if>
				</tr>
				</#list><!-- end items -->
			</table>
		</#if>
	</body>
</pdf>