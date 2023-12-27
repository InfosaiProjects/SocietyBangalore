function getAllGLHeadNo() {
    var input = {
        status: $("#status").val()
    };

    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: '/fetchDataThroughStatus',
        data: JSON.stringify(input),
        success: function (data) {
            var tableBody1 = $("#SchemeListTable");
            tableBody1.empty(); // Clear the table body before adding new data

            if (data.length > 0) {
                $.each(data, function (index, value) {
                    var row = `<tr>
                        <td><input type="checkbox" name="selectedIds" value="${value.glHeadNoSchemeNmae}"></td>
                        <td>${index + 1}</td>
                        <td>${value.glHeadNoSchemeNmae}</td>
                        <td>${value.schemeName}</td>
                        <td>${value.status}</td>
                        <td><a href="#" onclick="redirectToEditPage('${value.glHeadNoSchemeNmae}')">View</a></td>
                        <td scope="col"><a href="deleteGLHeadNo?id=${value.id}">Delete G.L Head:${value.glHeadNoSchemeNmae} </a></td>
                    </tr>`;

                    tableBody1.append(row);
                });
            } else {
                alert("No data found for the selected status.");
            }
        },
        error: function () {
            alert("An error occurred while fetching data.");
        }
    });
}

function redirectToEditPage(glHeadNoSchemeNmae) {
    // Construct the URL with the glHeadNoSchemeNmae parameter
    var editUrl = '/newSchemeEdit?glHeadNoSchemeNmae=' + encodeURIComponent(glHeadNoSchemeNmae);
    
    // Redirect to the edit page
    window.location.href = editUrl;
}

//Fetch Branch Code By Selecting BranchName
function getBranchCodeByBranchName() {
	var selectBranch = $("#selectBranch").val();
	if (!selectBranch) {
		return;
	}
	var input = {
		"name": selectBranch
	};

	$.ajax({
		type: "GET",
		contentType: "application/json",
		url: 'fetchBranchCodeByBranchName',
		data: input,
		success: function(data) {
			console.log(data);
			if (data.length > 0) {
				document.getElementById("branchCode").value = data[0].branchCode;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function ReceiptInTable() {
    $.ajax({
        type: "GET",
        contentType: "application/json",
        url: 'fetchAllReceipts',
        success: function (data) {
            const tableData1 = data.map(function (value, index) {
				const combinedAccountGlHead = `${value.glHeadNo}/${value.accountNo}`;
                return (
                    `<tr>
                        <td>${index + 1}</td>
                        <td>${value.id}</td>
                        <td>${value.selectGlHead}</td>
                        <td>${combinedAccountGlHead}</td>
                        <td>${value.selectAccountHolder}</td>
                        <td>${value.balance}</td>
                        <td>${value.amount}</td>
                        <td><a href="#" class="delete-link" data-id="${value.id}">Delete</a></td>
                    </tr>`
                );
            }).join('');
            const tableBody1 = $("#tboady");
            tableBody1.html(tableData1);
        },
        error: function () {
            alert("Fetching receipts failed");
        }
    });

    // Handling the deletion with a click event on the delete link
    $(document).on("click", ".delete-link", function(e) {
        e.preventDefault(); // Prevent the default action of the link

        var receiptId = $(this).data('id');
        
        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: '/deleteByIdsReceipt',
            data: JSON.stringify({ id: receiptId }),
            success: function (data) {
                //console.log(data); 
                alert(data);
                // Reload or update the table after deletion
                ReceiptInTable();
            },
            error: function () {
                alert("Deletion failed");
            }
        });
    });
}

//Fetch Balance by Branch Name
function getBalanceByBranchName(){
	var selectBranch = $("#selectBank").val();
	if (!selectBranch) {
		return;
	}
	var input = {
		"name": selectBranch
	};

	$.ajax({
		type: "GET",
		contentType: "application/json",
		url: 'fetchBalanceByBranchName',
		data: input,
		success: function(data) {
			console.log(data);
			if (data.length > 0) {
				document.getElementById("balanceDebit").value = data[0].balance;
				document.getElementById("uniqueIdD").value = data[0].bankid;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}
