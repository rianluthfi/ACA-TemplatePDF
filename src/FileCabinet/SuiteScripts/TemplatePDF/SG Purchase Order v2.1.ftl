<?xml version="1.0"?>
<!DOCTYPE pdf PUBLIC "-//big.faceless.org//report" "report-1.1.dtd">

<#--
    Version         : SG Purchase Order v2.1
    Created By      : Rian

    Change Log
    ==========
    20251210 - SG Purchase Order v2.1
        Change condition to print Ship To with this priority
            1. record.custbody_aca_sub_ship_address | Default Ship To
            2. record.shipaddress                   | If need custom Ship To, No 1 need set empty
            3. subsidiary.shippingaddress_text      | Last option, No 1 and 2 need set empty
-->
<pdf>
	<head>
		<link 
			name="NotoSans" 
			type="font" 
			subtype="truetype" 
			src="${nsfont.NotoSans_Regular}" 
			src-bold="${nsfont.NotoSans_Bold}" 
			src-italic="${nsfont.NotoSans_Italic}"
			src-bolditalic="${nsfont.NotoSans_BoldItalic}" 
			bytes="2"
		/>
		
		<macrolist>
			<macro id="nlheader">

				<table class="header">
					<tr>
						<td width="35%">
							<@filecabinet nstype="image" src="https://6250403.app.netsuite.com/core/media/media.nl?id=2780&c=6250403&h=Qsg396rBV8OQQ_FB8wmK7rt47VZc0DHa5i8pcIB9VXSg8Ghx" width="110" height="21" />
						</td>
						<td class="judul border" align="center" width="30%" style="text-align:center; vertical-align:middle;">
							Purchase Order
						</td>
						<td width="15%">&nbsp;</td>
						<td class="borderkiri borderatas borderkanan" align="center" width="11%">
							<p style="text-align: center; vertical-align:middle;">
								<strong>Date</strong>
								<br />${record.trandate}
							</p>
						</td>
						<td width="9%" class="borderatas borderkanan" align="center" valign="middle">
							<para alignment="center">
								<strong>Page</strong><br/>
								<pagenumber/> of <totalpages/>
							</para>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							<strong>${subsidiary.legalname}</strong> 
							<br />
							${subsidiary.mainaddress_text}
						</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td class="border" align="center" colspan="2">
							<p style="text-align: center; vertical-align:middle;">
								<strong>Purchase Order Number</strong>
								<br />${record.tranid}
							</p>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
					</tr>
				</table>

				<table class="header" style="margin-top: 10px;">
					<tr>
						<td width="40%">
							Vendor Address:
						</td>
						<td width="20%">&nbsp;</td>
						<td width="40%">
							Ship To:
						</td>
					</tr>
					<tr>
						<td class="border">
							${record.billaddress}
						</td>
						<td>&nbsp;</td>
						<td class="border">
							<#if record.custbody_aca_sub_ship_address?has_content>
								${subsidiary.legalname?upper_case}
								<br />
								${record.custbody_aca_sub_ship_address}
                            <#elseif record.shipaddress?has_content>
                                ${record.shipaddress}
							<#else>
								${subsidiary.legalname?upper_case}
								<br />
								${subsidiary.shippingaddress_text}
							</#if>
						</td>
					</tr>
				</table>

				<table class="header" style="margin-top: 15px;">
					<tr>
						<td class="border" align="center" width="26%">
							<p style="text-align: center;"><strong>Reference</strong><br />
								${record.memo}</p>
						</td>
						<td class="borderatas borderbawah" align="center" width="26%">
							<p style="text-align: center;"><strong>Product</strong><br />
								${record.department}-${record.class}</p>
						</td>
						<td class="border" align="center" width="11%">
							<p style="text-align: center;"><strong>PO Date</strong><br />
								${record.trandate}</p>
						</td>
						<td class="borderatas borderbawah" align="center" width="11%">
							<p style="text-align: center;"><strong>Terms</strong><br />
								${record.terms}</p>
						</td>
						<td class="border" align="center" width="11%">
							<p style="text-align: center;"><strong>Ship Via</strong><br />
								${record.custbody_aca_ship_via_po}</p>
						</td>
						<td class="borderatas borderbawah borderkanan" align="center" width="15%">
							<p style="text-align: center;"><strong>Expected Arrival</strong><br />
								${record.duedate}</p>
						</td>
					</tr>
					<tr>
						<td class="borderless" colspan="6" align="center">
							<p style="text-align: center;">
								<br />
								<strong>This is an electronic Purchase Order issued by ACA PACIFIC
									Technology (S) Pte Ltd</strong>
							</p>
						</td>
					</tr>
				</table>
			</macro>

			<macro id="nlfooter">

				<table class="footer">
					<tr>
						<td width="65%" rowspan="3">
							<strong>Comment</strong>
							<#if record.custbody_item_commentsg?has_content>
								<br />
								${record.custbody_item_commentsg}
							</#if>
						</td>
						<td width="15%" class="borderkiri borderkanan">&nbsp;</td>
						<td width="20%" align="right">
							<strong>${record.currency}</strong>
						</td>
					</tr>
					<tr>
						<td class="borderkiri borderkanan">
							<strong>Subtotal</strong>
						</td>
						<td align="right">
							${record.subtotal}
						</td>
					</tr>
					<tr>
						<td class="borderkiri borderkanan borderbawah">
							<strong>Tax Total (9%)</strong>
						</td>
						<td align="right" class="borderbawah">
							${record.taxtotal}
						</td>
					</tr>
					<tr>
						<td>
							<strong>Digitally signed authorized personnel: Mr. Craig Gledhill</strong>
						</td>
						<td class="borderkiri borderkanan">
							<strong>TOTAL P/O AMOUNT</strong>
						</td>
						<td align="right">
							${record.total}
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
			table.header{
				table-layout:fixed;
				width:100%;
				border-collapse: collapse;
				font-size: 9px;
			}
			table.footer{
				table-layout:fixed;
				width:100%;
				border: 1px solid #000000; 
				border-collapse: collapse;
				font-size: 9px;

				<!-- font-size: 9px;
				width:100%; 
				border: 1px solid #000000; 
				border-collapse: collapse;  -->
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
			table.tableitem {
				table-layout:fixed;
				width:100%;
				border-collapse: collapse;
				font-size: 9px; 
			}
		</style>
	</head>
	<body header="nlheader" header-height="25%" footer="nlfooter" footer-height="10%"
		padding="0.5in 0.5in 0.5in 0.5in" size="Letter">
		<#if record.item?has_content>
			<table class="tableitem" style="margin-top: 10px;" border="1px">
				<!-- start items -->
				<#list record.item as item>
					<#if item_index==0>
						<thead>
							<tr>
								<th class="borderkanan borderbawah" align="center" width="5%">No.</th>
								<th class="borderkanan borderbawah" align="center" width="5%">Qty</th>
								<th class="borderkanan borderbawah" align="center" width="23%">Item Number</th>
								<th class="borderkanan borderbawah" align="center" width="30%">Description</th>
								<th class="borderkanan borderbawah" align="center" width="15%">Unit Cost</th>
								<th class="borderkanan borderbawah" align="center" width="7%">UOM</th>
								<th class="borderbawah" align="center" width="20%">Extended Price (${record.currency})</th>
							</tr>
						</thead>
					</#if>
					<tr>
						<td class="borderkanan" align="center">${item_index+1}</td>
						<td class="borderkanan" align="center">${item.quantity}</td>
						<td class="borderkanan" align="left">
							<p style="text-align: left;">
								<#if item.vendorname?has_content>
									${item.item} /
									<br />${item.vendorname}
								<#else>
									${item.item}
								</#if>
							</p>
						</td>
						<td class="borderkanan" align="left">
							<p style="text-align: left;">
								<span>
									${item.description}
								</span>
								

								<#if item.custcol_itemcomm?has_content>
									<br />
									<br />
									Comment:
									<br />
									${item.custcol_itemcomm}
								</#if>
							</p>

							<!-- Add this condition for the last item -->
							<#if item_index + 1 == record.item?size>
								<!-- This is the last item -->
								<p>
									<#if record.custbody_aca_end_user_full_info == true>
										<br />
										<br />
										EU Name: ${record.cseg1}

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
										<#if record.cseg1.custrecord_contact?has_content>
											<br /> 
											Contact Name: ${record.cseg1.custrecord_contact} 
										</#if>
										<#if record.cseg1.custrecord_phone?has_content>
											<br /> 
											Tel: ${record.cseg1.custrecord_phone} 
										</#if>
										<#if record.cseg1.custrecord_email?has_content>
											<br /> 
											Email: ${record.cseg1.custrecord_email} 
										</#if>

									<#else> 
										END USER:
										<br />
										${record.cseg1}
										<br />
										RESELLER:
										<br />
										${record.custbody1}
									</#if>
								</p>
							</#if>
						</td>
						<td class="borderkanan" align="right">${item.rate}</td>
						<td class="borderkanan" align="center">${item.units}</td>
						<td align="right">${item.amount}</td>
					</tr>
				</#list>
				<!-- end items -->
			</table>
		</#if>
	</body>
</pdf>