function loadRegister() {
    $.ajax({
        type: 'GET',
        url: "loadRegister",
        success: function (a) {
            $("#content").html(a);
        }
    });
}

function saveNewCustomer() {
    var email = $("#email").val();
    var phone = $("#phone").val();
    var fullname = $("#fullname").val();
    var password = $("#password").val();
    var flag = true;
    if (email.trim() == "" || email.trim() == "" || phone.trim() == "" || fullname.trim() == "") {
        flag = false;
        alert("Email, Phone,Fullname can't be empty. Please fill them.");
    }
    if (flag) {
        $.ajax({
            type: 'POST',
            url: "saveNewCustomer",
            data: {email: email, phone: phone, fullname: fullname, password: password},
            success: function (a) {
                alert("Congratulations! Your account has been created");
                $("#content").html(a);
            }
        });
    }
}