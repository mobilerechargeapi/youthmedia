$(document).ready(function () {
    $('#gallerySubmitBtn').click(function () {
        $("#pageSettingsForm").submit();
    });
});

function editRole(roleId) {
    var url = 'getRole';
    var token = $('input[name=_token]').val();
    var data = {roleId: roleId};
    $.ajax({
        url: url,
        headers: {'X-CSRF-TOKEN': token},
        data: data,
        type: 'POST',
        datatype: 'JSON',
        success: function (resp) {
            $("#editRoleId").val(resp.result[0].roleId);
            $("#editRoleName").val(resp.result[0].name);
        }
    });
}

//delete social media in admin module
function deleteSocial(social_id) {
    var socialId = social_id;
    var url = 'deleteSocial';
    var token = $('input[name=_token]').val();
    var data = {socialId: socialId};
    $.ajax({
        url: url,
        headers: {'X-CSRF-TOKEN': token},
        data: data,
        type: 'POST',
        datatype: 'JSON',
        success: function (resp) {
            $('#social_row_' + socialId).hide();
        }
    });
}
//edit social media in admin module
function editSocial(social_id) {
    var socialId = social_id;
    var url = 'getSocial';
    var token = $('input[name=_token]').val();
    var data = {socialId: socialId};
    $.ajax({
        url: url,
        headers: {'X-CSRF-TOKEN': token},
        data: data,
        type: 'POST',
        datatype: 'JSON',
        success: function (resp) {
            $("#socialIdModel").val(socialId);
            $("#socialNameModel").val(resp.result[0].socialName);
            $("#socialLinkModel").val(resp.result[0].socialLink);
            $("#socialIconImage").attr("src", "");
            $("#socialIconImage").attr("src", resp.result[0].socialIcon);
            $("#socialIconImage").removeClass("hide");
            $('#editSocialModel').modal('show');
        }
    });
}

//delete faq in faq setting page
function deleteFaq(faqId) {
    var url = '../deleteFaq';
    var token = $('input[name=_token]').val();
    var data = {faqId: faqId};
    $.ajax({
        url: url,
        headers: {'X-CSRF-TOKEN': token},
        data: data,
        type: 'POST',
        datatype: 'JSON',
        success: function (resp) {
            $('#faq_row_' + faqId).hide();
        }
    });
}

//delete website in websites module
function deleteWebsite(websiteId) {
    var url = 'deleteWebsite';
    var token = $('input[name=_token]').val();
    var data = {websiteId: websiteId};
    $.ajax({
        url: url,
        headers: {'X-CSRF-TOKEN': token},
        data: data,
        type: 'POST',
        datatype: 'JSON',
        success: function (resp) {
            $('#website_row_' + websiteId).hide();
        }
    });
}

//delete category in category module
function deleteCategory(categoryId) {
    var url = 'deleteCategory';
    var token = $('input[name=_token]').val();
    var data = {categoryId: categoryId};
    $.ajax({
        url: url,
        headers: {'X-CSRF-TOKEN': token},
        data: data,
        type: 'POST',
        datatype: 'JSON',
        success: function (resp) {
            $('#category_row_' + categoryId).hide();
        }
    });
}

//delete posts in post module
function deletePost(postId) {
    var url = 'deletePost';
    var token = $('input[name=_token]').val();
    var data = {postId: postId};
    $.ajax({
        url: url,
        headers: {'X-CSRF-TOKEN': token},
        data: data,
        type: 'POST',
        datatype: 'JSON',
        success: function (resp) {
            $('#post_row_' + postId).hide();
        }
    });
}