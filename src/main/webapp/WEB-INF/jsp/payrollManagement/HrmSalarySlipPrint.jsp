<jsp:include page="../header.jsp" />
<body onload="getAllEmployeeData();" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="" id="form1">
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
				Sys.WebForms.PageRequestManager._initialize(
						'ctl00$ScriptManager1', 'form1', [], [], [], 90,
						'ctl00');
				//]]>
			</script>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Salary Slip Print</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Slip Print</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Select Month Year</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label></label> <input name="dtDate" type="text"
												value="AUG - 2022" readonly="readonly" id="dtDate"
												class="form-control" />
										</div>
									</div>
									<div class="col-md-4">
										<label></label>
										<button type="button" name="ctl00$ContentPlaceHolder1$btnPrev"
											value="Previous Month" id="ContentPlaceHolder1_btnPrev"
											class="btn btn-warning margin-20 margin-r-5">Previous
											Month</button>
										<button type="button" name="ctl00$ContentPlaceHolder1$btnNext"
											value="Next Month" id="ContentPlaceHolder1_btnNext"
											class="btn btn-warning margin-20">Next Month</button>
									</div>
									<div class="clearfix margin-bottom-10"></div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Select Employee </label> <select name="searchEmpCode"
												id="searchEmpCode" class="form-control select2"
												style="width: 100%;">
												<option value=""></option>
											</select> <span id="ContentPlaceHolder1_RequiredFieldValidator5"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Code</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label></label>
												<a id="ContentPlaceHolder1_btnSearch"
												class="btn btn-success margin-20"
												href="javascript:showSalarySlipPrint85();"><span
												class="fa fa-search"></span> SEARCH</a>
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
									<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">
											<caption></caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">Employee Code</th>
												<th scope="col">Employee Name</th>
												<th scope="col">Designation</th>
												<th scope="col">Department</th>
												<th scope="col">DOJ</th>
												<th scope="col">Bank A/C No.</th>
												<th scope="col">IFSC</th>
												<th scope="col">Branch</th>
											</tr>
											<tbody id="tableBody">
											</tbody>
										</table>
								</div>
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
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
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		<script>
			$(function() {
				//Initialize Select2 Elements
				$('.select2').select2();
				//Datemask dd/mm/yyyy
				$('#datemask').inputmask('dd/mm/yyyy', {
					'placeholder' : 'dd/mm/yyyy'
				})
				//Datemask2 mm/dd/yyyy
				$('#datemask2').inputmask('mm/dd/yyyy', {
					'placeholder' : 'mm/dd/yyyy'
				})
				//Date range picker
				$('#reservation').daterangepicker()
				//Date range picker with time picker
				$('#reservationtime').daterangepicker({
					timePicker : true,
					timePickerIncrement : 30,
					locale : {
						format : 'MM/DD/YYYY hh:mm A'
					}
				})
				$('#daterange-btn')
						.daterangepicker(
								{
									ranges : {
										'Today' : [ moment(), moment() ],
										'Yesterday' : [
												moment().subtract(1, 'days'),
												moment().subtract(1, 'days') ],
										'Last 7 Days' : [
												moment().subtract(6, 'days'),
												moment() ],
										'Last 30 Days' : [
												moment().subtract(29, 'days'),
												moment() ],
										'This Month' : [
												moment().startOf('month'),
												moment().endOf('month') ],
										'Last Month' : [
												moment().subtract(1, 'month')
														.startOf('month'),
												moment().subtract(1, 'month')
														.endOf('month') ]
									},
									startDate : moment().subtract(29, 'days'),
									endDate : moment()
								},
								function(start, end) {
									$('#daterange-btn span').html(
											start.format('DD/MM/YYYY') + ' - '
													+ end.format('DD/MM/YYYY'))
								})
				//Date picker
				$('#datepicker').datepicker({
					autoclose : true
				})
				//Money Euro
				$('[data-mask]').inputmask()

				//iCheck for checkbox and radio inputs
				$('span[type="checkbox"].minimal').iCheck({
					checkboxClass : 'icheckbox_minimal-blue',
					radioClass : 'iradio_minimal-blue'
				})

			})
		</script>
		<script type="text/javascript">
			//<![CDATA[
			var Page_Validators = new Array(
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"));
			//]]>
		</script>
		<script type="text/javascript">
			//<![CDATA[
			var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
			ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_ddlSearchEmpCode";
			ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Select Code";
			ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
			//]]>
		</script>
		<script type="text/javascript">
			//<![CDATA[

			var Page_ValidationActive = false;
			if (typeof (ValidatorOnLoad) == "function") {
				ValidatorOnLoad();
			}

			function ValidatorOnSubmit() {
				if (Page_ValidationActive) {
					return ValidatorCommonOnSubmit();
				} else {
					return true;
				}
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
			}
			//]]>
		</script>
	</form>
</body>
<!-- Dk/Admin/HrmSalarySlipPrint.aspx EDB D 09:27:23 GMT -->
</html>