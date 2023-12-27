function fetchBranchInDropdown(){ 
	//alert("hi")
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value='" + data[i].name + "'>" + data[i].name + "</option>";
			}
			$("#bankName").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function getDataInFormByBranchCode(){
	var branchCode = document.getElementById("branchCode");
	var input = {
		"branchCode": branchCode.value
	}
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getDataInFormByBranchCode',
		asynch: false,
		success: function (data) {
			for (var i = 0; i < data.length; i++) {
				document.getElementById("bankName").value = data[i].name;
				document.getElementById("accountNo").value = data[i].id;	       
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}