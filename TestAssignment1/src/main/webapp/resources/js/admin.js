function loadImageFromUrl() {
    $('#my_image').attr('src', $('#image').val());
}
function manageMovie() {
    $.ajax({
        type: 'GET',
        url: "mangaMovie",
        success: function (a) {
            $("#content").html(a);
        }
    });
}
function loadMovieForm() {
    $.ajax({
        type: 'GET',
        url: "loadMovieForm",
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
function updateMovie(id) {
    $.ajax({
        type: 'GET',
        url: "updateMovie",
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