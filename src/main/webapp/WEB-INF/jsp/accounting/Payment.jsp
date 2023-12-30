<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="../header.jsp" />

<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="">
	<div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
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

			<form id="form1">
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
												<input name="voucherNo" type="text" id="voucherNo" class="form-control"
													Placeholder="Enter Voucher No." value="${VoucherNo}" readonly />
											</div>
										</div>

										<label for="txtJointMemberName" class="col-sm-4 control-label">Date
										</label>
										<div class="col-sm-8">
											<input name="entryDate" type="text" id="entryDate" value="${EntryDate}"
												class="form-control" readonly="readonly" />
										</div>
										<label>
											<input type="radio" name="typeCashBank" id="typeCashBank" value="Cash"
												style="margin-left: 15px;" disabled> Cash
										</label>
										<label>
											<input type="radio" name="typeCashBank" id="typeCashBank" value="Bank"
												style="margin-left: 15px;" checked> Bank
										</label>


										<div class="form-group row">
											<label class="col-sm-4 control-label">Select
												Bank/Cash <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select onchange="getTheValueInFields()" name="debitBank" id="debitBank"
													class="selectCashBank" class="form-control select2"
													style="width: 100%;">
													<option selected="selected" value=""></option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Bank/Cash </span>
											</div>
										</div>

										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">G.L.Head.No.
												<strong style="color: red;">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="glHeadNodebit" type="text" id="glHeadNodebit"
													readonly="readonly" class="form-control"
													Placeholder="Enter G.L.Head No." />
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Balance
												(Debit)</label>

											<div class="col-sm-8">
												<input name="debitBalance" type="text" id="debitBalance"
													class="form-control" Placeholder="Enter Balance" />
											</div>
										</div>



										<div class="form-group row">
											<label class="col-sm-4 control-label">Narration</label>
											<div class="col-sm-8">
												<textarea name="details" id="details" class="form-control"
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
												<select name="creditBank" id="creditBank" style="width: 100%;">
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
												<input name="glHeadNo" type="text" id="glHeadNo" class="form-control"
													onchange="getTheValueInFields2()"
													Placeholder="Enter G.L.Head No." />
											</div>
										</div>


									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtJointMemberName" class="col-sm-4 control-label">Select
												G.L.Head</label>
											<div class="col-sm-8">
												<input name="selectGlHead" type="text" id="selectGlHead"
													class="form-control" Placeholder="Enter Select G.L.Head" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName" class="col-sm-4 control-label">Account
												No.<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="accountNo" type="text" id="accountNo" class="form-control"
													Placeholder="Enter Account No." />
											</div>

										</div>
										<div class="form-group row">
											<label for="txtJointMemberName" class="col-sm-4 control-label">Search
												Account
												Holder<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="searchAccountHolder" type="text" id="searchAccountHolder"
													class="form-control" Placeholder="Enter Account Holder" />
											</div>

										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select
												Account Holder<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<!-- <select name="selectAccountHolder" id="selectAccountHolder"
												class="form-control select2" style="width: 100%;">
												<option selected="selected" value=""></option>
											</select> <span id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Account Holder</span> -->

												<input name="selectAccountHolder" type="text" id="selectAccountHolder"
													class="form-control" Placeholder="Enter Account Holder" />
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
												<input onchange="setTheintrumentDetails()" name="amount" type="text"
													value="" id="amount" class="form-control"
													Placeholder="Enter Transaction Amount" />
											</div>
										</div>
										<h5 style="font-weight: bold;margin-left: 15px;">Transaction</h5>
										<label>
											<input type="radio" name="transactionType" id="transactionType"
												value="debit" style="margin-left: 15px;" checked>
											Debit
										</label>
										<label>
											<input type="radio" name="transactionType" id="transactionType"
												value="credit" style="margin-left: 15px;" disabled>Credit
										</label>

										<!-- <div class="row col-md-12">
											<input type="submit" name="btnSave" value="Debit" id="btnSave"
												class="btn btn-success pull-right margin-r-5" />
										</div> -->
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Instrument Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select
												Instrument Type</label>
											<div class="col-sm-8">
												<select name="instrumentType" id="instrumentType"
													class="form-control select2" style="width: 100%;">
													<option value="Slip">Slip</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Instrument
												Amount (Rs.)</label>
											<div class="col-sm-8">
												<input name="instrumentAmount" type="text" id="instrumentAmount"
													class="form-control" Placeholder="Enter Instrument Amount"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Amount
												In Words </label>
											<div class="col-sm-8">
												<input name="amountInWords" type="text" id="amountInWords"
													class="form-control" Placeholder="Enter Amount In Words"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Instrument
												Date <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="instrumentDate" type="text" id="instrumentDate"
													class="form-control" Placeholder="Enter Instrument Date"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Instrument No.<strong
													style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="instrumentNo" id="instrumentNo"
													class="form-control select2" style="width: 100%;"
													placeholder="Enter Instrument No.">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">In
												Favour Of <strong style="color: red;">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="inFavourOf" type="text" id="inFavourOf"
													class="form-control" Placeholder="Enter In Favour Of"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Bank Name<strong
													style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">


												<input name="bankName" type="text" value="" id="bankName"
													class="form-control" Placeholder="Enter Bank Name" />
											</div>
										</div>
										<div class="form-group row">
											<label for="balance" class="col-sm-4 control-label">Bank
												Branch </label>
											<div class="col-sm-8">
												<input name="bankBranch" type="text" value="" id="bankBranch"
													class="form-control" Placeholder="Enter Bank Branch" />
											</div>
										</div>
										<div class="form-group row">
											<label for="balance" class="col-sm-4 control-label">Drawn
												On Bank </label>
											<div class="col-sm-8">
												<input name="drawnOnBank" type="text" id="drawnOnBank"
													class="form-control" Placeholder="Enter Drawn On Bank" />
											</div>
										</div>
										<div class="form-group row">
											<label for="balance" class="col-sm-4 control-label">Drawn
												On Branch </label>
											<div class="col-sm-8">
												<input name="drawnOnBranch" type="text" id="drawnOnBranch"
													class="form-control" Placeholder="Enter Drawn On Bank" />
											</div>
										</div>
										<div class="row col-md-12">
											<input type="button" name="btnSave" value="Debit" id="btnSave"
												class="btn btn-success pull-right margin-r-5" />
											<!-- <input type="submit" name="btnSave" value="Delete"
											id="btnDelete" class="btn btn-success pull-right margin-r-5" /> -->
											<input type="reset" name="btnReset" value="Reset" id="btnReset"
												class="btn btn-success pull-right margin-r-5" />
										</div>
									</div>
								</div>
							</div>
						</div>






						<div class="col-md-2"></div>
						<div class="box box-success" style="box-shadow: none; overflow: auto !important;">
							<div class="box-header with-border">
								<div class="box-tools pull-right"></div>
							</div>
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<table cellspacing="0" cellpadding="3" rules="all"
									class="display nowrap table table-hover table-striped table-bordered" border="1"
									id="ContentPlaceHolder1_gdvData" style="width: 100%; border-collapse: collapse;"
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
	<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap datepicker -->
	<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- bootstrap color picker -->
	<script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<!-- bootstrap time picker -->
	<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<!-- SlimScroll -->
	<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
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

