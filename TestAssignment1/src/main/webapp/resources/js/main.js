$(document).ready(function () {
    loadViewProfile($("button[name=btnView]").data("id"));
});
function loadNowLoading() {
    $.ajax({
        type: "GET",
        url: "nowloading",
        success: function (a) {
            $("#content").html(a);
        }
    });
}

function loadViewProfile(userId) {
    loadNowLoading();
    $.ajax({
        type: 'POST',
        url: "profile-view",
        data: {id: userId},
        success: function (a) {
            $("#content").html(a);
//            setTimeout(function () {
//                $("#content").html(a);
//            }, 5000);
        }
    });
}

function updateProfile(button) {
    var id = $(button).data("id");
    var first = $("input[name=first]").val();
    var last = $("input[name=last]").val();
    var phone = $("input[name=phone]").val();
    var description = $("textarea[name=description]").val();
    loadNowLoading();
    $.ajax({
        type: 'POST',
        url: "updateProfile",
        data: {id: id,
            first: first,
            last: last,
            phone: phone,
            description: description},
        success: function (a) {
            setTimeout(function () {
                $("#content").html(a);
            }, 5000);
        }
    });
}

//Logout
function logout() {
    window.location.replace("logout");
}

//Content
function loadContentList(userId) {
    loadNowLoading();
    $.ajax({
        type: 'POST',
        url: "contents",
        data: {id: userId},
        success: function (a) {
            $("#content").html(a);
//            setTimeout(function () {
//                $("#content").html(a);
//            }, 5000);
        }
    });
}
function loadContentForm(userId) {
    loadNowLoading();
//    alert(userId);
    $.ajax({
        type: 'POST',
        url: "content-form",
        data: {id: userId},
        success: function (a) {
            $("#content").html(a);
//            setTimeout(function () {
//                $("#content").html(a);
//            }, 5000);
        }
    });
}


function createContent() {
    var authorId = $("#authorId").val();
    var title = $("input[name=tittle]").val();
    var brief = $("input[name=brief]").val();
    var sort = $("input[name=sort]").val();
    var content = $("textarea[name=content]").val().trim();
    var isValidated = true;
    var errors = "";
    if (title.length == 0) {
        errors += "Title is empty!\n";
        isValidated = false;
    }
    if (brief.length == 0) {
        errors += "Brief is empty!\n";
        isValidated = false;
    }
    if (sort.length == 0) {
        errors += "Sort is empty!\n";
        isValidated = false;
    }
    if (content.length == 0) {
        errors += "Content is empty!\n";
        isValidated = false;
    }
    if (!isValidated) {
        alert(errors);
    } else {
        $.ajax({
            type: 'POST',
            url: "content-create",
            data: {
                title: title,
                brief: brief,
                content: content,
                sort: sort,
                authorId: authorId},
            success: function (a) {
                $("#content").html(a);
//                setTimeout(function () {
//                    $("#content").html(a);
//                }, 5000);
            }
        });
    }
}
function updateContent(id) {
    var authorId = $("#authorId").val();
    var title = $("input[name=tittle]").val();
    var brief = $("input[name=brief]").val();
    var sort = $("input[name=sort]").val();
    var content = $("textarea[name=content]").val().trim();
    var isValidated = true;
    var errors = "";
    if (title.length == 0) {
        errors += "Title is empty!\n";
        isValidated = false;
    }
    if (brief.length == 0) {
        errors += "Brief is empty!\n";
        isValidated = false;
    }
    if (sort.length == 0) {
        errors += "Sort is empty!\n";
        isValidated = false;
    }
    if (content.length == 0) {
        errors += "Content is empty!\n";
        isValidated = false;
    }
    if (!isValidated) {
        alert(errors);
    } else {
        $.ajax({
            type: 'POST',
            url: "content-update",
            data: {id: id,
                title: title,
                brief: brief,
                content: content,
                sort: sort, authorId: authorId},
            success: function (a) {
                $("#content").html(a);
//                setTimeout(function () {
//                    $("#content").html(a);
//                }, 5000);
            }
        });
    }
}

function loadContentById(id) {
    var authorId = $("#authorId").val();
    $.ajax({
        type: 'POST',
        url: "content",
        data: {id: id,
            authorId: authorId},
        success: function (a) {
            $("#content").html(a);
        }
    });
}

function remove(id) {
    var authorId = $("#authorId").val();
    alert(id);
    alert(authorId);
    $.ajax({
        type: 'POST',
        url: "content-remove",
        data: {id: id,
            authorId: authorId},
        success: function (a) {
            $("#content").html(a);
        }
    });
}
function searchContent(search) {
    var search = $("#txtSearch").val();
    $.ajax({
        type: 'POST',
        url: "listSearchContent",
        data: {search: search},
        success: function (a) {
            $('#search-content').html(a);
        }
    });

}