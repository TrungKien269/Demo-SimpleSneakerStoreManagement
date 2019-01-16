$(document).ready(function () {
    $('#frmLogin').submit(function () {
        var search = {};
        search["username"] = $("#txtUserNam").val();
        search["pass"] = $("#txtpassword").val();

        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/Login",
            data: JSON.stringify(search),
            dataType: 'json',
            success: function (data) {
                console.log(data);
                alert("Login Successfully");
                //window.location.href = "/dashboard";
            },
            error: function (e) {
                alert("Login Unsuccessfully!");
            }
        });
    });
});