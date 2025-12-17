<?xml version="1.0"?>
<!DOCTYPE pdf PUBLIC "-//big.faceless.org//report" "report-1.1.dtd">

<#-- 

	Subsidiary	: ACA Malaysia
	Type		: Sales Order


	Structure Item Description
	==========================
	1. item.description
	2. item.custcol_itemcomm				| (if has_content)
	3. item.custcol_my_license_key			| (if has_content)
	4. item.custcol_my_expire_date			| (if has_content)
	5. item.custcol_aca_use_manual_sn		| (if true)
		5.a	item.custcol_aca_manual_sn_1	| (if has_content)
		5.b	item.custcol_aca_manual_sn_2	| (if has_content)
		5.c	item.custcol_aca_manual_sn_3	| (if has_content)
	6. item.cseg1							| (if has_content) and put in last item

    Change Log
    ==========
    Version 2.0 | 2025-12-08 | By Rian
        * Handling Overlapping SN at print out
        * There is limit 4000 char at Text Area column type
        * Still need explore, not solved yet


-->

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
							SALES ORDER
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
								<strong>Order Number</strong>
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
							${record.billaddress}
							<#if record.entity.custentity_my_sst_number?has_content>
								<br />
								SST No. ${record.entity.custentity_my_sst_number}
							</#if>
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
								${record.custbody_aca_so_reference}
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
								<strong>Sales Rep</strong>
								<br />
								${record.salesrep}
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Order Date</strong>
								<br />
								${record.trandate}
							</p>
						</td>
						<td class="borderkanan" align="center">
							<p style="text-align: center;">
								<strong>Ship Via</strong>
								<br />
								${record.custbody_my_ship_via_so}
							</p>
						</td>
						<td align="center">
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

				<table class="bawah" style="margin-bottom: 7px;">
					<#assign nolkan = record.total-record.total />
					<tr>
						<td width="60%" rowspan="6">
							<strong>
								Banking Instructions (Bank Charges to be borne by Payer) :
							</strong>
							<br />
							${subsidiary.custrecord_aca_print_out_bank_instr}
						</td>
						<td class="borderkiri borderkanan" width="20%">
							<strong>Discount</strong>
						</td>
						<td align="right" width="20%">
							<#assign discount = record.discounttotal><!-- ${discount} --><#if discount lt 0 >${discount}<#else>0</#if>
						</td>
					</tr>
					<tr>
						<td class="borderkiri borderkanan">
							<strong>Subtotal</strong>
						</td>
						<#assign subtotal = record.subtotal>
						<td align="right">
							${subtotal?string['#,##0.00']}
						</td>
					</tr>
					<tr>
						<td class="borderkiri borderkanan">
							<strong>Tax Total (SST 8%)</strong>
						</td>
						<#assign taxtotal = record.taxtotal>
						<td class="borderbawah" align="right">
							${taxtotal?string['#,##0.00']}
						</td>
					</tr>
					<tr>
						<td class="borderkiri borderkanan">
							<strong>Total Amount</strong>
						</td>
						<#assign total = record.total>
						<td align="right">
							${total?string['#,##0.00']}
						</td>
					</tr>
					<tr>
						<td class="borderkiri borderkanan">
							Less Payment
						</td>
						<td align="right">
							${nolkan}
						</td>
					</tr>
					<tr>
						<td class="borderkiri borderkanan">
							Less Pmt. Disc
						</td>
						<td class="borderless" align="right">
							${nolkan}
						</td>
					</tr>
					<tr>
						<td>${record.custbody_item_commentsg}</td>
						<td class="borderkiri borderkanan">
							<strong>Amount due ${record.currency}</strong>
						</td>
						<#assign total = record.total>
						<td align="right">
							${total?string['#,##0.00']}
						</td>
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
                /**
				padding-bottom: 3px;
				padding-top: 3px;
                */
				font-size: 9px;
			}

            td.serial {
                padding-bottom: 0;
                line-height: 8pt;
            }

		</style>

	</head>
	<body header="nlheader" header-height="25%" footer="nlfooter" footer-height="12%" padding="0.5in 0.5in 0.5in 0.5in" size="Letter">

		<#if record.item?has_content>
			<table class="itemtable" style="width: 100%; margin-top: 10px;" border="1px">			<!-- start items -->
				<#list record.item as item>
					<#if item_index==0>
						<thead>
							<tr>
								<th class="borderkanan borderbawah" align="center" width="5%">Qty.<br />Ord</th>
								<th class="borderkanan borderbawah" align="center" width="5%">Qty.<br />Ship</th>
								<th class="borderkanan borderbawah" align="center" width="5%">Qty.<br />B/0</th>
								<th class="borderkanan borderbawah" align="center" vertical-align="middle" width="20%">Item Number</th>
								<th class="borderkanan borderbawah" align="center" vertical-align="middle" width="25%">Description</th>
								<th class="borderkanan borderbawah" align="center" vertical-align="middle" width="15%">Unit Price</th>
								<th class="borderkanan borderbawah" align="center" vertical-align="middle" width="7%">UOM</th>
								<th class="borderbawah" align="center" vertical-align="middle" width="18%">Extended Price (${record.currency})</th>
							</tr>
						</thead>
					</#if>
				
                    <#if item.class!="COGS">
                        <tr>
                            <#assign quantity = item.quantity>
                            <#assign quantitybackordered = item.quantitybackordered>
                            <#assign itemrate = item.rate>
                            <#assign itemamount = item.amount>

                            <td class="borderkanan" align="right">${item.quantity}</td>
                            <td class="borderkanan" align="right">${item.quantityfulfilled}</td>
                            <td class="borderkanan" align="right">${item.quantitybackordered}</td>
                            <td class="borderkanan" align="left">${item.item}</td>
                            <td class="borderkanan" align="left">
                                ${item.description}
                            </td>
                            <td class="borderkanan" align="right">${itemrate?string['#,##0.00']}</td>
                            <td class="borderkanan" align="center">${item.units}</td>
                            <td align="right">${itemamount?string['#,##0.00']}</td>
                        </tr>

                        <#if item.custcol_itemcomm!="">
                            <tr>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan" align="left">
                                    <br />
                                    ${item.custcol_itemcomm}
                                </td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td></td>
                            </tr>
                        </#if>

                        <#if item.custcol_my_license_key!="">
                            <tr>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan" align="left">
                                    <br />
                                    <strong>License Key : </strong>${item.custcol_my_license_key}
                                </td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td></td>
                            </tr>
                        </#if>

                        <#if item.custcol_my_expire_date?has_content>
                            <tr>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan" align="left">
                                    <br />
                                    <strong>Expiry Date : </strong>${item.custcol_my_expire_date}
                                </td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td></td>
                            </tr>
                        </#if>

						<#if item.custcol_aca_use_manual_sn == true>
							<tr>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan serial" align="left"><b>SERIAL NUMBER :</b></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td></td>
                            </tr>

							<#if item.custcol_aca_manual_sn_1?has_content>
								<#assign manual_sn_1 = item.custcol_aca_manual_sn_1?split(",") />

								<#list manual_sn_1 as serial_1>
									<#assign clean_serial_1 = serial_1?string?replace(' ', '')?replace('\t', '')?replace('\r', '')?replace('\n', '') />

									<tr>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td class="borderkanan serial" align="left">
											${clean_serial_1}
										</td>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td></td>
									</tr>
								</#list>
							</#if>

							<#if item.custcol_aca_manual_sn_2?has_content>
								<#assign manual_sn_2 = item.custcol_aca_manual_sn_2?split(",") />

								<#list manual_sn_2 as serial_2>
									<#assign clean_serial_2 = serial_2?string?replace(' ', '')?replace('\t', '')?replace('\r', '')?replace('\n', '') />

									<tr>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td class="borderkanan serial" align="left">
											${clean_serial_2}
										</td>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td></td>
									</tr>
								</#list>
							</#if>

							<#if item.custcol_aca_manual_sn_3?has_content>
								<#assign manual_sn_3 = item.custcol_aca_manual_sn_3?split(",") />

								<#list manual_sn_3 as serial_3>
									<#assign clean_serial_3 = serial_3?string?replace(' ', '')?replace('\t', '')?replace('\r', '')?replace('\n', '') />

									<tr>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td class="borderkanan serial" align="left">
											${clean_serial_3}
										</td>
										<td class="borderkanan"></td>
										<td class="borderkanan"></td>
										<td></td>
									</tr>
								</#list>
							</#if>
						</#if>

						<!--
                        <#if item.custcol_aca_inv_detail_number?? && item.custcol_aca_inv_detail_number?has_content>
                            <#assign serials = item.custcol_aca_inv_detail_number?split(",") />

                            <tr>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan serial" align="left"><b>SERIAL NUMBER :</b></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td></td>
                            </tr>

                            <#list serials as serial>

                                <#assign cleanSerial = serial?string?replace(' ', '')?replace('\t', '')?replace('\r', '')?replace('\n', '') />
                                <tr>
                                    <td class="borderkanan"></td>
                                    <td class="borderkanan"></td>
                                    <td class="borderkanan"></td>
                                    <td class="borderkanan"></td>
                                    <td class="borderkanan serial" align="left">
                                        ${cleanSerial}
                                    </td>
                                    <td class="borderkanan"></td>
                                    <td class="borderkanan"></td>
                                    <td></td>
                                </tr>
                            </#list>
                        </#if>
						-->
                    </#if>

                    <!-- Add this condition for the last item --> 
                    <#if item_index + 1 == record.item?size> 
                        <!-- This is the last item -->
                        <#if item.cseg1?has_content>
                            <tr>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan" align="left">
                                    <br />
                                    <br />
                                    <strong>END USER : </strong>${item.cseg1}
                                </td>
                                <td class="borderkanan"></td>
                                <td class="borderkanan"></td>
                                <td></td>
                            </tr>
                        </#if>
                    </#if>

				</#list><!-- end items -->
			</table>
		</#if>

	</body>
</pdf>