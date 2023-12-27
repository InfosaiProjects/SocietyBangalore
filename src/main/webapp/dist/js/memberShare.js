//Data Fetch in DropDown               
function dropDownBranchCode() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchDropdownMemerShare',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value='" + data[i].branchName + "'>" + data[i].branchName + "</option>";
			}
			$("#branchName").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

//Search Data By Branch Name & Date	
function getMemberShareSearch() {
	//alert("Hello")
	var input = {
		branchName: document.getElementById("branchName").value,
		fDate: document.getElementById("fDate").value,
		tDate: document.getElementById("tDate").value,
	}
	const myJson = JSON.stringify(input);
	//alert(myJson)
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data: myJson,
		url: 'memberShareSearch',
		asynch: false,
		success: function (data) {
			//alert(data.branchName)
			for (let i = 0; i < data.length; i++) {
				//alert(data[i].branchName)
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
						 <td>${value.mumberCode}</td>     
					     <td>${value.memberName}</td>  
					     <td>${value.transferDate}</td>
					     <td>${value.enterShareAmount}</td>
					     <td>${value.noOfShared}</td> 
					     <td>${value.folioNo}</td>  
					     <td>${value.dLNo}</td>  
					     <td>${value.sharebalance}</td>    
                         <td>${value.issuefrom}</td>
                         <td>${value.paymode}</td>
                         <td>${value.txnid}</td>		
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

//Custom Js Code shifted to memberShare
function getShareTableData() {
    $.ajax({
        type: "get",
        contentType: "application/json",
        url: 'getNewMembershipDetailsInTable',
        async: false, 
        success: function(data) {
            const tableData = data.map(function(value, index) {
                const certificateNumber = index + 1; 
                let shareSerialNo = value.shareSerialNo;
                
                if (value.previousShareSerialNo !== null) {
                    shareSerialNo = value.previousShareSerialNo + ', ' + shareSerialNo;
                }
                
                return (
                    `<tr>
                        <td scope="col">${certificateNumber}</td>
                        <td scope="col">${value.branchName}</td>
                        <td scope="col">${value.memberName}</td>
                        <td scope="col">${value.doj}</td>
                        <td scope="col">${value.clientNo}</td>
                        <td scope="col">${value.memberNo}</td>
                        <td scope="col">${value.noOfShare}</td>
                        <td scope="col">${shareSerialNo}</td>
                        <td scope="col"><a href="downloadCerificate?id=${value.id}">SH-${certificateNumber}</a></td>
                    </tr>`
                );
            }).join('');
            
            const tableBodyShare = document.querySelector("#shareTableBody");
            tableBodyShare.innerHTML = tableData;
        },
        error: function() {
            alert("Device control failed");
        }
    });
}

//get The Value In sahre Transfer In The DropDown
function getTheValueInsahreTransferInTheDropDown() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllShareTransferData',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].clientNo + "'>" + data[i].clientNo + " -  " + data[i].memberName + "</option>";
			}
			$("#clientNo").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});

	//Branch Master         
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].name + "'>" + data[i].name + "</option>";
			}
			$("#branchName").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});

	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllShareTransferData',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].memberName + "'>" + data[i].memberName + "</option>";
			}
			$("#shareAllotedfrm2").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});

	/*$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllPaymentMaster',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].name + "'>" + data[i].name + "</option>";
			}
			$("#paymode").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});*/
}

//get the value in dropdown of share Certificate
function getthevalueindropdownofshareCertificate() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getNewMembershipDetailsInTable',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].memberNo + "'>" + data[i].memberNo + " - "+data[i].memberName+"</option>";
			}
			$("#memberNo").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

