function manageMovie() {
    $.ajax({
        type: 'GET',
        url: "mangaMovie",
        success: function (a) {
            $("#content").html(a);
        }
    });
}
function activateMovie(id) {
    $.ajax({
        type: 'GET',
        url: "activateMovie",
        data: {id: id},
        success: function (a) {
            $("#content").html(a);
        }
    });
}
function deactivateMovie(id) {
    $.ajax({
        type: 'GET',
        url: "deactivateMovie",
        data: {id: id},
        success: function (a) {
            $("#content").html(a);
        }
    });
}