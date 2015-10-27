<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <title>AdminLTE | Morris.js Charts</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Morris charts -->
        <link href="/css/morris/morris.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="/css/AdminLTE.css" rel="stylesheet" type="text/css" />

<style type="text/css">

#body{
	width: 100%;
	height: 100%;
	text-align: center;
}
#body #subject{
	width:100%;
	height:10%;
}
#body #content{
	width:100%;
	height:90%;
}
#body #content #period{
	width:100%;
	height:10%;
}
#body #content #summery{
	width:100%;
	height:30%;
	display: block;
	float: left;
	margin: 5%;
	
}
#body #content #graph{
	margin: 5%;
	display:block;
	float: left;
	width:100%;
	height:30%;
}
#body #content #search{
	width:100%;
	height:20%;
}
#body #content #search ul li	{list-style:none; line-height: 3em;}
#body #content #search ul	{border:1;}

#body #content #summery #summery_count{
	float:left;
	width: 45%;
	text-align: center;
	vertical-align: middle;
	padding-left:20%;
	height: 100%;
	
}
#body #content #summery #summery_cost{
	float:right;
	width: 45%;
	text-align: center;
	vertical-align: middle;
	padding-left:20%
}
</style>
</head>
<body>
	
		
		
		<div id="body">
			<div id="subject">
			광고주 = ?
			</div>
			<div id="content">
				<div id="period">
				기간설정 ~~
				</div>
				<div id="summery">
					
					<div id="summery_count">
						<table border=1>
							<tr>
								<td colspan="2">광고시청건수</td>
								<td>중복</td>
								<td>1,000,000</td>
								
							</tr>
							<tr>
								<td colspan="2"></td>
								<td>단일</td>
								<td>600,000</td>
								
							</tr>
						</table>
						
					</div>
					<div id="summery_cost">
						<table border=1>
							<tr>
								<td colspan="2">광고비용 :</td>
								
								<td colspan="2">80,000,000</td>
								
							</tr>
							<tr>
								<td colspan="2"></td>
								
								<td colspan="2"></td>
								
							</tr>
						</table>
					</div>
					
				
				</div>
				
				<div id="graph">

                <!-- Main content -->
                <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Area Chart</h3>
                                </div>
                                <div class="box-body chart-responsive">
                                    <div class="chart" id="revenue-chart" style="height: 300px;"></div>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                            </div>
				<div id="search">
					<ul>
						<li>
						<input type="checkbox" name=age10 value=age10>10대
						
						<input type="checkbox" name=age10 value=age10>20대
						
						<input type="checkbox" name=age10 value=age10>30대
						
						<input type="checkbox" name=age10 value=age10>40대
						
						<input type="checkbox" name=age10 value=age10>40대
						</li>
						<li>
						<input type="checkbox" name=age10 value=age10>10대
						
						<input type="checkbox" name=age10 value=age10>20대
						
						<input type="checkbox" name=age10 value=age10>30대
						
						<input type="checkbox" name=age10 value=age10>40대
						
						<input type="checkbox" name=age10 value=age10>40대
						</li>
						<li>
						<input type="checkbox" name=age10 value=age10>10대
						
						<input type="checkbox" name=age10 value=age10>20대
						
						<input type="checkbox" name=age10 value=age10>30대
						
						<input type="checkbox" name=age10 value=age10>40대
						
						<input type="checkbox" name=age10 value=age10>40대
						</li>
						<li>
						<input type="checkbox" name=age10 value=age10>10대
						
						<input type="checkbox" name=age10 value=age10>20대
						
						<input type="checkbox" name=age10 value=age10>30대
						
						<input type="checkbox" name=age10 value=age10>40대
						
						<input type="checkbox" name=age10 value=age10>40대
						</li>
					</ul>
					
					
				</div>
			</div>
			
		</div>
		
		
        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- Morris.js charts -->
        <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="/js/plugins/morris/morris.min.js" type="text/javascript"></script>

        <!-- AdminLTE App -->
        <script src="/js/AdminLTE/app.js" type="text/javascript"></script>

        <!-- page script -->
        <script type="text/javascript">
            $(function() {
                "use strict";

                // AREA CHART
                var area = new Morris.Area({
                    element: 'revenue-chart',
                    resize: true,
                    data: [
                        {y: '2011 Q1', item1: 2666, item2: 2666},
                        {y: '2011 Q2', item1: 2778, item2: 2294},
                        {y: '2011 Q3', item1: 4912, item2: 1969},
                        {y: '2011 Q4', item1: 3767, item2: 3597},
                        {y: '2012 Q1', item1: 6810, item2: 1914},
                        {y: '2012 Q2', item1: 5670, item2: 4293},
                        {y: '2012 Q3', item1: 4820, item2: 3795},
                        {y: '2012 Q4', item1: 15073, item2: 5967},
                        {y: '2013 Q1', item1: 10687, item2: 4460},
                        {y: '2013 Q2', item1: 8432, item2: 5713}
                    ],
                    xkey: 'y',
                    ykeys: ['item1', 'item2'],
                    labels: ['Item 1', 'Item 2'],
                    lineColors: ['#a0d0e0', '#3c8dbc'],
                    hideHover: 'auto'
                });

               

              
              
            });
        </script>
</body>
</html>