<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini" onload="getthevalueindropdownofshareCertificate(); getthevalueindropdownofShareTransfer(); shareTransferInTable();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
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
				<h1 id="ContentPlaceHolder1_IdHeader">Share Transfer</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Share Transfer</li>
				</ol>
			</section>
				<form id="fileUploadForm">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Share Transfer Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Member No.(From)<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
													<select name="memberNoFrom" id="memberNo"
														onchange="ShareTransferMemberNoFrom();" class="form-control select2"
														style="width: 100%;">
													<option value="">Select Member No.</option>
													</select>
													<span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(From)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPreviousShareAmount"
												class="col-sm-4 control-label">Member Name(From) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="memberNameFrom" type="text" id="memberNameFrom"
													class="form-control" Placeholder="Enter Member Name (From)"
													readonly="readonly" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Member Name(From)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSharebalance" class="col-sm-4 control-label">Certificate
												No.(From) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="certificateNoFrom" type="text"
													id="certificateNoFrom" class="form-control"
													Placeholder="Enter Certificate No.(From)" readonly="readonly"/>
											</div>
										</div>
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												No. Of Share<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="noOfShare" type="text" id="noOfShare"
													class="form-control" Placeholder="Enter Share No."
													readonly="readonly" /> <span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(From)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Share Amount<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="shareAmount" type="text" id="shareAmount"
													class="form-control" Placeholder="Enter Share Amount"
													readonly="readonly" /> <span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(From)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Reaming No. Of Share<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="reamingNoOfShare" type="text" id="reamingNoOfShare"
													class="form-control" Placeholder="Enter Share No." 
													readonly="readonly" /> <span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(From)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Reaming Share Amount<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="reamingShareAmount" type="text" id="reamingShareAmount"
													class="form-control" Placeholder="Enter Share Amount"
													readonly="readonly" /> <span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(From)</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Member No.(To)<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="memberNoTo" id="memberNos"
														onchange="ShareTransferMemberNoTo();" class="form-control select2"
														style="width: 100%;">
													<option value="">Select Member No.</option>
													</select> <span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(To)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPreviousShareAmount"
												class="col-sm-4 control-label">Member Name(To) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="memberNameTo" type="text" id="memberNameTo"
													class="form-control" Placeholder="Enter Member Name (To)"
													readonly="readonly" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Member Name(To)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSharebalance" class="col-sm-4 control-label">Certificate
												No.(To) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="certificateNoTo" type="text"
													id="certificateNoTo" class="form-control"
													Placeholder="Enter Certificate No.(To) "  readonly="readonly"/>
											</div>
										</div>
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Previous No. Of Share<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="previousNoOfShare" type="text" id="previousNoOfShare"
													class="form-control" Placeholder="Enter Previous No.Of Share"
													readonly="readonly" /> <span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(From)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Share Transfer<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="shareTransfer" type="text" id="shareTransfer" onkeyup="calculate(); calculate2(); calculate3();"
													class="form-control" Placeholder="Enter No. Of Share To Transfer"
													required /> <span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(From)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Total Share<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="totalShare" type="text" id="totalShare"
													class="form-control" Placeholder="Enter Total Share"
													required /> <span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(From)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Amount Transfer<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="transferAmount" type="text" id="transferAmount" 
													class="form-control" Placeholder="Enter Amount Transfer"
													readonly="readonly" /> <span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(To)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Total Amount<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="totalAmount" type="text" id="totalAmount" 
													class="form-control" Placeholder="Enter Total Amount"
													readonly="readonly" /> <span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member No(To)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtDate" class="col-sm-4 control-label">
												Transfer Date <strong style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="transferDate" type="date" id="transferDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<div class="box-footer">
											<div class="row col-md-12">
												<input type="button" name="btnTransfer" value="Transfer"
													onclick="javascript: " id="btnTransfer"
													class="btn btn-success pull-right margin-r-5" />
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" id="ContentPlaceHolder1_gdvData"
										style="width: 100%; border-collapse: collapse;"
										id="shareCertificate">
										<caption>Share Transfer Data List</caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">Sr No.</th>
											<th scope="col">Member No. (From)</th>
											<th scope="col">Member Name (From)</th>
											<th scope="col">Certificate No. (From)</th>
											<th scope="col">No. Of Share (From)</th>
											<th scope="col">Share Amount (From)</th>
											<th scope="col">Total No. Of Share Transfer (From)</th>
											<th scope="col">Reaming No. Of Share (From)</th>
											<th scope="col">Reaming Share Amount (From)</th>
											<th scope="col">Member No. (To)</th>
											<th scope="col">Member Name (To)</th>
											<th scope="col">Certificate No. (To)</th>
											<th scope="col">Previous No. Of Share (To)</th>
											<th scope="col">Total No. Of Share After Share Transfer (To)</th>
											<th scope="col">Total Share Amount Transfer (To)</th>
											<th scope="col">Total Share Amount (To)</th>
											<th scope="col">Transfer Date</th>
										</tr>
										<tbody id="ShareTransfer">
										</tbody>
									</table>
									<div></div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</form>
		</div>
		
	<script type="text/javascript">
	function calculate(){
		var ShareTransfer = document.getElementById('shareTransfer').value;
		var TransferAmount = document.getElementById('transferAmount');
		var result = (10 * ShareTransfer);
		transferAmount.value = result;
	}
	
	function calculate2() {
		let transferAmountInput = document.getElementById('shareTransfer').value*10;
		var previousNoOfShare = document.getElementById('previousNoOfShare').value*10;
		var result1 = transferAmountInput + previousNoOfShare ;
		totalAmount.value = result1; 
	}
	
	function calculate3() {
		 var reamingNoOfShareInput = document.getElementById('reamingNoOfShare').value*10;
		 reamingShareAmount.value = reamingNoOfShareInput;
	}
	</script>

	<script type="text/javascript">
        document.getElementById("shareTransfer").addEventListener("input", function () {
            
            var noOfShare = parseFloat(document.getElementById("noOfShare").value) || 0;
            var shareTransfer = parseFloat(document.getElementById("shareTransfer").value) || 0;

            var remainingNoOfShare = noOfShare - shareTransfer;

            document.getElementById("reamingNoOfShare").value = remainingNoOfShare;
        });
	</script>
	
	<script type="text/javascript">
	var previousNoOfShareInput = document.getElementById("previousNoOfShare");
	var shareTransferInput = document.getElementById("shareTransfer");
	var totalShareInput = document.getElementById("totalShare");

	function updateTotalShare() {
	    var previousNoOfShareValue = previousNoOfShareInput.value;
	    var shareTransferValue = shareTransferInput.value;

	    // Ensure that the values are valid numbers; if not, default them to 0
	    var previousNoOfShare = parseFloat(previousNoOfShareValue) || 0;
	    var shareTransfer = parseFloat(shareTransferValue) || 0;

	    var totalShare = previousNoOfShare + shareTransfer;
	    totalShareInput.value = totalShare;
	}

	// Add event listeners to the input fields to trigger the update function
	previousNoOfShareInput.addEventListener("input", updateTotalShare);
	shareTransferInput.addEventListener("input", updateTotalShare);
	window.addEventListener("load", updateTotalShare);
	</script>
	
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
		<script src="dist/js/memberShare.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		<script>
		$(document).ready(function() {
			$('#btnTransfer').click(function() {
				
				if ($("#memberNameTo").val() == "") {
		             alert("Select Whom You Want To Transfer Share");
		             return;
		         }
				if ($("#shareTransfer").val() == "") {
		             alert("Write How Many Share You Want To Transfer");
		             return;
		         }
				if ($("#transferAmount").val() == "") {
		             alert("Enter Amount You Want To Transfer");
		             return;
		         }
				if ($("#transferDate").val() == "") {
		             alert("Write Transfer Date.");
		             return;
		         }
				if ($("#memberNameTo").val() == "") {
		             alert("Select Whom You Want To Transfer Share");
		             return;
		         }
				
				var form = $('#fileUploadForm')[0];
				var data = new FormData(form);
				$.ajax({
					url: 'shareTransferCode',
					type: 'POST',
					enctype: 'multipart/form-data',
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					success: function(response) {
						alert(response)
						window.location.href = "shareCertificate";
						//console.log(response);
					},
					error: function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
		});
	</script>
</body>
<!-- Dk/Admin/ShareCertificate.aspx EDB D 09:26:57 GMT -->
</html>