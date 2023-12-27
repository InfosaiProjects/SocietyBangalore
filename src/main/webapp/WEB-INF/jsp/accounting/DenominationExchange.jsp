<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Table</title>
<link rel="stylesheet" href="./table.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
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
<body>
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
				<!-- <body> -->
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
	<!-- </body> -->
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
			</div>
		</div>
	</div>
	</div>

</div>
</div>
</body>
</html>