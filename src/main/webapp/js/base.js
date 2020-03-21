$(document).ready(function () {
    var href = window.location.href.replace("http://localhost:9999/df/","");
    var arr = href.split(".");
    var pre = arr[0];
    href = 'a[href="'+pre+'.do"]';
    $(href,'.left-nav li').closest('li').addClass('current-nav').siblings('.current-nav').removeClass();
    // console.log(href);

    $('#likename').keydown(function() {
        $("#userNameList option").remove();
        // var likename = $("#likename").val() == "" ? null : $("#likename").val();
        var likename = $("#likename").val();
        $.ajax({
            async: true,
            type:"GET",
            url:"selectLikeUser.do?likename="+likename,
            success:function(data){
                console.log(data);
                var html = "";
                for (var i = 0; i < data.length; i++)
                    html += "<option value='" + data[i].username + "' data-userId='" + data[i].id + "'></option>";
                $("#userNameList").append(html);
                /* console.log(html); */
            }
        });
    });
});

$(function(){

    //下拉菜单处理
    var profile = $("#profile");
    var downMenu = $("#down-menu");

    profile.mouseover(function(){
        downMenu.show();
        $(this).css("background-color","#333");
    }).mouseout(function(){
        downMenu.hide();
        $(this).css("background-color","#3d444c");
    });

    downMenu.mouseover(function(){
        downMenu.show();
    }).mouseout(function(){
        downMenu.hide();
    });


});
