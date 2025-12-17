<?xml version="1.0"?>
<!DOCTYPE pdf PUBLIC "-//big.faceless.org//report" "report-1.1.dtd">
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
							PROFORMA INVOICE
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
								<strong>PI Number</strong>
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
								<strong>Order No.</strong>
								<br />
								${record.tranid}
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
								<strong>Department</strong>
								<br />
								${record.department}
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
								<strong>PO Number</strong>
								<br />
								${record.otherrefnum}
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
						<td width="60%">
							<strong>Comments:</strong>
						</td>
						<td class="borderkiri borderkanan" width="20%">
							<strong>Discount</strong>
						</td>
						<td align="right" width="20%">
							<#assign discount = record.discounttotal><!-- ${discount} --><#if discount lt 0 >${discount}<#else>0</#if>
						</td>
					</tr>
					<tr>
						<td>
							${record.custbody_item_commentsg}
						</td>
						<td class="borderkiri borderkanan">
							<strong>Subtotal</strong>
						</td>
						<#assign subtotal = record.subtotal>
						<td align="right">
							${subtotal?string['#,##0.00']}
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td class="borderkiri borderkanan">
							<strong>Tax Total (SST 8%)</strong>
						</td>
						<#assign taxtotal = record.taxtotal>
						<td class="borderbawah" align="right">
							${taxtotal?string['#,##0.00']}
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td class="borderkiri borderkanan">
							<strong>Total Amount</strong>
						</td>
						<#assign total = record.total>
						<td align="right">
							${total?string['#,##0.00']}
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td class="borderkiri borderkanan">
							Less Payment
						</td>
						<td align="right">
							${nolkan}
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td class="borderkiri borderkanan">
							Less Pmt. Disc
						</td>
						<td class="borderless" align="right">
							${nolkan}
						</td>
					</tr>
					<tr>
						<td>${record.custbody_aca_so_reference}</td>
						<td class="borderkiri borderkanan">
							<strong>Amount due ${record.currency}</strong>
						</td>
						<#assign total = record.total>
						<td align="right">
							${total?string['#,##0.00']}
						</td>
					</tr>
				</table>
				<table class="atas">
					<tr>
						<td width="50%">
							<strong>INTEREST OF 1.5% PER MONTH WILL BE CHARGED ON OVERDUE ACCOUNT.</strong>
						</td>
						<td align="right">
							<strong>CLAUSE, GOODS SOLD ARE NOT RETURNABLE</strong>
						</td>
					</tr>
					<tr>
						<td>
							<strong>Banking Instructions:</strong><br />
							${subsidiary.custrecord_aca_print_out_bank_instr}
						</td>
						<td align="right" vertical-align="bottom">
							<strong>This Pro Forma Invoice Computer Generated, No Signature Required</strong>
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
								<th class="borderkanan borderbawah" align="center" vertical-align="middle" width="20%">Item Number</th>
								<th class="borderkanan borderbawah" align="center" vertical-align="middle" width="25%">Description</th>
								<th class="borderkanan borderbawah" align="center" vertical-align="middle" width="20%">Unit Price</th>
								<th class="borderkanan borderbawah" align="center" vertical-align="middle" width="7%">UOM</th>
								<th class="borderbawah" align="center" vertical-align="middle" width="23%">Extended Price (${record.currency})</th>
							</tr>
						</thead>
					</#if>
				<tr>
					<#if item.class!="COGS">
						<td class="borderkanan" align="right">${item.quantity}</td>
						<td class="borderkanan" align="left">
							<#if item.custcol_aca_vendor_name_code?has_content>
								${item.custcol_aca_vendor_name_code}
							<#else>
								${item.item}
							</#if>
						</td>
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
				</tr>
				</#list><!-- end items -->
			</table>
		</#if>

	</body>
</pdf>