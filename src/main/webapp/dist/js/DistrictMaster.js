/*function districtMasterAjax(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllDistrictInDropdown',
		asynch: false,
		success: function(data) {
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='"+data[i].district +"'>" +data[i].district + "</option>";
					}
                    $("#district").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}*/

// get all state
function getSateInDropdown(){
	$.ajax({
		type : "get",
		contentType : "application/json",
		url : '/getStates',
		asynch : false,
		success : function(data){
			//$("#stateName").empty();
			var appenddata = "";
			for(var i = 0 ; i < data.length; i++){
				appenddata +="<option value='"+data[i].id+"'>"+data[i].stateName+"</option>";
			}
			$("#state").append(appenddata)
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

// get district according to state id
function getDistrictInDropdown(){
	$("#state").change(function(){
		var sName=$(this).val();
	    //alert(sName);
		if(sName!=="")
		{
				$.get("/getDistrictByStatesId",{stateId: sName}, function(data){
					var distrtictDrpdwon = $("#district");
					distrtictDrpdwon.empty();
					distrtictDrpdwon.append('<option value="">Select District</option>');
					$.each(data,function(index,district){
						distrtictDrpdwon.append("<option value='"+district.districtId+"'>" +district.districtName+ "</option>");	
					});
				});
			}
	});
}

// save taluka
function saveTalukaData(){
	//alert(talukaName);
	var input = {
		stateId : document.getElementById("state").value,
	    districtId :document.getElementById("district").value,
	    talukaName : document.getElementById("taluka").value
	}

	const myJson = JSON.stringify(input);
	//alert(myJson);
	 $.ajax({
		type : "post",
		contentType : "application/json",
		data :  myJson,
		url: 'addTaluka',
		aynch : false,
		success : function (data){
			alert("Data Saved Successfully");
			location.reload(true);
		},
		error: function(){
			alert("Device control failed");
		}
	 });
}

// get taluka according to district id
function getTalukaInDropdown(){
	$("#district").change(function(){
		var dId=$(this).val();
	    //alert(sName);
		if(dId!=="")
		{
				$.get("/getTalukaByDistrictId",{districtId: dId}, function(data){
					var talukaDrpdwon = $("#taluka");
					talukaDrpdwon.empty();
					talukaDrpdwon.append('<option value="">Select Taluka</option>');
					$.each(data,function(index,taluka){
						talukaDrpdwon.append("<option value='"+taluka.id+"'>" +taluka.talukaName+ "</option>");
					});
				});
			}
	});
}

//Code for showing details in table for state, district & taluka
function getTalukaDetails(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getTalukaDetails',
		asynch: false,
		success: function(data) {
		for (let i = 0; i < 1; i++) {
			var j=1;
				const tableData3 = data.map(function(value) {
					return (
						`<tr>
						  <td>${j++}</td>
                                <td>${value.talukaName}</td>
                                <td scope="col"><a href="deleterowtaluka?id=${value.id}">Delete</a></td>
                            </tr>`
					);
				}).join('');
				const tableBody3 = document.querySelector("#tableBody");
				tableBody3.innerHTML = tableData3;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}