//Save OPeration in Share Transfer
function saveOPerationinShareTransfer() {
	var memberData = document.getElementById("memberData").value;
	var memberName = document.getElementById("memberName");
	var registrationDate = document.getElementById("registrationDate");
	var previousBalance = document.getElementById("previousBalance");
	var previousNoOfShared = document.getElementById("previousNoOfShared");
	//var faceValue = document.getElementById("faceValue");
	var branchName = document.getElementById("branchName");
	var transferDate = document.getElementById("transferDate");
	var shareAllotedfrm = document.getElementById("shareAllotedfrm2");
	var sharebalance = document.getElementById("sharebalance");
	var transferAmount = document.getElementById("transferAmount");
	var noOfShared = document.getElementById("noOfShared");
	var paymode = document.getElementById("paymode");
	var remarks = document.getElementById("remarks");

	var input = {
		"id": memberData,
		"memberName": memberName.value,
		"registrationDate": registrationDate.value,
		"previousBalance": previousBalance.value,
		"previousNoOfShared": previousNoOfShared.value,
		//"faceValue": faceValue.value,
		"branchName": branchName.value,
		"transferDate": transferDate.value,
		"shareAllotedfrm": shareAllotedfrm.value,
		"sharebalance": sharebalance.value,
		"transferAmount": transferAmount.value,
		"noOfShared": noOfShared.value,
		"paymode": paymode.value,
		"remarks": remarks.value
	}

	var myJson = JSON.stringify(input);

		//alert(myJson);
		//console.log(myJson);

	if (!memberData) {
		alert("Plz Select search By Code");
	} else {
		$.ajax({
			type: "post",
			contentType: "application/json",
			data: myJson,
			url: 'updateShareTranfer',
			asynch: false,
			success: function (data) {
				alert("Data Updated SucessFully!!!!!!!!");
				window.location.href = "shareIssue";
			},
			error: function () {
				alert("Device control failed");
			}
		});
	}
}

