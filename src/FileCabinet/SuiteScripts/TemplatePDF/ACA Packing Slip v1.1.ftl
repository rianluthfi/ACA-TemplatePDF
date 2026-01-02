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
            <table class="atas"><tr>
	<td rowspan="2" style="width: 317px; height: 50px;" width="35%">
		<#if companyInformation.logoUrl?length != 0><@filecabinet nstype="image" src="${companyInformation.logoUrl}" width="100%" height="100%" />
		</#if>
	</td>
	<td align="center" class="judul border" stye="border: 5px solid red;" vertical-align="middle" width="30%">DELIVERY ORDER</td>
	<td width="15%">&nbsp;</td>
	<td align="center" class="borderkiri borderatas borderkanan" width="11%">
	<p style="text-align: center;"><b>Date</b><br />${record.trandate}</p>
	</td>
	<td align="center" class="borderatas borderkanan" width="9%">
	<p style="text-align: center;"><b>Page</b><br />&nbsp;<pagenumber/> of <totalpages/></p>
	</td>
	</tr>
	<tr>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
	<td align="center" class="border" colspan="2">
	<p style="text-align: center;"><b>Shipment Number</b><br /><span class="docnumber">${record.tranid}</span></p>
	</td>
	</tr></table>

<table class="atas"><tr height="60px">
	<td class="border" width="45%">${record.custbody_aca_sub_main_address}</td>
	<td width="10%">&nbsp;</td>
	<td width="45%">&nbsp;</td>
	</tr>
	<tr>
	<td><br />Sold To:</td>
	<td>&nbsp;</td>
	<td><br />Ship To:</td>
	</tr>
	<tr height="60px">
	<td class="border">${salesorder.billaddress}</td>
	<td>&nbsp;</td>
	<td class="border">${record.shipaddress}</td>
	</tr></table>

<table class="subatas" style="margin-top:15px"><tr>
	<td align="center" class="border">
	<p style="text-align: center;"><b>Department</b><br />${salesorder.department}</p>
	</td>
	<td align="center" class="borderatas borderbawah">
	<p style="text-align: center;"><b>PO Number</b><br />${salesorder.otherrefnum}</p>
	</td>
	<td align="center" class="border">
	<p style="text-align: center;"><b>Sales Person</b><br />${salesorder.salesrep}</p>
	</td>
	<td align="center" class="borderatas borderbawah borderkanan">
	<p style="text-align: center;"><b>Delivery Date</b><br />${salesorder.shipdate}</p>
	</td>
	</tr></table>
        </macro>
        <macro id="nlfooter">
            <table class="bawah" style="margin-bottom:20px"><tr>
	<td width="40%"><b>Comments:</b></td>
	<td class="borderkiri borderkanan" width="30%">Received by:</td>
	<td align="right" width="30%">&nbsp;</td>
	</tr>
	<tr>
	<td><#if record.cseg1 !="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<p>END USER: ${record.cseg1}</p>
	<#else> &nbsp; </#if></td>
	<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px; ">&nbsp;</td>
	<td align="right" style="padding-bottom: 5px; padding-top: 5px; ">&nbsp;</td>
	</tr>
	<tr>
	<td>&nbsp;</td>
	<td class="borderkiri borderkanan borderbawah" style="padding-bottom: 5px; padding-top: 5px; ">&nbsp;</td>
	<td align="right" class="borderbawah" style="padding-bottom: 5px; padding-top: 5px; ">&nbsp;</td>
	</tr>
	<tr>
	<td>
    
        ${salesorder.tranid}
        <!-- ${salesorder.custbody_aca_mir_so_number}<#if record.custbody_aca_so_reference !=""> | ${record.custbody_aca_so_reference}</#if> -->
    </td>
	<td align="center" class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px; "><b>Signature and Company&#39;s Chop and Date</b></td>
	<td align="center" style="padding-bottom: 5px; padding-top: 5px; ">PT. ACA Pacific</td>
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
			padding-bottom: 5px;
            padding-top: 5px;
            font-size: 9px;
          	align: center;
		}
</style>
</head>
<body header="nlheader" header-height="28%" footer="nlfooter" footer-height="15%" padding="0.5in 0.5in 0.5in 0.5in" size="Letter">
    <#if salesorder.item?has_content>
<table border="1px" class="itemtable" style="width: 100%; margin-top: 10px;">
	<!-- start items -->
	<#list salesorder.item as item>
		<#if item_index==0>
			<thead>
				<tr>
				<th align="center" class="borderkanan borderbawah" width="5%">No</th>
				<th align="center" class="borderkanan borderbawah" width="20%">Item Number</th>
				<th align="center" class="borderkanan borderbawah" width="41%">Description</th>
				<th align="center" class="borderkanan borderbawah" width="12%">Qty. Ordered</th>
				<th align="center" class="borderkanan borderbawah" width="10%">UOM</th>
				<th align="center" class="borderbawah" width="12%">Qty. Shipped</th>
				</tr>
			</thead>
		</#if>
		<tr>
			<#assign nourut = item_index + 1 />
			<#if item.class!="COGS">
				<td align="right" class="borderkanan">${nourut}</td>
				<td align="left" class="borderkanan">
					<#if item.custcol_aca_vendor_name_code?has_content>
						${item.custcol_aca_vendor_name_code}
					<#else>
						${item.item}
					</#if>
				</td>
				<td align="left" class="borderkanan">${item.description}</td>
				<td align="right" class="borderkanan">${item.quantityordered}</td>
				<td align="center" class="borderkanan">${item.units}</td>
				<td align="right">${item.quantity}</td>
			</#if>
		</tr>
	</#list><!-- end items --></table>
</#if>
</body>
</pdf>