<script>
	$(document).ready(function () {
		// Add an event listener to the radio buttons
		$("input[name='typeCashBank']").change(function () {
			var selectedValue = $(this).val();
			var $selectBank = $(".selectCashBank");

			// Clear the existing options in the dropdown
			$selectBank.empty();

			// Check the selected value
			if (selectedValue === "Cash") {
				// Display "Cash" in the dropdown
				$selectBank.append('<option value="Cash">Cash</option>');

				// Disable the fields for Cash
				$("input[name='instrumentType'], input[name='instrumentAmount'], input[name='amountInWords'], input[name='instrumentDate'], input[name='instrumentNo'], input[name='inFavourOf'], input[name='bankName'], input[name='bankBranch'], input[name='drawnOnBank'], input[name='drawnOnBranch']").prop('readonly', true);
			} else if (selectedValue === "Bank") {
				$selectBank.append('<option value="">Select</option>');

				// Get a reference to the select element
				// const selectElement = document.getElementById("scroll");

				// selectElement.disabled = true;

				// Fetch bank data via AJAX and populate the dropdown
				$.ajax({
					type: "GET",
					url: 'getAllBranch',
					success: function (bankData) {

						for (var i = 0; i < bankData.length; i++) {
							if (!bankData[i].name.includes("Interest")) {
								$selectBank.append('<option value="' + bankData[i].bankID + '">' + bankData[i].name + '</option>');
							}
						}
					},
					error: function () {
						alert("Error while fetching bank data");
					}
				});

				// Make form fields editable for Bank
				$("input[name='instrumentType'], input[name='instrumentAmount'], input[name='amountInWords'], input[name='instrumentDate'], input[name='instrumentNo'], input[name='inFavourOf'], input[name='bankName'], input[name='bankBranch'], input[name='drawnOnBank'], input[name='drawnOnBranch']").prop('readonly', false);
			}

			// Show or hide the dropdown based on the selected value
			$selectBank.toggle(!!selectedValue);
		});

		// Add an event listener to initially set the dropdown and enable/disable fields based on the default radio button value
		$("input[name='typeCashBank']:checked").change();
	});
