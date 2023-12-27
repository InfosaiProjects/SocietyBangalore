<jsp:include page="../header.jsp" />
<script src="jquery-3.6.3.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){
		$("#hideshowtable").hide();
		
		$("#hide").click(function(){
			$("#hideshowtable").hide();
		});
		
		$("#show").click(function(){
			$("#hideshowtable").show();
		});
	});
</script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body onload="getAllBranchMaster();fetchMaxGLGroupNo(); " class="skin-blue sidebar-mini"
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
				<h1 id="ContentPlaceHolder1_IdHeader">Add Branch</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Branch</li>
				</ol>
			</section>
			
			<form id="form"> 
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Branch Details</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6">
								    <div class="form-group row">
										<label class="col-sm-4 control-label">G.L.Head No. <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="glHeadNo" type="text"  id="glHeadNo"
												class="form-control" placeholder="Enter GL Head No."
												autocomplete="off" /> <span id="branchCodeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												GL Head No.</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Bank Name <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="name" type="text" id="name" class="form-control"
												placeholder="Enter Bank Name" autocomplete="off" /> <span
												id="branchNameMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Bank Name</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Bank Account No<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="bankAccoununtNo" type="text"  id="bankAccoununtNo"
												class="form-control" placeholder="Enter Bank Account No."
												autocomplete="off" /> <span id="bankAccoununtNoMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Bank Account No.</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Branch<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="branch" type="text"  id="branch"
												class="form-control" placeholder="Enter Branch
												autocomplete="off" /> <span id="branchMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Branch</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Branch Code <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="code" type="text" maxlength="10" id="code"
												class="form-control" placeholder="Enter Branch Code"
												autocomplete="off" /> <span id="branchCodeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Code</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtAddress" class="col-sm-4 control-label">Address
											<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<textarea name="address" rows="2" cols="20" id="address"
												class="form-control" placeholder="Enter Branch Address"
												autocomplete="off">
                                    </textarea>
											<span id="addressMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Address</span>
										</div>
									</div>
									<div class="checkbox-container">
										<label for="checkbox1">Allow Inter Branch Transaction</label> <input
											value="Allow Inter Branch Transaction" type="checkbox" id="selectTransactionCheckbox" name="selectTransactionCheckbox" style="margin-left:5px;">	
									</div>
									<div class="checkbox-container">
										<label for="checkbox2">Is For Fund Transfer</label> <input
											value="Is For Fund Transfer" type="checkbox" id="selectTransactionCheckbox" name="selectTransactionCheckbox" style="margin-left:5px;">
									</div>
								</div>
								<div class="col-md-6">
								   <div class="form-group row">
										<label for="accountType" class="col-sm-4 control-label">Account Type
											<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="accountType" id="accountType" class="form-control select2"
												style="width: 100%;">
												<option selected="selected" value="Select">--Select--</option>
												<option value="Savings">Savings</option>
												<option value="Current">Current</option>
												<option value="Cash Credit/O.D.">Cash Credit/O.D.</option>
												<option value="Society">Society</option>
												
											</select> <span id="accountTypeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Account Type</span>
										</div>
									</div>
								    <div class="form-group row">
										<label class="col-sm-4 control-label">Account Open Date <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<div class="input-group date">
												<input name="openingDate" type="date" id="openingDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
											<span id="openingDateMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Opening Date</span>
										</div>
									</div>
									  <div class="form-group row">
										<label for="status" class="col-sm-4 control-label">Status
											<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="status" id="status" class="form-control select2"
												style="width: 100%;">
												<option selected="selected" value="Select">--Select--</option>
												<option value="Open">Open</option>
												<option value="Close">Close</option>
												
											</select> <span id="statusMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Status</span>
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtPin" class="col-sm-4 control-label">PIN
											<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="pin" type="text" maxlength="7" id="pin"
												class="form-control"
												onkeypress="return isNumberOnlyKey(this, event);" /> <span
												id="pinMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Pin</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="ddlState" class="col-sm-4 control-label">State
											<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="state" id="state" class="form-control select2"
												style="width: 100%;">
												<option selected="selected" value="">--Select--</option>
												<option value="ANDRA PRADESH">ANDRA PRADESH</option>
												<option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
												<option value="ASSAM">ASSAM</option>
												<option value="BIHAR">BIHAR</option>
												<option value="CHHATTISGARH">CHHATTISGARH</option>
												<option value="DELHI">DELHI</option>
												<option value="GUJARAT">GUJARAT</option>
												<option value="HARYANA">HARYANA</option>
												<option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
												<option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
												<option value="JHARKHAND">JHARKHAND</option>
												<option value="KARNATAKA">KARNATAKA</option>
												<option value="KERALA">KERALA</option>
												<option value="MADYA PRADESH">MADYA PRADESH</option>
												<option value="MAHARASHTRA">MAHARASHTRA</option>
												<option value="MANIPUR">MANIPUR</option>
												<option value="MEGHALAYA">MEGHALAYA</option>
												<option value="MIZORAM">MIZORAM</option>
												<option value="NAGALAND">NAGALAND</option>
												<option value="ODISSA">ODISSA</option>
												<option value="PUNJAB">PUNJAB</option>
												<option value="RAJASTHAN">RAJASTHAN</option>
												<option value="SIKKIM">SIKKIM</option>
												<option value="TAMIL NADU">TAMIL NADU</option>
												<option value="TRIPURA">TRIPURA</option>
												<option value="UTTAR PRADESH">UTTAR PRADESH</option>
												<option value="UTTARAKHAND">UTTARAKHAND</option>
												<option value="WEST BENGAL">WEST BENGAL</option>
											</select> <span id="stateMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												State</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Contact Person </label>
										<div class="col-sm-8">
											<input name="contactPerson" type="text" id="contactPerson"
												class="form-control" placeholder="Contact Person Name"
												autocomplete="off" /> <span id="contactPersonMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Person Name</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Contact No.</label>
										<div class="col-sm-8">
											<input name="contactNo" type="text" maxlength="10"
												id="contactNo" class="form-control"
												onkeypress="return isNumberOnlyKey(this, event);"
												autocomplete="off" /> <span id="contactNoMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Contact No</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">IFSC Code </label>
										<div class="col-sm-8">
											<input name="ifscCode" type="text" id="ifscCode"
												class="form-control" placeholder="Enter IFSC Code"
												autocomplete="off" /> <span id="ifscCodeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												IFSC Code</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Balance </label>
										<div class="col-sm-8">
											<input name="balance" type="text" id="balance" readonly="readonly"
												class="form-control" placeholder="0.00"
												autocomplete="off" /> <span id="ifscCodeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												 Balance</span>
										</div>
									</div>
									
								</div>
							</div>
							<div class="box-footer">
								<div class="row col-md-12">
									<input type="button" name="savebtn" value="Save"
										id="savebtn"
										class="btn btn-success pull-right margin-r-5"/>

									<button type="button" name="hide" value="hide" id="hide"
										class="btn btn-success pull-right margin-r-5">Hide</button>

									<button type="button" name="show" value="show" id="show"
										class="btn btn-success pull-right margin-r-5">Show</button>
								</div>
							</div>
						</div>
						
						</form>
						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<div>
									<section id="hideshowtable">
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">
											<caption></caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">SlNo</th>
												<th scope="col">BRANCH CODE</th>
												<th scope="col">BRANCH NAME</th>
												<th scope="col">OPENING DATE</th>
												<th scope="col">PIN</th>
												<th scope="col">STATE</th>
												<th scope="col">CONTACT PERSON</th>
												<th scope="col">CONTACT NO.</th>
												<th scope="col">Action</th>
											</tr>
											<tbody id="ContentPlaceHolder1_gdvData-branchMaster">

											</tbody>
										</table>
									</section>
								</div>
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
	<!-- Branch Master Ajax -->
	<script src="dist/js/config.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	
	
	<script>
   	function fetchMaxGLGroupNo() {
   	    $.get('/fetchMaxGLHeadNo', function(data) {
   	        var gLGroupNo = document.getElementById("glHeadNo");
   	        gLGroupNo.value = data + 1;
   	    });
   	}
    </script>
    
    <script>
                $(document).ready(function () {
                $("#savebtn").click(function () {

					document.getElementById('savebtn').disabled = true;
                	
                   var branchCode  = $("#code").val();
                   var name  = $("#name").val();
                   var openingDate  = $("#openingDate").val();
                   var address  = $("#address").val();
                   var pin  = $("#pin").val();
                   var state  = $("#state").val();
                   var contactPerson  = $("#contactPerson").val();
                   var contactNo  = $("#contactNo").val();
                   var glHeadNo  = $("#glHeadNo").val();
                   var bankAccoununtNo  = $("#bankAccoununtNo").val();
                   var branch  = $("#branch").val();
                   var accountType  = $("#accountType").val();
                   var status  = $("#status").val();
                   var ifscCode   = $("#ifscCode").val();
                   var selectTransactionCheckbox   = $("#selectTransactionCheckbox").val();
                 
                    // Check if any field is empty
                    if (branchCode === "" || name === "" || openingDate === "" || address === "" || pin === ""
                    || state === "" || contactPerson === "" || contactNo === "" || bankAccoununtNo === "" || branch === ""
                    || accountType === "" || status === "" || selectTransactionCheckbox === "" ) {

                          alert("Some  Fields are required.");
                          return;
                    }

                    // Prepare data for AJAX
                    var data = {
                        "branchCode": branchCode,
                        "name": name,
                        "openingDate": openingDate,
                        "address": address,
                        "pin": pin,
                        "state": state,
                        "contactPerson": contactPerson,
                        "contactNo": contactNo,
                        "glHeadNo": glHeadNo,
                        "bankAccoununtNo": bankAccoununtNo,
                        "branch": branch,
                        "accountType": accountType,
                        "status": status,
                        "ifscCode": ifscCode,
                        "selectTransactionCheckbox": selectTransactionCheckbox
                      
                    };

					
                     // Send AJAX request
                     $.ajax({
                    	type: "POST",
                    	url: "saveAllBranchMaster",
                    	contentType: "application/json",
                    	data: JSON.stringify(data),
                    	success: function (data) {
                    		
                    		   alert("Data Saved Successfully..!!");
                    		   window.location.href = 'branchMaster';
                    		  

                    	},
                    	error: function (data) {
                    		
                    	}
                    });
                    });

                    });

    </script>
 
</body>
</html>