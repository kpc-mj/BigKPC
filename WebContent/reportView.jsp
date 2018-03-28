<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<title>BIG KPC</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins">
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

body, h1, h2, h3, h4, h5 {
	font-family: "Poppins";
}

body {
	font-size: 16px;
}

a {
	text-decoration: none
}

.w3-half img {
	margin-bottom: -6px;
	margin-top: 16px;
	opacity: 0.8;
	cursor: pointer
}

.w3-half img:hover {
	opacity: 1
}

div.container {
	width: 40%;
	margin-left: 30%;
	margin-right: 30%;
	margin-bottom: 15%;
}

.tg {
	border-collapse: collapse;
	border-spacing: 0;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 20px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 15px 10px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
}

.tg .tg-kb3h {
	font-size: 16px;
	font-family: Verdana, Geneva, sans-serif !important;;
	background-color: #efefef;
	text-align: center;
	vertical-align: top;
	border-color: #c0c0c0;
}

.tg .tg-1twi {
	font-family: Verdana, Geneva, sans-serif !important;;
	background-color: #ffffff;
	text-align: center;
	vertical-align: top;
	border-color: #c0c0c0;
}

.content {
	margin-left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.table2 {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: white;
}

.table2 td {
	font-size: 17px;
	padding: 10px 5px;
	overflow: hidden;
	word-break: normal;
	margin-bottom: 50px;
}

.table2 th {
	font-family: 'Jeju Gothic', sans-serif;
	font-weight: normal;
	padding: 10px 5px;
	overflow: hidden;
	word-break: normal;
}

li{
	font-family: 'Jeju Gothic';
	font-size: 20px;
}

p {
	font-family: 'Jeju Gothic';
	font-size: 20px;
}
</style>

<body>

	<!-- Sidebar/menu -->
	<nav
		class="w3-sidebar w3-indigo w3-collapse w3-top w3-large w3-padding"
		style="z-index: 3; width: 250px; font-weight: bold;" id="mySidebar">
		<br> <a href="javascript:void(0)" onclick="w3_close()"
			class="w3-button w3-hide-large w3-display-topleft"
			style="width: 100%; font-size: 22px">Close Menu</a>
		<div class="w3-container">
			<h3 class="w3-padding-64">
				<b>BIG KPC</b><br> <font size=4px> : ${sessionScope.id }</font>
				<font size=2px><a href="loginView.html"> (logout)</a></font>
			</h3>
		</div>
		<div class="w3-bar-block">
			<a href="searchView.jsp" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Search</a> <a
				href="#Information" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Information</a> <a
				href="#Financial Summary" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Financial Summary</a> <a
				href="#Chart" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Chart</a> <a
				href="#Sector Analysis" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Sector Analysis</a>
		</div>

	</nav>

	<!-- Top menu on small screens -->
	<header
		class="w3-container w3-top w3-hide-large w3-indigo w3-xlarge w3-padding">
		<a href="javascript:void(0)"
			class="w3-button w3-indigo w3-margin-right" onclick="w3_open()">&#9776;</a>
		<span>BIG KPC</span>
	</header>

	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large" onclick="w3_close()"
		style="cursor: pointer" title="close side menu" id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 340px; margin-right: 40px">

		<!-- Header -->
		<div class="w3-container" style="margin-top: 80px" id="Information">
			<h1 class="w3-jumbo">
				<font face='Jeju Gothic'>${param.cmpName}</font>
			</h1>


			<!--Information -->
			<h1 class="w3-xxxlarge w3-text-indigo">
				<b>Information.</b>
			</h1>
			<div style="	text-align:justify;">
			<hr style="width: 50px; border: 5px solid #144169" class="w3-round">
			<c:forEach items="${requestScope.cmpTxt}" var="data">
				<li>${data}. </li>
			</c:forEach>
			</div>


			<div style="height: 100px"></div>

			<!-- Financial Summary -->
			<div class="w3-container" id="Financial Summary"
				style="margin-top: 75px">
				<h1 class="w3-xxxlarge w3-text-indigo">
					<b>Financial Summary.</b>
				</h1>
				<hr style="width: 50px; border: 5px solid #144169" class="w3-round">
				<div id="table3">
					<p>- IFRS 별도</p>
					<table class="tg" style="width: 100%;">
						<tr>
							<th class="tg-kb3h" width="5%">년도</th>
							<th class="tg-kb3h" width="10%">매출액</th>
							<th class="tg-kb3h" width="12%">영업이익</th>
							<th class="tg-kb3h" width="15%">당기순이익</th>
							<th class="tg-kb3h" width="12%">자산총계</th>
							<th class="tg-kb3h" width="12%">부채총계</th>
							<th class="tg-kb3h" width="15%">순이익률</th>
							<th class="tg-kb3h" width="12%">자본금</th>
							<th class="tg-kb3h" width="2%">CAPEX</th>
							<th class="tg-kb3h" width="2%">FCF</th>
							<th class="tg-kb3h" width="2%">ROE</th>
							<th class="tg-kb3h" width="2%">ROA</th>
							<th class="tg-kb3h" width="2%">EPS</th>
							<th class="tg-kb3h" width="2%">PER</th>
							<th class="tg-kb3h" width="2%">BPS</th>
							<th class="tg-kb3h" width="2%">PBR</th>
						</tr>
						<c:forEach items='${requestScope.financeData3}' var="data">
							<tr>
								<td class="tg-1twi">${data.year}</td>
								<td class="tg-1twi">${data.revenue}</td>
								<td class="tg-1twi">${data.operatingIncome}</td>
								<td class="tg-1twi">${data.netIncome}</td>
								<td class="tg-1twi">${data.totalAsset}</td>
								<td class="tg-1twi">${data.totalDebt}</td>
								<td class="tg-1twi">${data.netProfitRatio}</td>
								<td class="tg-1twi">${data.capitalGross}</td>
								<td class="tg-1twi">${data.capex}</td>
								<td class="tg-1twi">${data.fcf}</td>
								<td class="tg-1twi">${data.roe}</td>
								<td class="tg-1twi">${data.roa}</td>
								<td class="tg-1twi">${data.eps}</td>
								<td class="tg-1twi">${data.per}</td>
								<td class="tg-1twi">${data.bps}</td>
								<td class="tg-1twi">${data.pbr}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<br> <br>
				<div id="table4">
					<p>- IFRS 연결</p>
					<table class="tg" style="width: 100%;">
						<tr>
							<th class="tg-kb3h" width="5%">년도</th>
							<th class="tg-kb3h" width="10%">매출액</th>
							<th class="tg-kb3h" width="12%">영업이익</th>
							<th class="tg-kb3h" width="15%">당기순이익</th>
							<th class="tg-kb3h" width="12%">자산총계</th>
							<th class="tg-kb3h" width="12%">부채총계</th>
							<th class="tg-kb3h" width="15%">순이익률</th>
							<th class="tg-kb3h" width="12%">자본금</th>
							<th class="tg-kb3h" width="2%">CAPEX</th>
							<th class="tg-kb3h" width="2%">FCF</th>
							<th class="tg-kb3h" width="2%">ROE</th>
							<th class="tg-kb3h" width="2%">ROA</th>
							<th class="tg-kb3h" width="2%">EPS</th>
							<th class="tg-kb3h" width="2%">PER</th>
							<th class="tg-kb3h" width="2%">BPS</th>
							<th class="tg-kb3h" width="2%">PBR</th>
						</tr>
						<c:forEach items='${requestScope.financeData4}' var="data">
							<tr>
								<td class="tg-1twi">${data.year}</td>
								<td class="tg-1twi">${data.revenue}</td>
								<td class="tg-1twi">${data.operatingIncome}</td>
								<td class="tg-1twi">${data.netIncome}</td>
								<td class="tg-1twi">${data.totalAsset}</td>
								<td class="tg-1twi">${data.totalDebt}</td>
								<td class="tg-1twi">${data.netProfitRatio}</td>
								<td class="tg-1twi">${data.capitalGross}</td>
								<td class="tg-1twi">${data.capex}</td>
								<td class="tg-1twi">${data.fcf}</td>
								<td class="tg-1twi">${data.roe}</td>
								<td class="tg-1twi">${data.roa}</td>
								<td class="tg-1twi">${data.eps}</td>
								<td class="tg-1twi">${data.per}</td>
								<td class="tg-1twi">${data.bps}</td>
								<td class="tg-1twi">${data.pbr}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			<div style="height: 100px"></div>

			<!-- Chart -->
			<div class="w3-container" id="Chart" style="margin-top: 75px">
				<h1 class="w3-xxxlarge w3-text-indigo">
					<b>Chart.</b>
				</h1>
				<hr style="width: 50px; border: 5px solid #144169" class="w3-round">

				<div id="chart_div" class="content"></div>


				<script type="text/javascript"
					src="https://www.gstatic.com/charts/loader.js"></script>
				<script type="text/javascript">
					google.charts.load('current', {
						'packages' : [ 'corechart' ]
					});
					google.charts.setOnLoadCallback(drawChart);

					function drawChart() {
						var asdas = eval("${requestScope.stockData}");
						var data = google.visualization.arrayToDataTable(asdas,
								true);
						var options = {
							'width' : 1520,
							'height' : 800,
							'chartArea' : {
								'width' : '90%',
								'height' : '80%'
							},
							legend : 'none'
						};
						var chart = new google.visualization.CandlestickChart(
								document.getElementById('chart_div'));
						chart.draw(data, options);
					}
				</script>

				<script type="text/javascript"
					src="https://www.gstatic.com/charts/loader.js"></script>
				<script type="text/javascript">
					google.charts.load('current', {
						packages : [ 'corechart', 'bar' ]
					});
					google.charts.setOnLoadCallback(drawAnnotations);

					function drawAnnotations() {

						var volume = eval("${requestScope.volumeData}");
						var data = google.visualization
								.arrayToDataTable(volume);
						var options = {
							'width' : 1520,
							'height' : 800,
							'chartArea' : {
								'width' : '90%',
								'height' : '80%'
							},
							annotations : {
								alwaysOutside : true,
								textStyle : {
									fontSize : 5,
									color : '#000',
									auraColor : 'none'
								}
							},
							legend : 'none'
						};

						var chart = new google.visualization.ColumnChart(
								document.getElementById('chart_div2'));
						chart.draw(data, options);
					}
				</script>
				<div id="chart_div2"></div>








			</div>
			<div style="height: 200px"></div>

			<!-- Sector Analysis -->
			<div class="w3-container" id="Sector Analysis"
				style="margin-top: 75px">
				<h1 class="w3-xxxlarge w3-text-indigo">
					<b>Sector Analysis</b>
				</h1>
				<hr style="width: 50px; border: 5px solid #144169" class="w3-round">


				<table class="table2"
					style="width: 80%; border-style: hidden; font-family: 'Jeju Gothic', sans-serif;">
					<tr>
						<td class="tg-031e" colspan="2">- 재무상태</td>
					</tr>
					<tr>
						<td class="tg-031e"><div id="chart_1" style="float: left"></div></td>
						<td class="tg-031e"><div id="chart_2" style="float: left"></div></td>
					</tr>
					<tr>
						<td class="tg-031e" colspan="2">- 포괄 손익 계산서</td>
					</tr>
					<tr>
						<td class="tg-031e"><div id="chart_3" style="float: left"></div></td>
						<td class="tg-031e"><div id="chart_4" style="float: left"></div></td>
					</tr>
					<tr>
						<td class="tg-031e" colspan="2">- 가치평가</td>
					</tr>
					<tr>
						<td class="tg-031e"><div id="chart_5" style="float: left"></div></td>
						<td class="tg-031e"><div id="chart_6" style="float: left"></div></td>
					</tr>
				</table>


				<script type="text/javascript"
					src="https://www.gstatic.com/charts/loader.js"></script>
				<script type="text/javascript">
					google.charts.load('current', {
						packages : [ 'corechart', 'bar' ]
					});
					google.charts.setOnLoadCallback(drawMultSeries);

					function drawMultSeries() {
						var finData = eval("${requestScope.finData1}");
						var data = google.visualization
								.arrayToDataTable(finData);

						var options = {
							title : 'Revenue',
							width : 500,
							height : 300,
							legend : {
								position : 'top',
								maxLines : 3
							},
							bar : {
								groupWidth : '75%'
							},
							isStacked : true
						};

						var chart = new google.visualization.BarChart(document
								.getElementById('chart_1'));
						chart.draw(data, options);
					}
				</script>


				<script type="text/javascript"
					src="https://www.gstatic.com/charts/loader.js"></script>
				<script type="text/javascript">
					google.charts.load('current', {
						packages : [ 'corechart', 'bar' ]
					});
					google.charts.setOnLoadCallback(drawMultSeries);

					function drawMultSeries() {
						var finData = eval("${requestScope.finData2}");
						var data = google.visualization
								.arrayToDataTable(finData);

						var options = {
							title : 'OperatingIncome',
							width : 500,
							height : 300,
							legend : {
								position : 'top',
								maxLines : 3
							},
							bar : {
								groupWidth : '75%'
							},
							isStacked : true
						};

						var chart = new google.visualization.BarChart(document
								.getElementById('chart_2'));
						chart.draw(data, options);
					}
				</script>



				<script type="text/javascript"
					src="https://www.gstatic.com/charts/loader.js"></script>
				<script type="text/javascript">
					google.charts.load('current', {
						packages : [ 'corechart', 'bar' ]
					});
					google.charts.setOnLoadCallback(drawMultSeries);

					function drawMultSeries() {
						var finData = eval("${requestScope.finData3}");
						var data = google.visualization
								.arrayToDataTable(finData);

						var options = {
							title : 'Total Asset',
							width : 500,
							height : 300,
							legend : {
								position : 'top',
								maxLines : 3
							},
							bar : {
								groupWidth : '75%'
							},
							isStacked : true
						};

						var chart = new google.visualization.BarChart(document
								.getElementById('chart_3'));
						chart.draw(data, options);
					}
				</script>

				<script type="text/javascript"
					src="https://www.gstatic.com/charts/loader.js"></script>
				<script type="text/javascript">
					google.charts.load('current', {
						packages : [ 'corechart', 'bar' ]
					});
					google.charts.setOnLoadCallback(drawMultSeries);

					function drawMultSeries() {
						var finData = eval("${requestScope.finData4}");
						var data = google.visualization
								.arrayToDataTable(finData);

						var options = {
							title : 'Total Debt',
							width : 500,
							height : 300,
							legend : {
								position : 'top',
								maxLines : 3
							},
							bar : {
								groupWidth : '75%'
							},
							isStacked : true
						};

						var chart = new google.visualization.BarChart(document
								.getElementById('chart_4'));
						chart.draw(data, options);
					}
				</script>

				<div id="chart_4" style="float: left"></div>


				<script type="text/javascript"
					src="https://www.gstatic.com/charts/loader.js"></script>
				<script type="text/javascript">
					google.charts.load('current', {
						packages : [ 'corechart', 'bar' ]
					});
					google.charts.setOnLoadCallback(drawMultSeries);

					function drawMultSeries() {
						var finData = eval("${requestScope.finData5}");
						var data = google.visualization
								.arrayToDataTable(finData);

						var options = {
							title : 'PER',
							width : 500,
							height : 300,
							legend : {
								position : 'top',
								maxLines : 3
							},
							bar : {
								groupWidth : '75%'
							},
							isStacked : true
						};

						var chart = new google.visualization.BarChart(document
								.getElementById('chart_5'));
						chart.draw(data, options);
					}
				</script>


				<script type="text/javascript"
					src="https://www.gstatic.com/charts/loader.js"></script>
				<script type="text/javascript">
					google.charts.load('current', {
						packages : [ 'corechart', 'bar' ]
					});
					google.charts.setOnLoadCallback(drawMultSeries);

					function drawMultSeries() {
						var finData = eval("${requestScope.finData6}");
						var data = google.visualization
								.arrayToDataTable(finData);

						var options = {
							title : 'PBR',
							width : 500,
							height : 300,
							legend : {
								position : 'top',
								maxLines : 3
							},
							bar : {
								groupWidth : '75%'
							},
							isStacked : true
						};

						var chart = new google.visualization.BarChart(document
								.getElementById('chart_6'));
						chart.draw(data, options);
					}
				</script>


	</div>
			</div>
		</div>

		<!-- W3.CSS Container -->
		<div class="w3-light-grey w3-container w3-padding-32"
			style="margin-top: 75px;">
			<p class="w3-right">
				<font color="#8C8C8C" size="4px"> BIG KPC By<a
					class="w3-hover-opacity"> 'Three K'</a></font>
			</p>
		</div>

		<script>
			// Script to open and close sidebar
			function w3_open() {
				document.getElementById("mySidebar").style.display = "block";
				document.getElementById("myOverlay").style.display = "block";
			}

			function w3_close() {
				document.getElementById("mySidebar").style.display = "none";
				document.getElementById("myOverlay").style.display = "none";
			}

			// Modal Image Gallery
			function onClick(element) {
				document.getElementById("img01").src = element.src;
				document.getElementById("modal01").style.display = "block";
				var captionText = document.getElementById("caption");
				captionText.innerHTML = element.alt;
			}
		</script>
</body>
</html>