</script>

<script>

	function getTheValueInFields() {
		let debitBank = document.getElementById("debitBank").value;

		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: 'getAllBranch',
			success: function (data) {

				const cbiObject = data.find(obj => obj.bankID === debitBank);

				// Append the value to the input tag
				document.getElementById("debitBalance").value = cbiObject.balance;
				document.getElementById("bankBranch").value = cbiObject.branch;
				document.getElementById("glHeadNodebit").value = cbiObject.glHeadNo;
				document.getElementById("bankName").value = cbiObject.name;




			},
			error: function () {
				alert("Device control failed");
			}
		});
	}

	function getTheValueInFields2() {

		let glHeadNo = document.getElementById("glHeadNo").value;

		$.ajax({
			type: "POST",
			contentType: "application/json",
			url: 'fetchAllNewGlHead',
			success: function (data) {

				const cbiObject = data.find(obj => obj.glHeadNo === parseInt(glHeadNo));

				// Append the value to the input tag
				// document.getElementById("branchCode").value = cbiObject.branchCode;
				// document.getElementById("glHeadNo").value = cbiObject.glHeadNo;
				// document.getElementById("selectGlHead").value = cbiObject.name;
				// document.getElementById("accountNo").value = cbiObject.bankAccoununtNo;

				// document.getElementById("searchAccountHolder").value = cbiObject.contactPerson;
				// document.getElementById("selectAccountHolder").value = cbiObject.contactPerson;
				// document.getElementById("balance").value = cbiObject.balance;
				//document.getElementById("unclearBalance").value = cbiObject.balance;


				if (cbiObject && cbiObject.bankID === null) {
					// Append the value to the input tag
					document.getElementById("branchCode").value = cbiObject.branchCode;
					//document.getElementById("glHeadNo").value = cbiObject.glHeadNo;
					document.getElementById("selectGlHead").value = cbiObject.glHeadName;
					document.getElementById("accountNo").value = cbiObject.accountValue;

					document.getElementById("searchAccountHolder").value = cbiObject.selectAccountHolder;
					document.getElementById("selectAccountHolder").value = cbiObject.selectAccountHolder;
					document.getElementById("balance").value = cbiObject.balance;
					document.getElementById("inFavourOf").value = cbiObject.selectAccountHolder;
					//document.getElementById("unclearBalance").value = cbiObject.balance;



					const branchCodeDropdown = document.getElementById("creditBank");

					// Clear existing options in the dropdown
					branchCodeDropdown.innerHTML = '';

					// Append a new option
					const newOption = document.createElement("option");
					newOption.value = cbiObject.uniqueId;
					newOption.text = cbiObject.organization;
					branchCodeDropdown.appendChild(newOption);

				} else {
					// If bankID is not null, return from the function or perform other actions

					document.getElementById("branchCode").value = '';
					//document.getElementById("glHeadNo").value = cbiObject.glHeadNo;
					document.getElementById("selectGlHead").value = '';
					document.getElementById("accountNo").value = '';

					document.getElementById("searchAccountHolder").value = '';
					document.getElementById("selectAccountHolder").value = '';
					document.getElementById("balance").value = '';
					document.getElementById("inFavourOf").value = '';
					//document.getElementById("unclearBalance").value = cbiObject.balance;



					const branchCodeDropdown = document.getElementById("creditBank");

					// Clear existing options in the dropdown
					branchCodeDropdown.innerHTML = '';

					// Append a new option
					const newOption = document.createElement("option");
					newOption.value = '';
					newOption.text = '';
					branchCodeDropdown.appendChild(newOption);
					return alert("Plz enter the individual Gl no !!!!");
				}

			},
			error: function () {
				alert("Device control failed");
			}
		});
	}
</script>

