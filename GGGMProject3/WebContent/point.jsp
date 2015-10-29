<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
		<link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="./css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="./css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="./css/AdminLTE.css" rel="stylesheet" type="text/css" />


<script type="text/javascript">
	
</script>
<style type="text/css">
#body {
	width: 100%;
	height: 100%;
}
#body #top{
	width:100%;
	height: 70%;
}
#body #top #top_left{
	float: left;
	width:50%;
	height:100%;
	font-family: 맑은 고딕;
	font-size: 15pt;
	
	text-align: center;
	padding-top: 10%;
	
}
#body #top #top_right{
	float: right;
	width:50%;
	height:100%;
	padding-top: 20px;
	padding-right: 20px
}
#body #bottom{
	width:100%;
	height: 30%;
	float: left;
	font-family: 맑은 고딕;
	font-size: 15pt;
	padding-left: 15px;
	
}
#body #bottom .point_table{
	width: 20%;
	
}
li{ list-style-type : none;
	padding: 5px;
	
 }
 table{
 width:100%;
 }
#first_list{
	color: white;
	background-color: blue
}
#arrow{
	padding-left: 125px;
}
</style>
</head>

<body>
	
	<div id="body">
		<div class=row>
		<div id="top">
			<div id="top_left">
			
				<ul >
				<li>
				보유 포인트 : 
				<input type="text" size=20 readonly="readonly">
				</li>
				<li>
					<img id="arrow"src="#">
				</li>
				<li>
				받을 포인트 : 
				<input type="text" size=20 >
				</li>
				<li>
				<input type="radio" name="rb" value="백화점A">백화점A
				<input type="radio" name="rb" value="백화점B">백화점B
				<input type="radio" name="rb" value="문화상품권">문화상품권
				</li>
				</ul>
			</div>
			<div id="top_right">
				

           
                            <!-- Line chart -->
                            <div class="box box-primary">
                                <div class="box-header">
                                    <i class="fa fa-bar-chart-o"></i>
                                    <h3 class="box-title">Line Chart</h3>
                                </div>
                                <div class="box-body">
                                    <div id="line-chart" style="height: 300px;"></div>
                                </div><!-- /.box-body-->
                            </div><!-- /.box -->
                       
                  
             

           
			</div></div>
		</div>
		<div class=row>
		<div id="bottom">
			포인트 통장
			<table>
				
				<tr  id="first_list">
					<th  class="point_table">
						일자
					</th>
					<th class="point_table">
					획득포인트
					</th>
					<th class="point_table">
					사용
					</th>
					<th class="point_table">
					입/출금내용
					</th >
					<th class="point_table" >
					잔고
					</th>
				</tr>
				<tr>
					<td class="point_table">
						2010-10-16
					</td>
					<td class="point_table">
					100
					</td>
					<td class="point_table">
					사용
					</td>
					<td class="point_table">
					현대자동차
					</td >
					<td class="point_table" >
					29,990
					</td>
				</tr>
				<tr>
					<td class="point_table">
						2010-10-17
					</td>
					<td class="point_table">
					10
					</td>
					<td class="point_table">
					사용
					</td>
					<td class="point_table">
					현대자동차
					</td >
					<td class="point_table" >
					30,000
					</td>
				</tr>
			</table>
		</div>
		</div>
	</div>
	<!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="./js/bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        

        <!-- FLOT CHARTS -->
        <script src="./js/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
        <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
        <script src="./js/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
        <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
        <script src="./js/plugins/flot/jquery.flot.pie.min.js" type="text/javascript"></script>
        <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
        <script src="./js/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
	<script type="text/javascript">

            $(function() {


                /*
                 * LINE CHART
                 * ----------
                 */
                //LINE randomly generated data

                var sin = [], cos = [];
                for (var i = 0; i < 14; i += 0.5) {
                    sin.push([i, Math.sin(i)]);
                    cos.push([i, Math.cos(i)]);
                }
                var line_data1 = {
                    data: sin,
                    color: "#3c8dbc"
                };
                var line_data2 = {
                    data: cos,
                    color: "#00c0ef"
                };
                $.plot("#line-chart", [line_data1, line_data2], {
                    grid: {
                        hoverable: true,
                        borderColor: "#f3f3f3",
                        borderWidth: 1,
                        tickColor: "#f3f3f3"
                    },
                    series: {
                        shadowSize: 0,
                        lines: {
                            show: true
                        },
                        points: {
                            show: true
                        }
                    },
                    lines: {
                        fill: false,
                        color: ["#3c8dbc", "#f56954"]
                    },
                    yaxis: {
                        show: true,
                    },
                    xaxis: {
                        show: true
                    }
                });
                //Initialize tooltip on hover
                $("<div class='tooltip-inner' id='line-chart-tooltip'></div>").css({
                    position: "absolute",
                    display: "none",
                    opacity: 0.8
                }).appendTo("body");
                $("#line-chart").bind("plothover", function(event, pos, item) {

                    if (item) {
                        var x = item.datapoint[0].toFixed(2),
                                y = item.datapoint[1].toFixed(2);

                        $("#line-chart-tooltip").html(item.series.label + " of " + x + " = " + y)
                                .css({top: item.pageY + 5, left: item.pageX + 5})
                                .fadeIn(200);
                    } else {
                        $("#line-chart-tooltip").hide();
                    }

                });
                /* END LINE CHART */

           
            });

            /*
             * Custom Label formatter
             * ----------------------
             */
            function labelFormatter(label, series) {
                return "<div style='font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;'>"
                        + label
                        + "<br/>"
                        + Math.round(series.percent) + "%</div>";
            }
        </script>
</body>
</html>