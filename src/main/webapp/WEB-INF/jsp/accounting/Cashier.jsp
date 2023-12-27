<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../header.jsp" />


</head>

 <style>
        .hidden {
            display: none;
        }
    </style>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap')
	;

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.Cont {
	width: 100%;
	height: 100vh;
	border: 1px solid red;
	background-image: url("./img.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

.mainTable {
	width: 100%;
	height: 100vh;
	transition: 0.5s;
	overflow-y: scroll;
	-ms-overflow-style: none;
	scrollbar-width: none;
	/* border-radius: 10px;
    background-color: #ffffff;
    box-shadow: -15px -15px 15px rgba(255, 255, 255, 0.2),
        15px 15px 15px rgba(0, 0, 0, 0.1); */
	background: rgba(255, 255, 255, 0.5);
	-webkit-backdrop-filter: blur(10px);
	backdrop-filter: blur(10px);
	border: 1px solid rgba(255, 255, 255, 0.25);
}

.mainTable::-webkit-scrollbar {
	display: none;
}

.tableCont {
	width: 100%;
	min-width: 1000px;
	table-layout: fixed;
	cursor: pointer;
}

.tableCont thead th {
	width: 100%;
	position: sticky;
	top: 0;
	font-size: 0.95rem;
	background-color: #e1e1e1;
}

.labelinputs {
	width: 200px;
	height: 30px;
	/* background-color: aqua; */
	display: flex;
	justify-content: space-between;
}

.tableinput {
	width: 110px;
	padding: 2px;
}

.subbox {
	width: 255px;
	height: 50px;
	font-weight: 600;
}
</style>
<style>
.radio-buttons {
	display: inline-block;
	margin-right: 180px;
}

.radio-buttons label {
	margin-right: 20px;
}
</style>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="GetBranchNameInTheDropDown();">
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
				<h1 id="ContentPlaceHolder1_IdHeader">Cashier</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Accounting</li>
				</ol>
			</section>

			<form method="post" action="" id="cashierForm"
				modelAttribute="" enctype="multipart/form-data">


				<section class="content" id="section1">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Transaction</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										  <label>
                                              <input type="radio" name="payment123" id="credit" value="credit" style="margin-left: 15px;">Credit
                                          </label>
                                          <label>
                                              <input type="radio" name="payment123" id="debit" value="debit" style="margin-left: 15px;">Debit
                                          </label>

										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Pending
												Transaction </label>
											<div class="col-sm-8">
												<select name="pendingTransaction" id="pendingTransaction"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="Other">Other</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Branch
												No. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="branchCode" type="text" id="branchCode"
													class="form-control" Placeholder="Enter Branch No"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Branch<strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectBranch" id="selectBranch" onchange="getBranchCodeByBranchName();"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value=""></option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">G.L.Head
												No. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="glHeadNo" type="text" id="glHeadNo"
													class="form-control" Placeholder="Enter G.L.Head No"/>
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Select
												G.L.Head </label>
											<div class="col-sm-8">
												<input name="selectGlHead" type="text" id="selectGlHead"
													class="form-control" Placeholder="Select G.L.Head"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Account
												No <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="accountNo" type="text" id="accountNo"
													class="form-control" Placeholder="Enter Account No"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label for="accountHolder" class="col-sm-4 control-label">Select
												Account Holder <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="selectAccountHolder" type="text"
													id="selectAccountHolder" class="form-control"
													Placeholder="Select Account Holder" readonly="readonly" />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="accountHolder" class="col-sm-4 control-label">Balance
											</label>
											<div class="col-sm-8">
												<input name="balance" type="text" id="balance"
													class="form-control" Placeholder="Enter Balance"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label for="accountHolder" class="col-sm-4 control-label">PAN-Aadhar
											</label>
											<div class="col-sm-8">
												<input name="panAadhar" type="text" id="panAadhar"
													class="form-control" Placeholder="Enter PAN-Aadhar"
													 />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Amount(Rs.)<strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="amount" type="text" id="amount"
													class="form-control" Placeholder="Enter Amount(Rs.)"
													 />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Penalty Amount(Rs.) </label>
											<div class="col-sm-8">
												<input name="penaultyAmount" type="text" id="penaultyAmount"
													class="form-control"
													Placeholder="Enter Penaulty Amount(Rs.)"
													value"0" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Scroll </label>
											<div class="col-sm-8">
												<input name="scroll" type="text" id="scroll" value="${ScrollNumber}"
													class="form-control" Placeholder="Enter Scroll"
													readonly="readonly" />
											</div>
											                                                   <label for="txtJointMemberName"
                                            												class="col-sm-4 control-label">Date </label>
                                            											<div class="col-sm-8">
                                            												<input name="entryDate" type="text" id="entryDate" value="${EntryDate}"
                                            													class="form-control"
                                            													readonly="readonly" />
                                            											</div>


										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Special
												Instruction</label>
											<div class="col-sm-8">
												<textarea name="specialInstruction" rows="2" cols="20"
													id="specialInstruction" class="form-control"
													Placeholder="Enter Special Instruction" >
                                        </textarea>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Cashier's
												Narration</label>
											<div class="col-sm-8">
												<textarea name="cashierNarration" rows="2" cols="20"
													id="cashierNarration" class="form-control"
													Placeholder="Enter Cashier's Narration">
                                        </textarea>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Voucher No. </label>
											<div class="col-sm-8">
												<input name="voucherNo" type="text" id="voucherNo"
													class="form-control" Placeholder="Enter Voucher No"
													 />
											</div>
										</div>
										<div class="row col-md-12">
											<input type="submit" name="nextButton" value="Next" id="nextButton"
												class="btn btn-success pull-right margin-r-5" /> <input
												type="button" name="btnReset" value="Reset" id="resetBtn"
												class="btn btn-success pull-right margin-r-5" /> <input
												type="button" name="btnSave" value="Save" id="btnSave"
												class="btn btn-success pull-right margin-r-5" />
										</div>
									</div>
								</div>
							</div>
						</div>

</section>

<section>



</section>

<section class="content" id="section2" class="hidden">

						<div class="p-2 Cont">
                        		<div class="mainTable p-0">
                        			<table class="table tableCont table-bordered">
                        				<thead>
                        					<tr>
                        						<th scope="col" style="width: 100px;" class="text-center">Available</th>
                        						<th scope="col" style="width: 200px;" class="text-center">No.
                        							of Denomination</th>
                        						<th scope="col" style="width: 70px;" class="text-center">Amount
                        							(Rs.)</th>
                        						<th scope="col" style="width: 200px;" class="text-center">No.
                        							of Denomination</th>
                        						<th scope="col" style="width: 70px;" class="text-center">Amount
                        							(Rs.)</th>
                        						<th scope="col" style="width: 70px;" class="text-center">Balance</th>
                        					</tr>
                        				</thead>
                        				<body>
                        				<tr>
                        					<th scope="row" class="text-center">0</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<label>2000.00 *</label> <input type="text"
                        								class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<label>2000.00 *</label> <input type="text"
                        								class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">0</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<label>1000.00 *</label> <input type="text"
                        								class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<label>1000.00 *</label> <input type="text"
                        								class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">1568</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<label>500.00 *</label> <input type="text"
                        								class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<label>500.00 *</label> <input type="text"
                        								class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">1568</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">95</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>200.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>

                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>200.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">95</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">188</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>100.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>100.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">188</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">54</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>50.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>50.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">54</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">124</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>20.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>20.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">124</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">38</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>10.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>10.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">38</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">1</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>5.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>5.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">1</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">1</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>2.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>2.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">1</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">1</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>1.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>1.00 *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">1</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">0</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>Coins *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<div class="labelinputs">
                        							<span>Coins *</span> <input type="text" class="tableinput ml-1">
                        						</div>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        				</tr>
                        				<tr>
                        					<th scope="row" class="text-center">Total</th>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<span>0</span>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        					<td class="d-flex justify-content-center" style="font-weight: 600;">
                        						<span>0</span>
                        					</td>
                        					<td style="font-weight: 600;" class="text-center">0</td>
                        				</tr>

                        </table>
                        <div class="container">
                        	<div class="row mb-3">
                        		<div
                        			class="col-12 col-lg-6 col-xl-3 col-md-6 d-flex justify-content-center flex-column">
                        			<div class="subbox pl-2 mt-2 mt-sm-0"
                        				style="background-color: rgb(239, 239, 239);">
                        				<span class="text-primary">Transaction Amount</span><br> <span>40</span>
                        			</div>
                        		</div>
                        		<div
                        			class="col-12 col-lg-6 col-xl-3 col-md-6 d-flex justify-content-center flex-column">
                        			<div class="subbox pl-2  mt-2 mt-sm-0"
                        				style="background-color: rgb(239, 239, 239);">
                        				<span class="text-primary">Difference</span><br> <span>40</span>
                        			</div>
                        		</div>
                        		<div
                        			class="col-12 col-lg-6 col-xl-3 col-md-6 d-flex justify-content-center flex-column">
                        		</div>
                        		<div
                        			class="col-12 col-lg-6 col-xl-3 col-md-6 d-flex justify-content-center flex-column">
                        			<div class="subbox" style="text-align: right;">
                        				<button class="btn mt-2 btn-primary">Trip</button>
                        				<button class="btn mt-2 btn-primary">Back</button>
                        				<button id="previousButton">Previous</button>
                        			</div>
                        		</div>
                        	</div>
                        </div>
                        </div>
                        </div>


</section>






<section>

						<div class="col-md-12">
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-header with-border">
									<div class="box-tools pull-right"></div>
								</div>
								<div class="radio-buttons">
								<!--
									<label><input type="radio" name="cashier"
										value="lastTransction">Last Transaction</label> <label><input
										type="radio" name="cashier" value="allTransaction">All
										Transaction</label> <label><input type="radio" name="cashier"
										value="debitTransaction">Debit Transaction</label> <label><input
										type="radio" name="cashier" value="creditTransaction">Credit
										Transaction</label>
-->

										<label>

										 <input type="radio" id="all" name="paymentType" value="all" checked> All
                                            <input type="radio" id="credit" name="paymentType" value="credit"> Credit
                                            <input type="radio" id="debit" name="paymentType" value="debit"> Debit
										</label>
								</div>
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>


                                    <table cellspacing="0" cellpadding="3" rules="all"
                                                                             class="display nowrap table table-hover table-striped table-bordered"
                                                                             border="1" style="width: 100%; border-collapse: collapse;"

                                    id="dataTable">
                                            <thead> <tr style="color: White; background-color: #008385;">
                                                       <th>Sr No</th>
                                                       <th>Scroll No</th>
                                                       <th>Entry Date</th>
                                                       <th>Amount</th>
                                                      <th>Payment Type</th>
                                                    <th>Account Info</th>
                                                    <th>Details</th>
                                                    <th>User</th>
                                                    <th>Delete</th>

                                                        </tr>
                                                    </thead>
                                            <tbody>
                                            </tbody>
                                        </table>

								</div>
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


</section>



	<!-- <script type="text/javascript">
    // Call the function to fetch the maximum member number when the page loads
    $(document).ready(function() {
        fetchMaxbranchNo();
    });

    // $.get('/SocietyManagement/fetchMaxMemberNo', function(data)
    function fetchMaxbranchNo() {
        $.get('/fetchBranchNo', function(data) {
            var branchNoInput = document.getElementById("branchNo");
            branchNoInput.value = data + 1;
        });
    }
	</script> -->
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
	<!-- <script src="plugins/timepicker/bootstrap-timepicker.min.js"></script> -->
	<!-- SlimScroll -->
	<script
		src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- iCheck 1.0.1 -->
	<!-- <script src="plugins/iCheck/icheck.min.js"></script> -->
	<!-- FastClick -->
	<script src="bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script src="dist/js/GetAllBranch.js"></script>
	<script src="dist/js/cashier.js"></script>
	<script src="dist/js/accountingJs.js"></script>


	<script src="dist/js/NewAccountInvestment.js"></script>


	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<script>


            const section1 = document.getElementById('section1');
            const section2 = document.getElementById('section2');
            const previousButton = document.getElementById('previousButton');
            const nextButton = document.getElementById('nextButton');

            // Function to hide a section
            function hideSection(section) {
                section.classList.add('hidden');
            }

            // Function to show a section
            function showSection(section) {
                section.classList.remove('hidden');
            }

            // Initial state
            hideSection(section2);
            showSection(section1);

            // Event listener for the "Next" button
            nextButton.addEventListener('click', function () {
                hideSection(section1);
                showSection(section2);


            });

            // Event listener for the "Previous" button
            previousButton.addEventListener('click', function () {
                hideSection(section2);
                showSection(section1);

            });


         // Prevent the default form submission behavior
        nextButton.addEventListener('click', function (event) {
            event.preventDefault();
        });

        previousButton.addEventListener('click', function (event) {
            event.preventDefault();
        });


	</script>

	<script>


            $(document).ready(function() {
              // Fetch JSON data from /FetchAllNewGLGroupNo API
              $.ajax({
                url: '/fetchAllNewGlHead',
                method: 'POST',
                dataType: 'json',
                success: function(data) {
                  // Populate the accountGroup dropdown
                  const glHeadNo = $('#glHeadNo');


                  // Handle selection change in accountGroup dropdown
                  glHeadNo.on('change', function() {
                    const selectedAccountGroup = $(this).val();
                    const selectedItem = data.find(item => item.glHeadNo === selectedAccountGroup);

                 if(selectedItem){
                    // Update the primaryGroup and primarySubGroup input fields


                                       $('#selectGlHead').val(selectedItem.glHeadName);
                                       $('#accountNo').val(selectedItem.gLGroupNo);

                                       if(selectedItem.accountTypecheckBox==="commonAccount")
                                       {
                                        $('#accountNo').val(1);
                                       }
                                        if(selectedItem.accountTypecheckBox==="branchAccount")
                                           {
                                              $('#accountNo').val(1);
                                            }

                                       $('#selectAccountHolder').val(selectedItem.organization);
                 }else{
                    // Update the primaryGroup and primarySubGroup input fields


                                       $('#selectGlHead').val("");
                                       $('#accountNo').val("");



                                       $('#selectAccountHolder').val("");

                 }
                  });
                },
                error: function() {
                  console.log('Error fetching data from /FetchAllNewGLGroupNo');
                }
              });
            });

	</script>


	<script>


              $(document).ready(function() {
                // Fetch JSON data from /innerJoinNewHeadCashier API
                $.ajax({
                  url: '/innerJoinNewHeadCashier',
                  method: 'GET',
                  dataType: 'json',
                  success: function(data) {
                    // Populate the accountGroup dropdown
                    const glHeadNo = $('#glHeadNo');

                    // Handle selection change in accountGroup dropdown
                    glHeadNo.on('change', function() {
                      const selectedAccountGroup = $(this).val();
                      const selectedItem = data.find(item => item.glHeadNo === selectedAccountGroup);

                      if (selectedItem) {
                        // If a matching glHeadNo is found in the data
                        $('#balance').val(selectedItem.balance);
                      } else {
                        // If no matching glHeadNo is found, reset the field
                        $('#balance').val("");
                      }
                    });
                  },
                  error: function() {
                    console.log('Error fetching data from /innerJoinNewHeadCashier');
                  }
                });
              });

    	</script>





    	   <script>
                      $(document).ready(function () {
                          $("#btnSave").click(function () {
                              // Get input values
                              var branchCode = $("#branchCode").val();
                              var selectBranch = $("#selectBranch").val();
                              var glHeadNo = $("#glHeadNo").val();
                              var entryDate = $("#entryDate").val();
                              var scroll = $("#scroll").val();
                              var balance = $("#balance").val();
                             var payment = $("input[name='payment123']:checked").val();

                              var pendingTransaction = $("#pendingTransaction").val();
                              var selectGlHead = $("#selectGlHead").val();
                              var accountNo = $("#accountNo").val();
                              var selectAccountHolder = $("#selectAccountHolder").val();
                              var panAadhar = $("#panAadhar").val();
                              var amount = $("#amount").val();
                              var penaultyAmount = $("#penaultyAmount").val();
                              var specialInstruction = $("#specialInstruction").val();

                              var cashierNarration = $("#cashierNarration").val();
                              var voucherNo = $("#voucherNo").val();

                              // Check if any field is empty
                              if (branchCode === "" || selectBranch === "" || glHeadNo === "" || entryDate === "" || scroll === ""
                              || payment === "" || pendingTransaction === "" || selectGlHead === "" || accountNo === "" || selectAccountHolder === ""
                              || panAadhar === "" || amount === "" || penaultyAmount === "" || specialInstruction === "" || cashierNarration === ""
                              || voucherNo === "" ) {

                                    alert("Some  Fields are required.");

                                  return;
                              }

                              // Prepare data for AJAX
                              var data = {
                                  "branchCode": branchCode,
                                  "selectBranch": selectBranch,
                                  "glHeadNo": glHeadNo,
                                  "entryDate": entryDate,
                                  "scroll": scroll,
                                  "balance": balance,
                                  "payment": payment,
                                  "pendingTransaction": pendingTransaction,
                                  "selectGlHead": selectGlHead,
                                  "accountNo": accountNo,
                                  "selectAccountHolder": selectAccountHolder,
                                  "panAadhar": panAadhar,
                                  "amount": amount,
                                  "penaultyAmount": penaultyAmount,
                                  "specialInstruction": specialInstruction,
                                  "cashierNarration": cashierNarration,
                                  "voucherNo": voucherNo


                              };



                               // Send AJAX request
                               $.ajax({
                              	type: "POST",
                              	url: "/savetheCashier",
                              	contentType: "application/json",
                              	data: JSON.stringify(data),
                              	success: function (data) {
                              		// Display success message

                              		   alert(data);

                              			  // Redirect to another API or URL
                              			  window.location.href = 'cashier';

                              	},
                              	error: function (data) {
                              		// Handle any errors here
                              	}
                              });
                              });

                              $("#resetBtn").click(function () {
                               // Store the initial value of GL Head No
                              	var scroll = $("#scroll").val();
                              	var entryDate = $("#entryDate").val();

                              	// Reset the form (excluding GL Head No)
                              	$("#cashierForm")[0].reset();

                              	// Set the GL Head No field back to its initial value
                              	$("#scroll").val(scroll);
                              	$("#entryDate").val(entryDate);


                              });
                              });


                  </script>

                  <script>
$(document).ready(function () {

getInTheTable();
});

              function getInTheTable() {
                  $.ajax({
                      type: "POST",
                      url: "/fetchAllCashier",
                      contentType: "application/json",
                      success: function (jsonData) {
                          //alert(jsonData);
                          // Display success message

                          const dataTable = document.getElementById("dataTable"); // Use the correct ID
                          const radioButtons = document.getElementsByName("paymentType");

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

                          function getSelectedPaymentType() {
                              for (const radio of radioButtons) {
                                  if (radio.checked) {
                                      return radio.value;
                                  }
                              }
                              return "all"; // Default to "All" if nothing is selected
                          }

                          function filterDataByPaymentType(data, paymentType) {
                              if (paymentType === "all") {
                                  return data;
                              }
                              return data.filter(item => item.payment === paymentType);
                          }

                          function populateTable(data) {
                              const tableBody = dataTable.querySelector("tbody");
                              tableBody.innerHTML = "";
                              var fullName = '<%= session.getAttribute("fullName") %>';

                             data.forEach((item, index) => {
                                  const row = tableBody.insertRow();
                                  row.insertCell(0).textContent = index + 1; // SR No

                                  row.insertCell(1).textContent = item.scroll;
                                  row.insertCell(2).textContent = item.entryDate;
                                  row.insertCell(3).textContent = item.amount;
                                  row.insertCell(4).textContent = item.payment;
                                  row.insertCell(5).textContent = item.glHeadNo+"/"+item.accountNo+"-Cash/"+item.selectBranch;
                                  row.insertCell(6).textContent = item.cashierNarration;
                                  row.insertCell(7).textContent = fullName;

                                  //Delete

                                    const specialInstructionCell = row.insertCell(8);
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
                  //

                  var data ={
                  "id":itemId
                  };
                                                                  $.ajax({
                                                                 	type: "POST",
                                                                 	url: "/deleteByID",
                                                                 	contentType: "application/json",
                                                                 	data: JSON.stringify(data),
                                                                 	success: function (data) {

                                                                 		   alert(data);

                                                                 			  // Redirect to another API or URL
                                                                 			  window.location.href = 'cashier';

                                                                 	},
                                                                 	error: function (data) {
                                                                 		// Handle any errors here
                                                                 	}
                                                                 });


              }


                  </script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>