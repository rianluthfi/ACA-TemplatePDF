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
							PURCHASE ORDER
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
								<strong>Purchase Order Number</strong>
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
							Vendor Address:
						</td>
						<td>&nbsp;</td>
						<td>
							Ship To:
						</td>
					</tr>
					<tr>
						<td class="border">
							${record.billaddress}
							<#if record.entity.custentity_my_sst_number?has_content>
								<br />
								SST No. ${record.entity.custentity_my_sst_number}
							</#if>
						</td>
						<td>&nbsp;</td>
						<td class="border">
							${subsidiary.shippingaddress_text}
						</td>
					</tr>
				</table>

				<table class="subatas" style="margin-top: 10px;" border="1">
					<tr>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Reference</strong>
								<br />
								${record.custbody_aca_so_reference}
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Product</strong>
								<br />
								${record.department}
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>PO Date</strong>
								<br />
								${record.trandate}
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Terms</strong>
								<br />
								${record.terms}
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Ship Via</strong>
								<br />
								${record.custbody_my_ship_via_po}
							</p>
						</td>
						<td align="center">
							<p style="text-align: center;">
								<strong>Expected Arrival</strong>
								<br />
								${record.duedate}
							</p>
						</td>
					</tr>
				</table>
			</macro>

			<macro id="nlfooter">
				<table class="bawah" style="margin-bottom: 20px;">
					<tr>
						<td width="55%">
							<strong>Comments:</strong>
						</td>
						<td class="borderkiri borderkanan" width="25%">&nbsp;</td>
						<td align="right" width="20%">
							<strong>${record.currency}</strong>
						</td>
					</tr>
					<tr>
						<td>${record.custbody_item_commentsg}</td>
						<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">
							<strong>Subtotal</strong>
						</td>
						<#assign subtotal = record.subtotal>
						<td style="padding-bottom: 5px; padding-top: 5px;" align="right">${subtotal?string['#,##0.00']}</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td class="borderkiri borderkanan borderbawah" style="padding-bottom: 5px; padding-top: 5px;">
							<strong>SST (8%)</strong>
						</td>
						<#assign taxtotal = record.taxtotal>
						<td class="borderbawah" style="padding-bottom: 5px; padding-top: 5px;" align="right">${taxtotal?string['#,##0.00']}</td>
					</tr>
					<tr>
						<td style="vertical-align: bottom;">This Electronic Purchase Order is computer generated. No signature required.&nbsp;</td>
						<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">
							<strong>TOTAL P/O AMOUNT</strong>
						</td>
						<#assign total = record.total>
						<td style="padding-bottom: 5px; padding-top: 5px;" align="right">${total?string['#,##0.00']}</td>
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
		</style>
	</head>
	<body header="nlheader" header-height="25%" footer="nlfooter" footer-height="10%" padding="0.5in 0.5in 0.5in 0.5in" size="Letter">
		<#if record.item?has_content>
			<table class="itemtable" style="width: 100%; margin-top: 10px;" border="1px">						
				<!-- start items -->
				<#list record.item as item>
					<#if item_index==0>
						<thead>
							<tr>
								<th class="borderkanan borderbawah" align="center" width="5%">No.</th>
								<th class="borderkanan borderbawah" align="center" width="5%">Qty</th>
								<th class="borderkanan borderbawah" align="center" width="20%">Item Number</th>
								<th class="borderkanan borderbawah" align="center" width="30%">Description</th>
								<th class="borderkanan borderbawah" align="center" width="18%">Unit Cost</th>
								<th class="borderkanan borderbawah" align="center" width="7%">UOM</th>
								<th class="borderbawah" align="center" width="20%">Extended Price (${record.currency})</th>
							</tr>
						</thead>
					</#if>
					<tr>
						<td class="borderkanan" style="text-align: center;">${item_index+1}</td>
						<td class="borderkanan" style="text-align: center;">${item.quantity}</td>
						<td class="borderkanan" align="left" style="word-break: break-word; white-space: normal; vertical-align: top; text-align: left;">
							<span style="display: block;">
								<#if item.vendorname?has_content>
									${item.vendorname}
								<#else>
									${item.item}
								</#if>
							</span>
						</td>
						<td class="borderkanan" align="left">
							<p>
								${item.description}
								
								<#if item.custcol_itemcomm?has_content>
									<br />
									<br />
									${item.custcol_itemcomm}
								</#if>

								<#if item.custcol_my_license_key?has_content>
									<br />
									<br />
									<strong>License Key : </strong>${item.custcol_my_license_key}
								</#if>

								<#if item.custcol_my_expire_date?has_content>
									<br />
									<br />
									<strong>Expiry Date : </strong>${item.custcol_my_expire_date}
								</#if>
							</p>
							<!-- Add this condition for the last item -->
							<#if item_index + 1 == record.item?size>
								<!-- This is the last item -->
								 
								<#if record.custbody_aca_reseller_name?has_content>
									<p>
										<strong>RESELLER : </strong>
										<br />
										<#if record.custbody_aca_reseller_full_info == true>
											${record.custbody1}
										<#else>
											${record.custbody_aca_reseller_name}
										</#if>
									</p>
								</#if>

								<#if record.cseg1?has_content>
									<p>
										<strong>END USER :</strong>
										<br />
										<#if record.custbody_aca_end_user_full_info == true>
											User: ${record.cseg1}

											<#if record.cseg1.custrecord_address?has_content>
												<br />
												Address: ${record.cseg1.custrecord_address}
											</#if>
											<#if record.cseg1.custrecord_address1?has_content>
												<br />
												${record.cseg1.custrecord_address1}
											</#if>
											<#if record.cseg1.custrecord_address2?has_content>
												<br />
												${record.cseg1.custrecord_address2}
											</#if>
											<#if record.cseg1.custrecord_address3?has_content>
												<br />
												${record.cseg1.custrecord_address3}
											</#if>
											<#if record.cseg1.custrecord_city?has_content?has_content>
												<br />
												${record.cseg1.custrecord_city} ${record.cseg1.custrecord_stateprov} ${record.cseg1.custrecord_zippostalcode}
											</#if>
											<#if record.cseg1.custrecord_country?has_content>
												<br />
												${record.cseg1.custrecord_country}
											</#if>
											<#if record.cseg1.custrecord_phone?has_content>
												<br />
												Telp: ${record.cseg1.custrecord_phone}

												<#if record.cseg1.custrecord_fax?has_content>
													Fax: ${record.cseg1.custrecord_fax}
												</#if>
											</#if>
											<#if record.cseg1.custrecord_contact?has_content>
												<br />
												Contact: ${record.cseg1.custrecord_contact}
											</#if>
											<#if record.cseg1.custrecord_email?has_content>
												<br />
												Email: ${record.cseg1.custrecord_email}
											</#if>

										<#else>
											${record.cseg1}
										</#if>
									</p>
								</#if>

							</#if>
						</td>
						<#assign itemrate = item.rate>
						<td class="borderkanan" align="right">${itemrate?string['#,##0.00']}</td>
						<td class="borderkanan" align="center">${item.units}</td>
						<#assign itemamount = item.amount>
						<td align="right">${itemamount?string['#,##0.00']}</td>
					</tr>
				</#list>
				<!-- end items -->
			</table>
		</#if>
	</body>
</pdf>