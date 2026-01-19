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
											DELIVERY ORDER
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
											<span style="font-size: 11px;"><b>${salesorder.subsidiary.legalname}</b></span>
											<br />
											<b>Co. Registration No.: ${salesorder.subsidiary.custrecord_myei_seller_id_number}</b>
										</td>
										<td>
											&nbsp;
										</td>
										<td>
											&nbsp;
										</td>
										<td class="border" colspan="2" align="center">
											<p style="text-align: center;">
												<strong>Shipment Number</strong>
												<br />
												<span class="docnumber">${record.tranid}</span>
											</p>
										</td>
									</tr>
									<tr>
										<td>
											${salesorder.subsidiary.custrecord_aca_print_out_address}
											<br />
											Web: ${salesorder.subsidiary.custrecord_aca_print_out_web}
											<br/>
											Tel: ${salesorder.subsidiary.custrecord_aca_print_out_telphone} Fax: ${salesorder.subsidiary.custrecord_aca_print_out_fax_number}
											<br/>
											SST Reg No: ${salesorder.subsidiary.custrecord_myei_seller_sst_id}
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
											${salesorder.billaddress}
											<#if salesorder.entity.custentity_my_sst_number?has_content>
												<br />
												SST No. ${salesorder.entity.custentity_my_sst_number}
											</#if>
										</td>
										<td>&nbsp;</td>
										<td class="border">
											${record.shipaddress}
										</td>
									</tr>
								</table>

								<table class="subatas" style="margin-top: 10px;">
									<tr>
										<td class="border" align="center">
											<p style="text-align: center;">
												<strong>Sales Order No.</strong>
												<br />
												${salesorder.tranid}
											</p>
										</td>
										<td class="borderatas borderbawah borderkanan" align="center">
											<p style="text-align: center;">
												<strong>Order Date</strong>
												<br />
												${salesorder.trandate}
											</p>
										</td>
										<td class="borderatas borderbawah borderkanan" align="center">
											<p style="text-align: center;">
												<strong>Ship Via</strong>
												<br />
												${salesorder.custbody_my_ship_via_so}
											</p>
										</td>
										<td class="borderatas borderbawah" align="center">
											<p style="text-align: center;">
												<strong>PO Number.</strong>
												<br />
												${salesorder.otherrefnum}
											</p>
										</td>
										<td class="border" align="center">
											<p style="text-align: center;">
												<strong>Sales Person</strong>
												<br />
												${salesorder.salesrep}
											</p>
										</td>
										<td class="borderatas borderbawah borderkanan" align="center">
											<p style="text-align: center;">
												<strong>Delivery Date</strong>
												<br />
												${salesorder.shipdate}
											</p>
										</td>
									</tr>
								</table>

							</macro>
							<macro id="nlfooter">

								<table class="bawah" style="margin-bottom: 7px;">
									<tr>
										<td rowspan="5" width="32%">
											<strong>Comments:</strong>
											<br />
											${record.custbody_item_commentsg}
										</td>
										<td class="borderkiri borderkanan" width="36%">
											Received by:
										</td>
										<td align="right" width="32%">
											This is a computer generated Delivery Order, no signature is required.
										</td>
									</tr>
									<tr>
										<td class="borderkiri borderkanan">
											&nbsp;
										</td>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td class="borderkiri borderkanan">
											&nbsp;
										</td>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td class="borderkiri borderkanan">
											&nbsp;
										</td>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td class="borderkiri borderkanan borderatas" align="center">
											<strong>Signature, Company's Chop and Date</strong>
										</td>
										<td class="borderatas" align="center">
											${salesorder.subsidiary.legalname}
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
			padding-bottom: 3px;
            padding-top: 3px;
            font-size: 9px;
		}

        td.serial {padding-bottom: 0;}
	</style>
</head>
	<body header="nlheader" header-height="25%" footer="nlfooter" footer-height="10%" padding="0.5in 0.5in 0.5in 0.5in" size="Letter">
		<#if salesorder.item?has_content>
			<table class="itemtable" style="width: 100%; margin-top: 10px; height: 75.5358px;" border="1px">										
				<!-- start items -->
				<#list salesorder.item as item>
					<#if item_index==0>
						<thead>
							<tr>
								<th class="borderkanan borderbawah" align="center" width="5%">No</th>
								<th class="borderkanan borderbawah" align="center" width="20%">Item Number</th>
								<th class="borderkanan borderbawah" align="center" width="41%">Description</th>
								<th class="borderkanan borderbawah" align="center" width="12%"><p align="center">Qty.<br/>Ordered</p></th>
								<th class="borderkanan borderbawah" align="center" width="10%">UOM</th>
								<th class="borderbawah" align="center" width="12%"><p align="center">Qty.<br/>Shipped</p></th>
							</tr>
						</thead>
					</#if>
						<#assign nourut = item_index + 1 />
						<tr>
							<td class="borderkanan" align="right">${nourut}</td>
							<td class="borderkanan" align="left">${item.item}</td>
							<td class="borderkanan" align="left">${item.description}</td>
							<td class="borderkanan" align="right">${item.quantityordered}</td>
							<td class="borderkanan" align="center">${item.units}</td>
							<td align="right">${item.quantity}</td>
						</tr>
						<#if item.custcol_itemcomm?has_content>
							<tr>
								<td class="borderkanan">&nbsp;</td>
								<td class="borderkanan">&nbsp;</td>
								<td class="borderkanan" align="left">
									<#if item.custcol_itemcomm?has_content>
										<br/>
										${item.custcol_itemcomm}
									</#if>
									<#if item.custcol_my_license_key?has_content>
										<br/>
										<strong>License Key :</strong> ${item.custcol_my_license_key}
									</#if>
									<#if item.custcol_my_expire_date?has_content>
										<br/>
										<strong>Expiry Date :</strong> ${item.custcol_my_expire_date}
									</#if>
								</td>
								<td class="borderkanan">&nbsp;</td>
								<td class="borderkanan">&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
						</#if>
                        <#if !record.custbody_aca_hide_sn_print>
                            <#if item.custcol_aca_inv_detail_number?has_content>
                                <#assign serials = item.custcol_aca_inv_detail_number?split(",") />
                                <#assign serialCount = serials?size />
                                <tr>
                                    <td class="borderkanan">&nbsp;</td>
                                    <td class="borderkanan">&nbsp;</td>
                                    <td class="borderkanan serial" align="left">
                                        <strong>SERIAL NUMBER :</strong>
                                    </td>
                                    <td class="borderkanan">&nbsp;</td>
                                    <td class="borderkanan">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <#list serials as serial>
                                    <tr>
                                        <td class="borderkanan">&nbsp;</td>
                                        <td class="borderkanan">&nbsp;</td>
                                        <td class="borderkanan serial" align="left">${serial}</td>
                                        <td class="borderkanan">&nbsp;</td>
                                        <td class="borderkanan">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </#list>
                            </#if>
                        </#if>
						<!-- Add this condition for the last item --> 
						<#if item_index + 1 == record.item?size> 
						<!-- This is the last item -->
						<#if record.cseg1?has_content>
						<tr>
							<td class="borderkanan">&nbsp;</td>
							<td class="borderkanan">&nbsp;</td>
							<td class="borderkanan" align="left">
								<strong>END USER : </strong>${record.cseg1}
							</td>
							<td class="borderkanan">&nbsp;</td>
							<td class="borderkanan">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						</#if>
					</#if>
				</#list>		
				<!-- end items -->
			</table>
		</#if>
	</body>
</pdf>