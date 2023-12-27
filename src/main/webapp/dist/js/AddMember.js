function checkingTheFunction(id){
	
	var input = {
		"id":id
	}
	const myJson = JSON.stringify(input);	
   
	$.ajax({
		                type:"post",
                        contentType: "application/json",
                        url: 'addClientEdit',
      					data: myJson,
                        asynch: false,
                        success: function(data) {
						console.log(data); 
                        if (data.length > 0) {
                		var client = data[0];
                    	alert("Fetching data for client number: " + client.clientNo);
        				document.getElementById("clientId").value = client.clientId; 
        				document.getElementById("clientNo").value = client.clientNo;
						document.getElementById("registrationDate").value = client.registrationDate;
						document.getElementById("memberNamePrefix").value = client.memberNamePrefix;
						document.getElementById("memberName").value = client.memberName;
						
						document.getElementById("relativeName").value = client.relativeName;
						document.getElementById("relativeRelation").value = client.relativeRelation;
					
						document.getElementById("ContentPlaceHolder1_ddlGender").value = client.gender;
						document.getElementById("dob").value = client.dob;
						
						document.getElementById("ageId").value = client.age;
						document.getElementById("maritalStatus").value = client.maritalStatus;
						document.getElementById("ContentPlaceHolder1_txtAddress").value = client.address;
						document.getElementById("district").value = client.district;
						document.getElementById("state").value = client.state;
	
	                    document.getElementById("branchName").value = client.branchName;
						/*document.getElementById("loginID").value = client.loginID;
						document.getElementById("password").value = client.password;
						document.getElementById("memberIncome").value = client.memberIncome;*/
	
	                    document.getElementById("pinCode").value = client.pinCode;
						document.getElementById("aadharNo").value = client.aadharNo;
						document.getElementById("pan").value = client.pan;
						document.getElementById("voterNo").value = client.voterNo;
	
                        document.getElementById("phoneno").value = client.phoneno;
						document.getElementById("emailid").value = client.emailid;
						document.getElementById("occupation").value = client.occupation;
						document.getElementById("education").value = client.education;
	                      
	                    document.getElementById("clientPurpose").value = client.clientPurpose;
						/*document.getElementById("passportNumber").value = client.passportNumber;*/
						document.getElementById("caste").value = client.caste;
						document.getElementById("religionName").value = client.religionName;
	
						document.getElementById("categoryName").value = client.categoryName;
						document.getElementById("riskCategory").value = client.riskCategory;
						document.getElementById("nationality").value = client.nationality;
						
						document.getElementById("nomineeName").value = client.nomineeName;
						document.getElementById("nRelation").value = client.nRelation;
						document.getElementById("nomineeAddress").value = client.nomineeAddress;
						document.getElementById("nomineeKycNumber").value = client.nomineeKycNumber;
						
						document.getElementById("nomineeMobileNo").value = client.nomineeMobileNo;
						document.getElementById("nomineeAge").value = client.nomineeAge;
						document.getElementById("nomineePanNo").value = client.nomineePanNo;
						document.getElementById("nomineeKycType").value = client.nomineeKycType;
						
						document.getElementById("taluka").value = client.taluka;
						document.getElementById("village").value = client.village;
	
						/*document.getElementById("memberJoiningFess").value = client.memberJoiningFess;
						document.getElementById("shareAllotedfrm").value = client.shareAllotedfrm;
						document.getElementById("noOfShared").value = client.noOfShared;
						document.getElementById("enterShareAmount").value = client.enterShareAmount;
	
						document.getElementById("paymode").value = client.paymode;
						document.getElementById("remarks").value = client.remarks;
						document.getElementById("clientIDNo").value = client.id;*/
						
						//var imgElement = document.getElementById("preview");
			      		//imgElement.src ="data:image/png;base64,"+data[i].image;
			      		
			      		var imgElement = document.getElementById("preview");
                        console.log(client.frontEndPhoto); // Check if the Base64 data is present
                        imgElement.setAttribute("src", "data:image/png;base64," + client.frontEndPhoto);
                        
                        var imgElement = document.getElementById("secondpreview");
                        console.log(client.frontEndSignature); // Check if the Base64 data is present
                        imgElement.setAttribute("src", "data:image/png;base64," + client.frontEndSignature);

	}    	  
                } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
	});
}

/*Add Member Ajax */
function AddMemberAjax(){
	$.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'getAllClient',
     data:{ },
     asynch: false,
     success: function(data) {
	     for (let i = 0; i < data.length; i++)
	       {  
			 const tableData = data.map(function(value){
                 return ( 
                    `<tr>
                         <td>${value.clientNo}</td>
				         <td>${value.memberName}</td>
				         <td>${value.registrationDate}</td>
						 <td>${value.gender}</td>	
						 <td>${value.dob}</td>
						 <td>${value.branchName}</td>	
						 <td>${value.aadharNo}</td>
						 <td>${value.pan}</td>	
						 <td>${value.voterNo}</td>
						 <td>${value.phoneno}</td>	
						 <td>${value.emailid}</td>
						 <td onclick="checkingTheFunction(${value.id})" > <img src="dist/img/pen_paper_2-32.png"></a></td>
                     </tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#table");
             table.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 }); 
}

//get Dropdown into Share alloated from
function getDropDownSharealloateFrom(){
	
		$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getDropDownShareAllotedFrom',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='"+data[i].name +"'>" +data[i].name + "</option>";
					}
                    $("#shareAllotedfrm").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
	
}

