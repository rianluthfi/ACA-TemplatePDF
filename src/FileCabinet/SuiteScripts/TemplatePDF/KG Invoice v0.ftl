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
					<td style="width: 317px; height: 50px;" rowspan="2" width="35%">
						<#if subsidiary.logo?length != 0>
							<#assign logoUrl = subsidiary.logo?keep_after('src="')?keep_before('"') />
							<img src="${logoUrl}" style="width: 20%; height: 20%;" />
						</#if>
					</td>
					<td class="judul border" align="center" width="30%">TAX INVOICE</td>
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
<p style="text-align: center;"><strong>Invoice Number</strong><br /><span class="docnumber">${record.tranid}</span></p>
</td>
</tr></table>
<table class="atas"><tr>
<td class="border" width="45%">${subsidiary.mainaddress_text}</td>
<td width="10%">&nbsp;</td>
<td width="45%">&nbsp;</td>
</tr>
<tr>
<td><br />Sold To:</td>
<td>&nbsp;</td>
<td><br />Ship To:</td>
</tr>
<tr>
<td class="border">${record.billaddress}</td>
<td>&nbsp;</td>
<td class="border">${record.shipaddress}</td>
</tr></table>
<table class="subatas" style="margin-top: 15px;"><tr><#assign sonumber = record.createdfrom/>
<td class="border" align="center">
<p style="text-align: center;"><strong>Order No.</strong><br />${record.createdfrom.tranid}</p>
</td>
<td class="borderatas borderbawah" align="center">
<p style="text-align: center;"><strong>Order Date</strong><br />${record.trandate}</p>
</td>
<td class="border" align="center">
<p style="text-align: center;"><strong>Department</strong><br />${record.department}</p>
</td>
<td class="borderatas borderbawah" align="center">
<p style="text-align: center;"><strong>Sales Rep</strong><br />${record.salesrep}</p>
</td>
<td class="border" align="center">
<p style="text-align: center;"><strong>PO Number</strong><br />${record.otherrefnum}</p>
</td>
<td class="borderatas borderbawah borderkanan" align="center">
<p style="text-align: center;"><strong>Terms</strong><br />${record.terms}</p>
</td>
</tr></table>
        </macro>
        <macro id="nlfooter">
            <table class="bawah" style="margin-bottom: 7px;"><#assign nolkan = record.total-record.total /><tr>
<td width="55%"><strong>Comments:</strong></td>
<td class="borderkiri borderkanan" width="25%"><strong>Subtotal</strong></td>
<td align="right" width="20%">${record.subtotal}</td>
</tr>
<tr>
<td><#if record.cseg1 !="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;END USER: ${record.cseg1} <#else> &nbsp; </#if></td>
<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;"><strong>Tax Total</strong></td>
<td class="borderbawah" style="padding-bottom: 5px; padding-top: 5px;" align="right">${record.taxtotal}</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;"><strong>Total Amount</strong></td>
<td style="padding-bottom: 5px; padding-top: 5px;" align="right">${record.total}</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">Less Payment</td>
<td style="padding-bottom: 5px; padding-top: 5px;" align="right">${nolkan}</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">Less Pmt. Disc</td>
<td class="borderbawah" style="padding-bottom: 5px; padding-top: 5px;" align="right">${nolkan}</td>
</tr>
<tr>
<td>${record.custbody_aca_so_reference}</td>
<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;"><strong>Amount due ${record.currency}</strong></td>
<td style="padding-bottom: 5px; padding-top: 5px;" align="right">${record.total}</td>
</tr></table>
			<table class="atas">
				<tr>
					<td width="50%">• Invoice over due 60 days: The partner/customer account will be on hold.<br />• Invoice over due &gt;90 days: An interest will be applied with the amount of 3% per month.</td>
					<td rowspan="4"><@filecabinet nstype="image" src="http://6250403.shop.netsuite.com/core/media/media.nl?id=99503&c=6250403&h=U2KhYFY10VQ0l9JNTcmdjxKY7NGf80ShkBA1TRfX1tTmyMfK" width="130" height="85" /></td>
				</tr>
				<tr>
					<td><strong>Banking Instructions:</strong></td>
				</tr>
				<tr>
					<td style="height: 5px;" width="20%">
						<#if record.currency=='IDR'>
							${record.custbody_aca_bank_details}
						<#elseif record.currency=='USD'>
							${subsidiary.custrecord_id_bank_details_usd}
						<#else>
							${record.custbody_aca_bank_details}
						</#if>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="height: 5px;" align="center">
						<#if record.custbody_aca_sign_by?has_content && record.custbody_aca_sign_position?has_content>
							${record.custbody_aca_sign_by}
						<#else>
							Theresa Minarni
						</#if>
					</td>
				</tr>
				<tr>
					<td style="height: 1px;" width="30%">&nbsp;</td>
					<td class="borderatas" style="height: 1px;" align="center">
						<#if record.custbody_aca_sign_by?has_content && record.custbody_aca_sign_position?has_content>
							${record.custbody_aca_sign_position}
						<#else>
							Head of Accounting &amp; Finance
						</#if>
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
</style>
</head>
<body header="nlheader" header-height="28%" footer="nlfooter" footer-height="23%" padding="0.5in 0.5in 0.5in 0.5in" size="Letter">
    <#if record.item?has_content>
<table class="itemtable" style="width: 100%; margin-top: 10px;" border="1px"><!-- start items --><#list record.item as item><#if item_index==0>
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
</#if><tr><#if item.class!="COGS">
<td class="borderkanan" align="right">${item.quantity}</td>
<td class="borderkanan" align="left">${item.item}</td>
<td class="borderkanan" align="left">${item.description}</td>
<td class="borderkanan" align="right">${item.rate}</td>
<td class="borderkanan" align="center">${item.units}</td>
<td align="right">${item.amount}</td>
</#if></tr>
</#list><!-- end items --></table>
</#if>
</body>
</pdf>