<script>

	function setTheintrumentDetails() {

		document.getElementById("instrumentAmount").value = $("#amount").val();
		document.getElementById("amountInWords").value = convertToWords($("#amount").val());
		document.getElementById("instrumentDate").value = getCurrentDate();
		//document.getElementById("instrumentNo").value = $("#voucherNo").val();

		// document.getElementById("inFavourOf").value = $("#searchAccountHolder").val();

		// var debitBankValue = $("#debitBank").val();
		// var extractedValue = debitBankValue.substring(0, debitBankValue.length - 3);
		// document.getElementById("bankName").value = extractedValue;

	}


	function convertToWords(amount) {
		var ones = ['', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen'];
		var tens = ['', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety'];

		function convertLessThanOneThousand(num) {
			if (num === 0) {
				return '';
			} else if (num < 20) {
				return ones[num];
			} else if (num < 100) {
				var ten = tens[Math.floor(num / 10)];
				var one = ones[num % 10];
				return ten + ' ' + one;
			} else {
				var hundred = ones[Math.floor(num / 100)];
				var rest = convertLessThanOneThousand(num % 100);
				if (rest !== '') {
					return hundred + ' Hundred ' + rest;
				} else {
					return hundred + ' Hundred';
				}
			}
		}

		if (amount === 0) {
			return 'Zero Rupees';
		}

		var result = '';
		if (amount < 0) {
			result = 'Negative ';
			amount = -amount;
		}

		var crore = Math.floor(amount / 10000000);
		amount %= 10000000;
		var lakh = Math.floor(amount / 100000);
		amount %= 100000;
		var thousand = Math.floor(amount / 1000);
		amount %= 1000;
		var hundreds = amount;

		if (crore > 0) {
			result += convertLessThanOneThousand(crore) + ' Crore ';
		}
		if (lakh > 0) {
			result += convertLessThanOneThousand(lakh) + ' Lakh ';
		}
		if (thousand > 0) {
			result += convertLessThanOneThousand(thousand) + ' Thousand ';
		}
		if (hundreds > 0) {
			result += convertLessThanOneThousand(hundreds) + ' Rupees';
		}

		return result;
	}


	// Function to get the current date in the format "YYYY-MM-DD"
	function getCurrentDate() {
		var currentDate = new Date();
		var year = currentDate.getFullYear();
		var month = String(currentDate.getMonth() + 1).padStart(2, '0');
		var day = String(currentDate.getDate()).padStart(2, '0');
		return year + '-' + month + '-' + day;
	}




</script>

<script>

	$(document).ready(function () {
		$('#btnSave').click(function () {

			var voucherNo = $("#voucherNo").val();
			var entryDate = $("#entryDate").val();
			// Get the value of the selected radio button
			var typeCashBank = document.querySelector('input[name="typeCashBank"]:checked').value;

			var debitBank = $("#debitBank").val();
			var debitBalance = $("#debitBalance").val();

			var details = $("#details").val();
			var branchCode = $("#branchCode").val();
			var creditBank = $("#creditBank").val();
			var glHeadNo = $("#glHeadNo").val();
			var selectGlHead = $("#selectGlHead").val();

			var accountNo = $("#accountNo").val();
			var searchAccountHolder = $("#searchAccountHolder").val();
			var selectAccountHolder = $("#selectAccountHolder").val();
			var unclearBalance = $("#unclearBalance").val();
			var amount = $("#amount").val();


			var transactionType = document.querySelector('input[name="transactionType"]:checked').value;


			var instrumentType = $("#instrumentType").val();
			var instrumentAmount = $("#instrumentAmount").val();
			var amountInWords = $("#amountInWords").val();
			var instrumentDate = $("#instrumentDate").val();


			var instrumentNo = $("#instrumentNo").val();
			var inFavourOf = $("#inFavourOf").val();
			var bankName = $("#bankName").val();
			var bankBranch = $("#bankBranch").val();
			var drawnOnBank = $("#drawnOnBank").val();
			var drawnOnBranch = $("#drawnOnBranch").val();


			var glHeadNodebit = $("#glHeadNodebit").val();

			var instrumentType = $("#instrumentType").val();
			var instrumentAmount = $("#instrumentAmount").val();
			var amountInWords = $("#amountInWords").val();

			

			const data = [];

			function generateTransactionId() {
				const timestamp = new Date().getTime(); // Get current timestamp
				const randomNum = Math.floor(Math.random() * 1000000); // Generate a random number
				const transactionId = timestamp + "" + randomNum; // Combine timestamp and random number

				return transactionId;
			}

			// Example usage
			const uniqueTransactionId = generateTransactionId();


			const credit = {
				entryDate: entryDate,
				voucherNo: voucherNo,
				type: "Jv" + voucherNo,
				glHeadNo: glHeadNo,
				selectGlHead: selectGlHead,
				accountNo: accountNo,
				selectAccountHolder: selectAccountHolder,
				transactionType: transactionType,
				amount: amount,
				receiptType: typeCashBank,
				bankId: creditBank,
				instrumentType: instrumentType,
				instrumentNo: instrumentNo,
				drawnOnBank: drawnOnBank,
				drawnOnBranch: drawnOnBranch,
				details: details,
				uniqueTransactionId: uniqueTransactionId,


				// instrumentDate:instrumentDate,
				// instrumentNo:instrumentNo,
				// inFavourOf:inFavourOf,
				// bankName:bankName,
				// bankBranch:bankBranch,
				// drawnOnBank:drawnOnBank,
				// drawnOnBranch:drawnOnBranch,


			};

			data.push(credit);


			const debit = {
				entryDate: entryDate,
				voucherNo: voucherNo,
				type: "Jv" + voucherNo,
				glHeadNo: glHeadNodebit,
				transactionType: "credit",
				amount: amount,
				receiptType: typeCashBank,
				bankId: debitBank,
				chequeRegister: "0",
				selectGlHead: bankName,

				uniqueTransactionId: uniqueTransactionId,





				amountInWords: amountInWords,
				instrumentAmount: instrumentAmount,
				instrumentType: instrumentType,
				instrumentDate: instrumentDate,
				instrumentNo: instrumentNo,
				inFavourOf: inFavourOf,
				bankName: bankName,
				bankBranch: bankBranch,
				drawnOnBank: drawnOnBank,
				drawnOnBranch: drawnOnBranch,
				details: details


			};

			data.push(debit);



			if (debitBank === '' || debitBank === null) {

				return alert("Fill the Debit Bank!!!");
			}

			if (debitBalance === '' || debitBalance === null) {

				return alert("Fill the Debit Balance!!!");
			}

			if (details === '' || details === null) {

				return alert("Fill the Details!!!");
			}

			if (branchCode === '' || branchCode === '') {

				return alert("Fill the Branch Code!!!");
			}

			if (creditBank === '' || creditBank === null) {

				return alert("Fill the Credit Bank!!!");
			}

			if (glHeadNo === '' || glHeadNo === null) {

				return alert("Fill the Gl Head no of credit Bank !!!");
			}

			if (selectGlHead === '' || selectGlHead === null) {

				return alert("Fill the Gl Select of credit Bank !!!");
			}

			if (accountNo === '' || accountNo === null) {

				return alert("Fill the Account NO of credit Bank !!!");
			}

			if (searchAccountHolder === '' || searchAccountHolder === null) {

				return alert("Fill the Search Account Holder of credit Bank !!!");
			}

			if (selectAccountHolder === '' || selectAccountHolder === null) {

				return alert("Fill the Select Account Holder  of credit Bank !!!");
			}

			if (amount === '' || amount === null) {

				return alert("Fill the Select Amount of credit Bank !!!");
			}

			if (instrumentType === '' || instrumentType === null) {

				return alert("Instrument Type  !!!");
			}

			if (instrumentAmount === '' || instrumentAmount === null) {

				return alert("Instrument Amount !!!");
			}

			if (amountInWords === '' || amountInWords === null) {

				return alert("Amount in words !!!");
			}

			if (instrumentDate === '' || instrumentDate === null) {

				return alert("Instrument Date  !!!");
			}

			if (instrumentNo === '' || instrumentNo === null) {

				return alert("Instrument Number  !!!");
			}

			if (inFavourOf === '' || inFavourOf === null) {

				return alert("In Favour Of  !!!");
			}

			if (bankName === '' || bankName === null) {

				return alert("In Bank Name  !!!");
			}


			if (bankBranch === '' || bankBranch === null) {

				return alert("In Bank Branch  !!!");
			}


			if (drawnOnBank === '' || drawnOnBank === null) {

				return alert("In Drawn on Bank  !!!");
			}

			if (drawnOnBranch === '' || drawnOnBranch === null) {

				return alert("In Drawn on Branch  !!!");
			}

			if (glHeadNodebit === '' || glHeadNodebit === null) {

				return alert("In Gl Head No in Debit   !!!");
			}

		
			document.getElementById("btnSave").disabled = true;
			$.ajax({
				type: "POST",
				contentType: "application/json",
				url: '/saveReceipt',
				data: JSON.stringify(data),
				success: function (response) {
					alert(response);
					window.location.href = "payment";
				},
				error: function (error) {
					alert("Error while saving data");
				}
			});


		});
	});
</script>

<script>

	$(document).ready(function () {
		// Attach a click event handler to the reset button
		$('#btnReset').on('click', function () {
			// Navigate to the "/payment" URL
			window.location.href = '/payment';
		});
	});
</script>

</html>