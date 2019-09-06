function loadImageFromUrl() {
    $('#my_image').attr('src', $('#image').val());
}
function loadClipFromUrl() {
    $('#trailer-content').attr('src', $('#trailer').val());
}
function manageMovie() {
    $.ajax({
        type: 'GET',
        url: "manageMovie",
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
    var title = $("#title").val();
    var image = $("#image").val();
    var category = $("#category").val();
    var cast = $("#cast").val();
    var length = $("#length").val();
    var date = $("#date").val();
    var language = $("#language").val();
    var description = $("#description").val();
    var trailer = $("#trailer").val();
    $.ajax({
        type: 'GET',
        url: "updateMovie",
        data: {id: id,
            title: title,
            image: image,
            category: category,
            cast: cast,
            length: length,
            date: date,
            language: language,
            description: description,
            trailer: trailer},
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