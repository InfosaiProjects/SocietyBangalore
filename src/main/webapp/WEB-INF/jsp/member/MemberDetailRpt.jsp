<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	onload="reportDataFetchinDropDown();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	
	<script type="text/javascript">
         //<![CDATA[
         var theForm = document.forms['form1'];
         if (!theForm) {
             theForm = document.form1;
         }
         function __doPostBack(eventTarget, eventArgument) {
             if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                 theForm.__EVENTTARGET.value = eventTarget;
                 theForm.__EVENTARGUMENT.value = eventArgument;
                 theForm.submit();
             }
         }
         function callback(){
        	var branchName = document.getElementById("branchName");
        	var fDate =document.getElementById("fDate");
        	var tDate = document.getElementById("tDate");
           	var input = {
                       "branchName": branchName.value,
                       "fDate":fDate.value,
                       "tDate":tDate.value
               }
           	$.ajax({
                   type:"post",
                   contentType: "application/json",
                   data: JSON.stringify(input),
                   url: 'getMemberReport',
                   asynch: false,
                   success: function(data) {
                   	for (var i = 0; i < data.length; i++) {
                   	document.getElementById("slNo").innerHTML = data[i].id;
                    document.getElementById("mumberCode").innerHTML = data[i].id;
                    document.getElementById("memberName").innerHTML = data[i].memberName;
                    document.getElementById("cspCode").innerHTML = data[i].branchName;
                    document.getElementById("doj").innerHTML = data[i].dob;
                    document.getElementById("relative").innerHTML = data[i].relativeName;
                    document.getElementById("address").innerHTML = data[i].address;
                    document.getElementById("mobile").innerHTML = data[i].phoneno;
                    document.getElementById("aadharNo").innerHTML = data[i].aadharNo;
                    document.getElementById("pan").innerHTML = data[i].pan;
                   	}
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
               });
          }
         
         //]]>
      </script>
	<div
		style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
		<!-- Header Start-->
		<jsp:include page="../menu.jsp" />
		<!-- Header End -->
		<!-- Left side column. contains the logo and sidebar -->
		<!-- Aside Menu Start-->
		<jsp:include page="../asideMenu.jsp" />
		<!-- Aside Menu end -->
		<script type="text/javascript">
            //<![CDATA[
            Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
            //]]>
         </script>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">Client Report</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Member Report</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Search Box</h3>
							</div>
							<div class="box-body">
								<div class="col-md-3">
									<div class="form-group">
										<label>Branch :</label> <select name="branchName"
											id="branchName" class="form-control" style="width: 100%;">
											<option selected="selected" value="">Select Criteria</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>From Date :</label>
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input name="fDate" type="date" id="fDate"
												class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>To Date :</label>
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input name="tDate" type="date" id="tDate"
												class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label></label>
										<button id="ContentPlaceHolder1_btnSearch"
											class="btn btn-success margin-20"
											onclick="getMemberRepottSearch();">
											<span class="fa fa-search"></span> SEARCH
										</button>
									</div>
								</div>
								<div class="clearfix margin-bottom-10"></div>
							</div>
						</div>
						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-header with-border">
								<h3 class="box-title">Search Result</h3>
								<div class="box-tools pull-right"></div>
							</div>
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<table cellspacing="0" cellpadding="3" rules="all"
									class="display nowrap table table-hover table-striped table-bordered"
									border="1" style="width: 100%; border-collapse: collapse;">
									<caption></caption>
									<tr style="color: White; background-color: #008385;">
										<th scope="col">SL NO</th>
										<th scope="col">MEMBER NAME</th>
										<!-- <th scope="col">MEMBER INCOME</th> -->
										<!-- <th scope="col">BANK CODE</th> -->
										<th scope="col">DOB</th>
										<th scope="col">RELATIVE</th>
										<th scope="col">ADDRESS</th>
										<th scope="col">MOBILE NO</th>
										<th scope="col">AADHAR NO</th>
										<th scope="col">PAN</th>
									</tr>
									<tbody id="tableBody">

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- InputMask -->
	<script src="plugins/input-mask/jquery.inputmask.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<!-- date-range-picker -->
	<script src="bower_components/moment/min/moment.min.js"></script>
	<script
		src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap datepicker -->
	<script
		src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- bootstrap color picker -->
	<script
		src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<!-- bootstrap time picker -->
	<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<!-- SlimScroll -->
	<script
		src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- iCheck 1.0.1 -->
	<script src="plugins/iCheck/icheck.min.js"></script>
	<!-- FastClick -->
	<script src="bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script src="dist/js/memberSection.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	
</body>
<!-- Dk/Admin/MemberDetailRpt.aspx EDB D 09:26:56 GMT -->
</html>