function callback() {
	var clientNo = document.getElementById("clientNo");
	//var branchName = document.getElementById("branchName");
	var input = {
		"clientNo": clientNo.value
	}
	//alert(clientNo);
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getShareTransferDataByID',
		asynch: false,
		success: function (data) {
			for (var i = 0; i < data.length; i++) {
				document.getElementById("clientNo").value = data[i].clientNo;
				document.getElementById("memberName").value = data[i].memberName;
				//document.getElementById("registrationDate").value = data[i].registrationDate;
				//document.getElementById("previousBalance").value = data[i].previousBalance;
				//document.getElementById("previousNoOfShared").value = data[i].previousNoOfShared;
				//document.getElementById("faceValue").value = data[i].faceValue;
				document.getElementById("branchName").value = data[i].branchName;
				//document.getElementById("transferDate").value = data[i].transferDate;
				//document.getElementById("shareAllotedfrm2").value = data[i].shareAllotedfrm;
				//document.getElementById("sharebalance").value = data[i].sharebalance;
				//document.getElementById("transferAmount").value = data[i].transferAmount;
				//document.getElementById("noOfShared").value = data[i].noOfShared;
				//document.getElementById("paymode").value = data[i].paymode;
				//document.getElementById("remarks").value = data[i].remarks;
				var imgElement = document.getElementById("preview");
			    imgElement.src ="data:image/png;base64,"+data[i].frontEndPhoto;          
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function toggleDisabledFields() {
	document.getElementById("previousShare").disabled = false;
	document.getElementById("previousShareNo").disabled = false;
	document.getElementById("faceValue").disabled = false;
	document.getElementById("sharebalance").disabled = false;
	document.getElementById("noOfShare").disabled = false;
}

//Fetch Data in unAlloted Share
function fetchDatainunAllotedShare() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllMember',
		asynch: false,
		success: function (data) {
			for (let i = 0; i < data.length; i++) {
				//alert(data[i].branchName)
				const tableData = data.map(function (value) {
					return (
						  `<tr>
                                <td>${value.id}</td>
                                <td>${value.memberName}</td>
                                <td>${value.transferDate}</td>
                            </tr>`
					);
				}).join('');
				const tabelBody = document.querySelector("#tableBody");
				tableBody.innerHTML = tableData;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function getShareCertificate() {
	var id = document.getElementById("id").value;
		$.ajax({
			type: "get",
			contentType: "application/json",
			data: { id:id},
			url: 'fetchsharecerificatebyID',
			asynch: false,
			success: function (data) {
				for (let i = 0; i < 1; i++) {
					var j = 1;
					const tableData1 = data.map(function (value) {
						return (
							`<tr>
                           		<td>${j++}</td>
                                <td>${value.branchName}</td>
                                <td>${value.memberName}</td>
                                <td>${value.sharebalance}</td>
                                 <td>${value.noOfShared}</td>
                                 <td>${value.certificateNo}</td>
                                <td scope="col"><a href="downloadCerificate?id=${value.id}">SH-1</a></td>
                            </tr>`
						);
					}).join('');
					const tableBodyShareCertificate = document.querySelector("#tableBodyShareCertificate");
					tableBodyShareCertificate.innerHTML = tableData1;
				}
			},
			error: function () {
				alert("Device control failed");
			}
		});
}

//Fetch Data in DNo Generate Of Director
function fetchDatainDNoGenerateOfDirector() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'FetchTheDataOfDirectorMaster',
		asynch: false,
		success: function (data) {
			var appenddata2 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata2 += "<option value ='" + data[i].directorName + "'>" + data[i].directorName + "</option>";
			}
			$("#memberData").append(appenddata2);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

//Fetch Data in DNo Generate Of Director in Table
function fetchDatainDNoGenerateOfDirectorinTable() {
	var memberData = document.getElementById("memberData").value;
	var input = {
		"directorName": memberData,
	}
	var myJson = JSON.stringify(input);
	if (!memberData) {
		alert("Plz Select search By Code");
	} else {
		$.ajax({
			type: "post",
			contentType: "application/json",
			url: 'FetchTheDataOfDirectorMasterINTheTable',
			data: myJson,
			asynch: false,
			success: function (data) {
				for (let i = 0; i < data.length; i++) {
					//alert(data[i].branchName)
					const tableData = data.map(function (value) {
						return (
							`<tr>
						        <td>${value.id}</td>
                                <td>${value.directorName}</td>
                                <td>${value.appointmentDate}</td>
                                <td>${value.noOfShare}</td>
                                <td>${value.shareAmount}</td>
                            </tr>`
						);
					}).join('');
					const tabelBody = document.querySelector("#tableBody");
					tableBody.innerHTML = tableData;
				}
			},
			error: function () {
				alert("Device control failed");
			}
		});

	}
}

//Data Fetch In DropDown For Share Serial No.               
function shareSerialNo() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchAvailableShares',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value='" + data[i].share + "'>" + data[i].share + "</option>";
			}
			$("#shareSerialNo").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function getMemberShareDataInTable(){
	//var	branchName = document.getElementById("branchName");
	var	branchName = $("#branchName").val();
    var	fDate = $("#fDate").val();
	var	tDate = $("#tDate").val();
	var	memberName  = $("#memberName").val();
	var	memberNo =  $("#memberNo").val();
	var	clientNo =  $("#clientNo").val();
	
	var input = {
		"branchName" : branchName,
		"fDate" : fDate,
		"tDate" : tDate,
		"memberName" : memberName,
		"memberNo" : memberNo,
		"clientNo" : clientNo
	}	
	
	const myJson = JSON.stringify(input);
	//alert(myJson);
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data: myJson,
		url: 'newMemberShareSearch',
		async: false,
		success: function (data) {
			//alert(data.branchName);
			for (let i = 0; i < data.length; i++) {
				//alert(data[i].branchName);
				var j =1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td scope="col">${j++}</td>
						 <td>${value.memberName}</td> 
						 <td>${value.branchName}</td>  
						 <td>${value.doj}</td> 
						 <td>${value.noOfShare}</td>  
					     <td>${value.sharebalance}</td>
					     <td>${value.paymode}</td>
					     <td>${value.memberNo}</td> 
					     <td>${value.clientNo}</td>    
                        </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#table1");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function dropDownOfMemberNo() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getNewMembershipDetailsInTable',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value='" + data[i].memberNo + "'>" + data[i].memberNo + "</option>";
			}
			$("#memberNo").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function callbackAllotedExtraShare() {
    var memberNo = document.getElementById("memberNo").value;
    var input = {
        "memberNo": memberNo
    };

    $.ajax({
        type: "post",
        contentType: "application/json",
        data: JSON.stringify(input),
        url: 'newMemberShareSearch',
        async: false,
        success: function (data) {
            if (data.length > 0) {
                var branchNameDropdown = document.getElementById("branchName");
                branchNameDropdown.options.length = 0; // Clear existing options

                for (var i = 0; i < data.length; i++) {
                    // Populate branchName options
                    var branchNameOption = document.createElement("option");
                    branchNameOption.value = data[i].branchName;
                    branchNameOption.text = data[i].branchName;
                    branchNameDropdown.appendChild(branchNameOption);

                    document.getElementById("clientNo").value = data[i].clientNo;
                    document.getElementById("memberName").value = data[i].memberName;
                    document.getElementById("doj").value = data[i].doj;
                    document.getElementById("previousBalance").value = data[i].sharebalance;
                    document.getElementById("previousShareNo").value = data[i].noOfShare;
                   
                    if (data[i].previousShareSerialNo !== null) {
                        var shareSerialNo = data[i].previousShareSerialNo + ', ' + data[i].shareSerialNo;
                        document.getElementById("previousShareSerialNo").value = shareSerialNo;
                    } else {
                        document.getElementById("previousShareSerialNo").value = data[i].shareSerialNo;
                    }
                    
                    document.getElementById("faceValue").value = data[i].faceValue;
                    document.getElementById("transferDate").value = data[i].transferDate;
                    document.getElementById("paymode").value = data[i].paymode;
                    document.getElementById("remarks").value = data[i].remarks;

                    var imgElement = document.getElementById("preview");
                    imgElement.src = "data:image/png;base64," + data[i].frontEndPhoto;
                }
            } else {
                alert("No data found for memberNo: " + memberNo);
            }
        },
        error: function () {
            alert("Device control failed");
        }
    });
}
                               
function getMemberRegister() {
    var memberNo = $("#memberNo").val();
    var input = {
        "memberNo": memberNo,
    }

    const myJson = JSON.stringify(input);

    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: 'newMemberShareSearch',
        async: false,
        success: function (data) {
            const tableData1 = data.map(function (value) {
                const shareSerialNoDisplay = value.previousShareSerialNo
                    ? `${value.previousShareSerialNo} , ${value.shareSerialNo}`
                    : value.shareSerialNo;

                return (
                    `<tr>
                        <td>${value.memberNo}</td>
                        <td>${value.memberName}</td>
                        <td>${value.branchName}</td>
                        <td>${value.doj}</td>
                        <td>${value.noOfShare}</td>
                        <td>${shareSerialNoDisplay}</td>
                        <td>${value.sharebalance}</td>
                        <td>${value.paymode}</td>
                        <td>${value.transferDate}</td>
                        <td scope="col"><a href="downloadCerificate?id=${value.id}">SH-1</a></td>   
                    </tr>`
                );
            }).join('');
            const tableBody1 = document.querySelector("#tableBodyShareCertificate");
            tableBody1.innerHTML = tableData1;
        },
        error: function () {
            alert("Device control failed");
        }
    });
}
 
//get All data of Share Tranfer DTO in Table
function fetchAndDisplayData() {
    $.ajax({
        type: "GET",
        contentType: "application/json",
        url: 'getNewMembershipDetailsInTable',
        success: function (data) {
            const tableData1 = data.map(function (value) {
                const shareSerialNoDisplay = value.previousShareSerialNo
                    ? `${value.previousShareSerialNo} , ${value.shareSerialNo}`
                    : value.shareSerialNo;
                    
                // Check if share_transfer is null and replace it with 0
                const shareTransfer = value.shareTransfer !== null ? value.shareTransfer : 0;
                
                // Display noOfShare if updatedNoOfShare is null
                const updatedNoOfShareDisplay = value.updatedNoOfShare !== null
                    ? value.updatedNoOfShare
                    : value.noOfShare;

				// Display sharebalance if updatedShareAmount is null
                const updatedShareAmounDisplay = value.updatedShareAmount !== null
                    ? value.updatedShareAmount
                    : value.sharebalance;

                return (
                    `<tr>
                        <td>${value.memberNo}</td>
                        <td>${value.memberName}</td>
                        <td>${value.branchName}</td>
                        <td>${value.doj}</td>
                        <td>${value.noOfShare}</td>
                        <td>${shareSerialNoDisplay}</td>
                        <td>${value.sharebalance}</td>
                        <td>${shareTransfer}</td>
                        <td>${updatedNoOfShareDisplay}</td>
                        <td>${updatedShareAmounDisplay}</td>
                        <td>${value.paymode}</td>
                        <td>${value.transferDate}</td>
                        <td scope="col"><a href="downloadCerificate?id=${value.id}">SH-1</a></td>   
                    </tr>`
                );
            }).join('');
            const tableBody1 = $("#tableBodyShareCertificate");
            tableBody1.html(tableData1);
        },
        error: function () {
            alert("Device control failed");
        }
    });
}    

function ShareTransferMemberNoFrom() {
    var memberNo = document.getElementById("memberNo").value;
    var input = {
        "memberNo": memberNo
    };

    $.ajax({
        type: "post",
        contentType: "application/json",
        data: JSON.stringify(input),
        url: 'newMemberShareSearch',
        async: false,
        success: function (data) {
            if (data.length > 0) {
                for (var i = 0; i < data.length; i++) {
                    document.getElementById("memberNameFrom").value = data[i].memberName;
                    document.getElementById("certificateNoFrom").value = data[i].certificateNo;
                    document.getElementById("noOfShare").value = data[i].noOfShare;
                    document.getElementById("shareAmount").value = data[i].sharebalance;
                }
            } else {
                alert("No data found for memberNo: " + memberNo);
            }
        },
        error: function () {
            alert("Device control failed");
        }
    });
}

function getthevalueindropdownofShareTransfer() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getNewMembershipDetailsInTable',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].memberNo + "'>" + data[i].memberNo + " - "+data[i].memberName+"</option>";
			}
			$("#memberNos").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function ShareTransferMemberNoTo() {
    var memberNo = document.getElementById("memberNos").value;
    var input = {
        "memberNo": memberNo
    };

    $.ajax({
        type: "post",
        contentType: "application/json",
        data: JSON.stringify(input),
        url: 'newMemberShareSearch',
        async: false,
        success: function (data) {
            if (data.length > 0) {
                for (var i = 0; i < data.length; i++) {
                    document.getElementById("memberNameTo").value = data[i].memberName;
                    document.getElementById("certificateNoTo").value = data[i].certificateNo;
                    document.getElementById("previousNoOfShare").value = data[i].noOfShare;
                    document.getElementById("totalAmount").value = data[i].sharebalance;
                }
            } else {
                alert("No data found for memberNo: " + memberNo);
            }
        },
        error: function () {
            alert("Device control failed");
        }
    });
}

//get all data of share tranfer in table
function shareTransferInTable() {
    $.ajax({
        type: "GET",
        contentType: "application/json",
        url: 'shareTransferInTable',
        success: function (data) {
			for (let i = 0; i < 1; i++) {
			var j = 1;
            const tableData1 = data.map(function (value) {
                return (
                    `<tr>
                        <td>${j++}</td>
                        <td>${value.memberNoFrom}</td>
                        <td>${value.memberNameFrom}</td>
                        <td>${value.certificateNoFrom}</td>
                        <td>${value.noOfShare}</td>
                        <td>${value.shareAmount}</td>
                        <td>${value.shareTransfer}</td>
                        <td>${value.reamingNoOfShare}</td>
                        <td>${value.reamingShareAmount}</td>
                        <td>${value.memberNoTo}</td>
                        <td>${value.memberNameTo}</td>
                        <td>${value.certificateNoTo}</td>
                        <td>${value.previousNoOfShare}</td>
                        <td>${value.totalShare}</td>
                        <td>${value.transferAmount}</td>
                         <td>${value.totalAmount}</td>
                        <td>${value.transferDate}</td>
                    </tr>`
                );
            }).join('');
            const tableBody1 = $("#ShareTransfer");
            tableBody1.html(tableData1);
           }
        },
        error: function () {
            alert("Device control failed");
        }
    });
}    
