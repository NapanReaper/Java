function loadAddNewEmployee() {
    $.ajax({
        type: 'POST',
        url: "addNewEmployee",
        success: function (a) {
            $("#div-control-employee").html(a);
        }
    });
}
function detailEmployee(b) {
    var id = $(b).data("id");
    $.ajax({
        type: 'POST',
        url: "editNewEmployee",
        data: {id: id},
        success: function (a) {
            $("#div-control-employee").html(a);
        }
    });
}
function newEmployee() {
    var name = $("#txtNameEmployee").val();
    var email = $("#txtEmailEmployee").val();
    var phone = $("#txtPhoneEmployee").val();
    var flag = true;
    if (name.trim() == "" || email.trim() == "" || phone.trim() == "") {
        flag = false;
        alert("Name, Email, Phone can't be empty. Please fill them.");
    }
    if (flag) {
        $.ajax({
            type: 'POST',
            url: "submitNewEmployee",
            data: {name: name, email: email, phone: phone},
            success: function (a) {
                alert(a);
                loadListEmployee();
                loadAddNewEmployee();
            }
        });
    }
}