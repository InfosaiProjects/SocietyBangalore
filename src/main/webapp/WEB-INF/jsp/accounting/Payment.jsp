<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="">
	<div
		style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
		<!-- Header Start-->
		<jsp:include page="../menu.jsp" />
		<!-- Header End -->
		<!-- Left side column. contains the logo and sidebar -->
		<!-- Aside Menu Start-->
		<jsp:include page="../asideMenu.jsp" />
		<!-- Aside Menu end -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">Payment</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Accounting</li>
				</ol>
			</section>
			<form method="post" action="/newAccount" id="form1" 
 				modelAttribute="NewAccount" enctype="multipart/form-data">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Instrument Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Voucher
												No.</label>
										
											<div class="col-sm-8">
												<input name="voucherNo" type="text" id="voucherNo" 
													class="form-control" Placeholder="Enter Voucher No. " />
											</div>
										</div>
										 <label>
                                         <input type="radio" name="payment" value="cash" style="margin-left: 15px;"> Cash
                                         </label>
                                         <label>
                                         <input type="radio" name="payment" value="bank" style="margin-left: 15px;"> Bank
                                         </label>
										
										
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select
												Bank/Cash <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectBank" id="selectBank" class="form-control select2"
													style="width: 100%;">
													<option selected="selected" value=""></option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Bank/Cash </span>
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Balance
												(Debit)</label>
										
											<div class="col-sm-8">
												<input name="balanceDebit" type="text" id="balanceDebit" 
													class="form-control" Placeholder="Enter Balance" />
											</div>
										</div>
										
										
										
										<div class="form-group row">
											<label class="col-sm-4 control-label">Narration</label>
											<div class="col-sm-8">
												<textarea name="narration" rows="2" cols="20"
													id="narration" class="form-control"
													Placeholder="Enter Narration">
                                    </textarea>
											</div>
										</div>
										<h5 style="font-weight: bold;margin-left: 15px;">Account to be debited</h5>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Branch Code
											 <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="branchCode" type="text" id="branchCode"
													class="form-control" Placeholder="Enter Branch Code" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select
												Branch<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectBranch" id="selectBranch" class="form-control select2"
													style="width: 100%;">
													<option selected="selected" value=""></option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Branch</span>
											</div>
										</div>
										
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">G.L.Head.No.
												</label>
										
											<div class="col-sm-8">
												<input name="glHeadNo" type="text" id="glHeadNo" 
													class="form-control" Placeholder="Enter G.L.Head No." />
											</div>
										</div>
										
										
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Select G.L.Head</label>
											<div class="col-sm-8">
												<input name="selectGlHead" type="text" id="selectGlHead"
													class="form-control" Placeholder="Enter Select G.L.Head" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Account No.<strong style="color: Red">*</strong>
												</label>
											<div class="col-sm-8">
												<input name="accountNo" type="text" id="accountNo"
													class="form-control" Placeholder="Enter Account No." />
											</div>

										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Search Account Holder<strong style="color: Red">*</strong>
												</label>
											<div class="col-sm-8">
												<input name="accountHolder" type="text" id="accountHolder"
													class="form-control" Placeholder="Enter Account Holder" />
											</div>

										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select
												Account Holder<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectAccountHolder" id="selectAccountHolder" class="form-control select2"
													style="width: 100%;">
													<option selected="selected" value=""></option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Account Holder</span>
											</div>
										</div>
										
										<div class="form-group row">
											<label for="balance" class="col-sm-4 control-label">Balance
											</label>
											<div class="col-sm-8">
												<input name="balance" type="text" value="" id="balance"
													class="form-control" Placeholder="Enter Balance" />
											</div>
										</div>
										
										<div class="form-group row">
											<label for="balance" class="col-sm-4 control-label">Unclear Balance
											</label>
											<div class="col-sm-8">
												<input name="unclearBalance" type="text" value="" id="unclearBalance"
													class="form-control" Placeholder="Enter Unclear Balance" />
											</div>
										</div>
										<div class="form-group row">
											<label for="balance" class="col-sm-4 control-label">Transaction Amount(Rs.)
											</label>
											<div class="col-sm-8">
												<input name="transactionAmount" type="text" value="" id="transactionAmount"
													class="form-control" Placeholder="Enter Transaction Amount" />
											</div>
										</div>
										<h5 style="font-weight: bold;margin-left: 15px;">Transaction</h5>
										<label>
                                         <input type="radio" name="payment" value="debit" style="margin-left: 15px;"> Debit
                                         </label>
                                         <label>
                                         <input type="radio" name="payment" value="credit" style="margin-left: 15px;">Credit
                                         </label>
										
										<div class="row col-md-12">
											<input type="submit" name="btnSave" value="Debit" id="btnSave"
												class="btn btn-success pull-right margin-r-5" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-2"></div>
							<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-header with-border">
								<div class="box-tools pull-right"></div>
							</div>
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<table cellspacing="0" cellpadding="3" rules="all"
									class="display nowrap table table-hover table-striped table-bordered"
									border="1" id="ContentPlaceHolder1_gdvData"
									style="width: 100%; border-collapse: collapse;"
									id="shareCertificate">
									<caption></caption>
									<tr style="color: White; background-color: #008385;">
										<th scope="col">Select</th>
										<th scope="col">Sr No.</th>
										<th scope="col">G L Head</th>
										<th scope="col">Account No</th>
										<th scope="col">Account Holder</th>
										<th scope="col">Balance</th>
										<th scope="col">Transaction Amount(Rs.)</th>
									</tr>
									<tbody id="">

									</tbody>
								</table>
							</div>
						</div>
						<div class="box-body">
							<div class="clearfix margin-bottom-10"></div>
						</div>
					</div>
				</section>
			</form>
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
	<script src="dist/js/NewAccountInvestment.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>