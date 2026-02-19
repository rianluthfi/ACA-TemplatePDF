<?xml version="1.0"?><!DOCTYPE pdf PUBLIC "-//big.faceless.org//report" "report-1.1.dtd">
<pdf>

<#--
    SG Packing Slip v3.2
    Created By: Rian Luthfi
    Date Created: 2026
    Last Updated By: Rian Luthfi
    Last Updated Date: 2026-02-19

    History:
	v3.2 - 2026-02-19 - Add condition to show item format for QUANTUM item and add tag p to maintain text-align left (Req by Felicia)
    v3.1 - 2026 - Initial template versioning
-->

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
            
<table class="atas"><tr>
<td style="width: 317px; height: 50px;" rowspan="2" width="35%"><#if companyInformation.logoUrl?length != 0><@filecabinet nstype="image" src="${companyInformation.logoUrl}" width="100%" height="100%" /> </#if></td>
<td class="judul border" align="center" width="30%">DELIVERY ORDER</td>
<td width="15%">&nbsp;</td>
<td class="borderkiri borderatas borderkanan" align="center" width="11%">
<p style="text-align: center;"><strong>Date</strong><br />${record.trandate}</p>
</td>
<td class="borderatas borderkanan" align="center" width="9%">
<p style="text-align: center;"><strong>Page</strong><br />&nbsp;<pagenumber/> of <totalpages/></p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="border" colspan="2" align="center">
<p style="text-align: center;"><strong>Shipment Number</strong><br /><span class="docnumber">${record.tranid}</span></p>
</td>
</tr></table>
<table class="atas"><tr>
<td class="border" width="45%">${record.custbody_aca_sub_main_address}</td>
<td width="10%">&nbsp;</td>
<td width="45%">&nbsp;</td>
</tr>
<tr>
<td><br />Sold To:</td>
<td>&nbsp;</td>
<td><br />Ship To:</td>
</tr>
<tr>
<td class="border">${salesorder.billaddress}</td>
<td>&nbsp;</td>
<td class="border">${record.shipaddress}</td>
</tr></table>
<table class="subatas" style="margin-top: 15px;"><tr>
<td class="border" align="center">
<p style="text-align: center;"><strong>Customer Code</strong><br />${salesorder.entity}</p>
</td>
<td class="borderatas borderbawah" align="center">
<p style="text-align: center;"><strong>PO Number.</strong><br />${salesorder.otherrefnum}</p>
</td>
<td class="border" align="center">
<p style="text-align: center;"><strong>Sales Person</strong><br />${salesorder.salesrep}</p>
</td>
<td class="borderatas borderbawah borderkanan" align="center">
<p style="text-align: center;"><strong>Delivery Date</strong><br />${salesorder.shipdate}</p>
</td>
</tr></table>

        </macro>
        <macro id="nlfooter">
            
<table class="bawah" style="margin-bottom: 20px;"><tr>
<td width="32%"><strong>Comments:</strong></td>
<td class="borderkiri borderkanan" width="36%">Received by:</td>
<td style="width: 32%; vertical-align: top;" rowspan="2" align="right" width="32%">This is a computer generated invoice, no signature is required.</td>
</tr>
<tr>
<td><p>${record.custbody_item_commentsg}</p>
<p>END USER: ${record.cseg1}</p>
</td>
<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="borderkiri borderkanan borderbawah" style="padding-bottom: 5px; padding-top: 5px;">&nbsp;</td>
<td class="borderbawah" style="padding-bottom: 5px; padding-top: 5px;" align="right">&nbsp;</td>
</tr>
<tr>
<td>${salesorder.custbody_aca_mir_so_number}<#if record.custbody_aca_so_reference !=""> | ${record.custbody_aca_so_reference}</#if></td>
<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;" align="center"><strong>Signature and Company's Chop and Date</strong></td>
<td style="padding-bottom: 5px; padding-top: 5px;" align="center">ACA Pacific Technology (S) PTE Ltd</td>
</tr></table>

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
<body header="nlheader" header-height="28%" footer="nlfooter" footer-height="15%" padding="0.5in 0.5in 0.5in 0.5in" size="Letter">
    <#if salesorder.item?has_content>
        <table class="itemtable" style="width: 100%; margin-top: 10px;" border="1px"><!-- start items -->
            <#list salesorder.item as item>
                <#if item_index==0>
                    <thead>
                        <tr>
                            <th class="borderkanan borderbawah" align="center" width="5%">No</th>
                            <th class="borderkanan borderbawah" align="center" width="20%">Item Number</th>
                            <th class="borderkanan borderbawah" align="center" width="41%">Description</th>
                            <th class="borderkanan borderbawah" align="center" width="12%">
								<p style="text-align: center;">
									Qty. Ordered
								</p>
							</th>
                            <th class="borderkanan borderbawah" align="center" width="10%">UOM</th>
                            <th class="borderbawah" align="center" width="12%">
								<p style="text-align: center;">
									Qty. Shipped
								</p>
							</th>
                        </tr>
                    </thead>
                </#if>
                <#if item.class!="COGS">
                    <#assign nourut = item_index + 1 />
                    <tr>
                        <td class="borderkanan" align="right">${nourut}</td>
                        <td class="borderkanan" align="left">
							<#--  add tag p to maintain text-lign left  -->
							<p style="text-align: left;">
								<#--  2026-02-19 - Req by Felicia
								Add condition item format for QUANTUM item  -->
								<#if item.custcol_aca_vendor_name_code?has_content>
									<#if item.class?has_content && item.class == "QUANTUM">
										${item.custcol_aca_vendor_name_code} /
										<br />
										${item.item}
									<#else>
										${item.item}
										<#--  ${item.item} /
										<br />${item.vendorname}  -->
									</#if>
								<#else>
									${item.item}
								</#if>
							</p>
						</td>
                        <td class="borderkanan" align="left">${item.description}</td>
                        <td class="borderkanan" align="right">${item.quantityordered}</td>
                        <td class="borderkanan" align="center">${item.units}</td>
                        <td align="right">${item.quantity}</td>
                    </tr>

                    <#if item.custcol_itemcomm?has_content>
						<tr>
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
                            <td class="borderkanan serial" align="left"><b>SERIAL NUMBER :</b></td>
							<td class="borderkanan"></td>
							<td class="borderkanan"></td>
							<td></td>
						</tr>

						<#list serials as serial>
							<tr>
								<td class="borderkanan"></td>
								<td class="borderkanan"></td>
                                <td class="borderkanan serial" align="left">${serial}</td>
								<td class="borderkanan"></td>
								<td class="borderkanan"></td>
								<td></td>
							</tr>
						</#list>
                    </#if>
                </#if>
            </#list><!-- end items -->
        </table>
    </#if>
</body>
</pdf>