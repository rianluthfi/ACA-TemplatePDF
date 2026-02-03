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
											<#if companyInformation.logoUrl?length != 0><@filecabinet nstype="image" src="${companyInformation.logoUrl}" width="100%" height="100%" />
										</#if>
									</td>
									<td class="judul border" width="30%">
										<p align="center">
											<span style="font-size: 13pt;">TAX INVOICE</span>
											<br/>
											<span style="font-size: 8pt;">GST Reg No: M2-0072794-X</span>
										</p>
										<!-- <p>
											<span style="font-size: 8pt;">GST Reg No: M2-0072794-X</span>
										</p> -->
									</td>
									<td width="15%">&nbsp;</td>
									<td class="borderkiri borderatas borderkanan" align="center" width="11%">
										<p style="text-align: center;">
											<strong>Invoice Date</strong>
											<br />
											${record.trandate}
										</p>
									</td>
									<td class="borderatas borderkanan" align="center" width="9%">
										<p style="text-align: center;">
											<strong>Page</strong>
											<br />&nbsp;<pagenumber/>of <totalpages/>
										</p>
									</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td class="border" colspan="2" align="center">
									<p style="text-align: center;">
										<strong>Invoice Number</strong>
										<br />
										<span class="docnumber">${record.tranid}</span>
									</p>
								</td>
							</tr>
						</table>
						<table class="atas">
							<tr>
								<td class="borderless" width="45%">${subsidiary.mainaddress_text}</td>
								<td width="10%">&nbsp;</td>
								<td width="45%">&nbsp;</td>
							</tr>
							<tr>
								<td>
									<br />
									Sold To:
								</td>
								<td>&nbsp;</td>
								<td>
									<br />
									Ship To:
								</td>
							</tr>
							<tr>
								<td class="border">${record.billaddress}</td>
								<td>&nbsp;</td>
								<td class="border">${record.shipaddress}</td>
							</tr>
						</table>
						<table class="subatas" style="margin-top: 15px;">
							<tr>
								<#assign sonumber = record.createdfrom/>
								<td class="border" align="center">
									<p style="text-align: center;">
										<strong>Order No.</strong>
										<br />
										${record.custbody_aca_mir_so_number}</p>
								</td>
								<td class="borderatas borderbawah" align="center">
									<p style="text-align: center;">
										<strong>Order Date</strong>
										<br />
										${record.trandate}</p>
								</td>
								<td class="border" align="center">
									<p style="text-align: center;">
										<strong>Department</strong>
										<br />
										${record.department}</p>
								</td>
								<td class="borderatas borderbawah" align="center">
									<p style="text-align: center;">
										<strong>Sales Rep</strong>
										<br />
										${record.salesrep}</p>
								</td>
								<td class="border" align="center">
									<p style="text-align: center;">
										<strong>PO Number</strong>
										<br />
										${record.otherrefnum}</p>
                                </td>
								<td class="borderatas borderbawah borderkanan" align="center">
									<p style="text-align: center;">
										<strong>Due Date</strong>
										<br />
										${record.duedate}</p>
								</td>
								<td class="borderatas borderbawah borderkanan" align="center">
									<p style="text-align: center;">
										<strong>Terms</strong>
										<br />
										${record.terms}</p>
								</td>
							</tr>
						</table>

					</macro>
					<macro id="nlfooter">
						
						<#assign subtotal_after_discount = record.subtotal+record.discounttotal />

						<table class="bawah" style="margin-bottom: 7px;">
							<#assign nolkan = record.total-record.total />
							<tr>
								<td width="35%">
									<strong>Comments:</strong>
								</td>
								<td width="25%">
									<#if subsidiary.currency != record.currency>
										<strong><u>For Singapore GST Purpose Only</u></strong>
									</#if>
								</td>
								<td class="borderkiri borderkanan" width="20%">
									<strong>Subtotal</strong>
								</td>
								<td align="right" width="20%">
									${record.subtotal}
								</td>
							</tr>
							<tr>
								<td rowspan="6">
									<#if record.custbody_item_commentsg !="">${record.custbody_item_commentsg}</#if>
								</td>
								<td rowspan="7" colspan="1">
									<#if subsidiary.currency != record.currency>
									<table width="100%">
										<#assign exchangerate = record.exchangerate * 1 />
										<#assign sgd_baseamount = (record.subtotal+record.discounttotal) * record.exchangerate />
										<#assign sgd_taxamount = record.taxtotal * record.exchangerate />
										<#assign sgd_totalamount = record.total * record.exchangerate />
										<tr>
											<td>Exchange Rate to SGD</td>
											<td align="right">${exchangerate?number}</td>
										</tr>
										<tr>
											<td>Base Amount in SGD</td>
											<td align="right">${sgd_baseamount?string["#,##0.00"]}</td>
										</tr>
										<tr>
											<td>Add (GST 9%)</td>
											<td align="right">${sgd_taxamount?string["#,##0.00"]}</td>
										</tr>
										<tr>
											<td>Total Amount in SGD</td>
											<td align="right">${sgd_totalamount?string["#,##0.00"]}</td>
										</tr>
									</table>
									</#if>
								</td>
								<td class="borderkiri borderkanan" width="20%">
									<strong>Discount</strong>
								</td>
								<td align="right" width="20%">
									<#assign discount = record.discounttotal>
									<!-- ${discount} -->
									<#if discount lt 0 >${discount}<#else>0</#if>
								</td>
							</tr>
							<tr>
								<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">
									<strong>Subtotal After Discount</strong>
								</td>
								<td style="padding-bottom: 5px; padding-top: 5px;" align="right">${subtotal_after_discount?string["#,##0.00"]}</td>
							</tr>
							<tr>
								<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">
									<strong>Tax Total (GST 9%)</strong>
								</td>
								<td class="borderbawah" style="padding-bottom: 5px; padding-top: 5px;" align="right">${record.taxtotal}</td>
							</tr>
							<tr>
								<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">
									<strong>Total Amount</strong>
								</td>
								<td style="padding-bottom: 5px; padding-top: 5px;" align="right">${record.total}</td>
							</tr>
							<tr>
								<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">Less Payment</td>
								<td style="padding-bottom: 5px; padding-top: 5px;" align="right">${nolkan}</td>
							</tr>
							<tr>
								<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">Less Pmt. Disc</td>
								<td class="borderless" style="padding-bottom: 5px; padding-top: 5px;" align="right">${nolkan}</td>
							</tr>
							<tr>
								<td>${record.custbody_aca_so_reference}</td>
								<td class="borderkiri borderkanan" style="padding-bottom: 5px; padding-top: 5px;">
									<strong>Amount due ${record.currency}</strong>
								</td>
								<td style="padding-bottom: 5px; padding-top: 5px;" align="right">${record.total}</td>
							</tr>
					</table>
					<table class="atas" style="border-collapse: collapse; border-style: none; border-width: 1px; margin-right: 0px; margin-left: auto;" border="1">
						<tr>
							<td width="50%">
								<strong>• INTEREST OF 1.5% PER MONTH WILL BE CHARGED ON OVERDUE ACCOUNT.</strong>
							</td>
							<td style="align: right;">
								<strong>CLAUSE, GOODS SOLD ARE NOT RETURNABLE</strong>
							</td>
						</tr>
						<tr>
							<td>
								<strong>Banking Instructions (Bank Charges to be borne by Payer):</strong>
							</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<#if record.currency == "USD">
								<td style="height: 5px;" width="20%">
									"Oversea-Chinese Banking Corporation Ltd<br />
									65 Chulia Street, OCBC Centre (S) 049513<br />
									Swift Code: OCBCSGSG<br />
									Account Name: ACA Pacific Technology (S) Pte Ltd<br />
									Account Number (USD): 501-002927-301"
								</td>
							<#else>
								<td style="height: 5px;" width="20%">
									"Oversea-Chinese Banking Corporation Ltd<br />
									65 Chulia Street, OCBC Centre (S) 049513<br />
									Swift Code: OCBCSGSG<br />
									Account Name: ACA Pacific Technology (S) Pte Ltd<br />
									Account Number (SGD): 504-032483-001"
								</td>
							</#if>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td style="height: 5px;" align="center">
								<span style="color: rgb(0, 0, 0);">
									<strong>This Invoice Computer Generated, No Signature Required</strong>
								</span>
							</td>
						</tr>
						<tr>
							<td style="height: 1px;" width="30%">&nbsp;</td>
							<td class="borderless" style="height: 1px;" align="center">&nbsp;</td>
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
<table class="itemtable" style="width: 100%; margin-top: 10px;" border="1px">									<!-- start items -->
									<#list record.item as item><#if item_index==0>
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
							<#if item.class!="COGS">
								<#if record.custbody_aca_hide_zero_qty_print == true>
									<#if item.quantity gt 0>
										<td class="borderkanan" align="right">${item.quantity}</td>
										<td class="borderkanan" align="left">${item.item}</td>
										<td class="borderkanan" align="left">
			${item.description}
											<p>${item.custcol_itemcomm}</p>
			END USER:<br />
		${record.cseg1}
										</td>
										<td class="borderkanan" align="right">${item.rate}</td>
										<td class="borderkanan" align="center">${item.units}</td>
										<td align="right">${item.amount}</td>
									</#if>
								<#else>
									<td class="borderkanan" align="right">${item.quantity}</td>
									<td class="borderkanan" align="left">${item.item}</td>
									<td class="borderkanan" align="left">
		${item.description}
										<p>${item.custcol_itemcomm}</p>
		END USER:<br />
	${record.cseg1}
									</td>
									<td class="borderkanan" align="right">${item.rate}</td>
									<td class="borderkanan" align="center">${item.units}</td>
									<td align="right">${item.amount}</td>
								</#if>
							</#if>
						</tr>
					</#list>					<!-- end items --></table>
			</#if>
		</body>
	</pdf>