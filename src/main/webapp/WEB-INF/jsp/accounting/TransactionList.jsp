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
				<h1 id="ContentPlaceHolder1_IdHeader">Transaction List</h1>
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
									<h3 class="box-title">All Transaction Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
									   
									    <label>
                                         <input type="radio" name="transaction" id="allTransaction" value="all" style="margin-left: 30px;">All Transaction
                                         </label>
                                         <label>
                                         <input type="radio" name="transaction" id="voucherTransaction" value="voucher" style="margin-left: 30px;">Voucher No.
                                         </label>
									
									</div>
									<div class="col-md-6">
									  <h5 style="font-weight: bold; margin-left: 10px;">Todays Transaction</h5>
									  <div class="form-group row">
											<label for="voucherNo" class="col-sm-4 control-label">Voucher
												No.</label>
										
											<div class="col-sm-8">
												    <input name="voucherNo" type="text" id="voucherNo" class="form-control" placeholder="Enter Voucher No." disabled="disabled" />
											</div>
										</div>
									
										<div class="row col-md-12">
											<input type="submit" name="btnShow" value="Show" id="btnShow"
												class="btn btn-success pull-right margin-r-5" />
										    <input type="submit" name="btnExport" value="Export" id="btnExport"
												class="btn btn-success pull-right margin-r-5" />
										    <input type="submit" name="btnDelete" value="Delete" id="btnDelete"
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



							 <table cellspacing="0" cellpadding="3" rules="all" class="display nowrap table table-hover table-striped table-bordered"
                                 border="1" style="width: 100%; border-collapse: collapse;"

                                                                id="dataTable">
                                                                        <thead> <tr style="color: White; background-color: #008385;">


                                                                     <th scope="col">Sr No</th>
                            										<th scope="col">Voucher No</th>
                            										<th scope="col">Type</th>
                            										<th scope="col">GL No</th>
                            										<th scope="col">GL Name</th>
                            										<th scope="col">Account No.</th>
                            										<th scope="col">Account Holder</th>
                            										<th scope="col">Details</th>
                            										<th scope="col">Payment Type</th>

                            										<th scope="col">User</th>
                            										<th scope="col">Session</th>
                            										<th scope="col">Time</th>
                            										<th scope="col">Scroll No</th>
                            										<th scope="col">Instrument Type</th>
                            										<th scope="col">Instrument No</th>
                            										<th scope="col">Issue Date</th>

                                                                    <th scope="col">Delete</th>

                                                                                    </tr>
                                                                                </thead>
                                                                        <tbody>
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


<script>
$(document).ready(function () {

getInTheTable();
});

              function getInTheTable() {
                  $.ajax({
                      type: "POST",
                      url: "/FetchAllReceipt",
                      contentType: "application/json",
                      success: function (jsonData) {

                         const dataTable = document.getElementById("dataTable"); // Use the correct ID
                         const radioButtons = document.getElementsByName("transaction");
                         const inputVoucherNo = document.getElementById("voucherNo"); // Get the element by its ID

                         // Initial data load
                         populateTable(jsonData);

                         // Add event listeners to radio buttons
                         radioButtons.forEach(radio => {
                             radio.addEventListener("change", () => {
                                 const selectedPaymentType = getSelectedPaymentType();
                                 const filteredData = filterDataByPaymentType(jsonData, selectedPaymentType);
                                 populateTable(filteredData);
                             });
                         });

                         // Add event listener for the "Voucher No" input field
                         inputVoucherNo.addEventListener("input", () => {
                             const selectedPaymentType = getSelectedPaymentType();
                             console.log("Voucher NO "+inputVoucherNo.value)
                             const filteredData = filterDataByPaymentType(jsonData, inputVoucherNo.value);
                             populateTable(filteredData);
                         });

                         function getSelectedPaymentType() {

                             return "all"; // Default to "All" if nothing is selected
                         }

                         function filterDataByPaymentType(data, paymentType) {


                             if (paymentType === "all") {
                                 return data;
                             }

                             const today = new Date(); // Get the current date
                             const formattedToday = today.toISOString().split('T')[0]; // Format it as "YYYY-MM-DD"
                        console.log("Formated DAte "+formattedToday )

                             return data.filter(item => item.entryDate === formattedToday && item.voucherNo === parseInt(paymentType));
                         }


                          function populateTable(data) {
                              const tableBody = dataTable.querySelector("tbody");
                              tableBody.innerHTML = "";
                              var fullName = '<%= session.getAttribute("fullName") %>';


                             data.forEach((item, index) => {
                                  const row = tableBody.insertRow();
                                  row.insertCell(0).textContent = index + 1; // SR No
                                  row.insertCell(1).textContent = item.voucherNo; // SR No
                                  row.insertCell(2).textContent = item.transactionType;
                                  row.insertCell(3).textContent = item.glHeadNo;
                                  row.insertCell(4).textContent = item.selectGlHead;
                                   row.insertCell(5).textContent = item.accountNo;
                                   row.insertCell(6).textContent = item.selectAccountHolder;
                                   row.insertCell(7).textContent = item.details;
                                   row.insertCell(8).textContent = item.transactionType;
                                  // row.insertCell(9).textContent = item.details;
                                   row.insertCell(9).textContent = fullName;
                                   row.insertCell(10).textContent = "Morning";
                                   row.insertCell(11).textContent = item.entryDate;
                                   row.insertCell(12).textContent = item.scroll;
                                   row.insertCell(13).textContent = item.instrumentType;
                                   row.insertCell(14).textContent = item.instrumentNo;
                                   row.insertCell(15).textContent = item.entryDate;

                                    //Delete

                                    const specialInstructionCell = row.insertCell(16);
                                    const link = document.createElement("a");
                                    link.href = "javascript:void(0)"; // A dummy href
                                    link.textContent = "Delete";
                                    link.onclick = function() {
                                    deleteItem(item.id); // Call your delete function with the item's ID
                                     };
                                    specialInstructionCell.appendChild(link);

                              });
                          }
                      },
                      error: function (data) {
                          // Handle any errors here
                      }
                  });
              }


              // Your delete function, replace with your actual implementation
              function deleteItem(itemId) {
                  var data ={
                                    "id":itemId
                                    };
                                                                                    $.ajax({
                                                                                   	type: "POST",
                                                                                   	url: "/deleteByIDReceipt",
                                                                                   	contentType: "application/json",
                                                                                   	data: JSON.stringify(data),
                                                                                   	success: function (data) {

                                                                                   		   alert(data);

                                                                                   			  // Redirect to another API or URL
                                                                                   			  window.location.href = 'transactionList';

                                                                                   	},
                                                                                   	error: function (data) {
                                                                                   		// Handle any errors here
                                                                                   	}
                                                                                   });



              }


                  </script>

                  <script>
                         document.addEventListener("DOMContentLoaded", function () {
                             const enableInputCheckbox = document.getElementById("voucherTransaction");
                             const allTransaction = document.getElementById("allTransaction");
                             const inputVoucherNo = document.getElementById("voucherNo");

                             enableInputCheckbox.addEventListener("change", function () {
                                 if (enableInputCheckbox.checked) {
                                     inputVoucherNo.disabled = false;
                                 } else {
                                     inputVoucherNo.disabled = true;
                                 }
                             });

                             allTransaction.addEventListener("change", function () {
                                 if (allTransaction.checked) {
                                     inputVoucherNo.disabled = true;
                                 } else {
                                     inputVoucherNo.disabled = false;
                                 }
                             });
                         });
                     </script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>