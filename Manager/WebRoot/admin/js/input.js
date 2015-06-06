(function(){

    var inp = {
        inp_height : 20,
        inp_line_height : this.inp_height,
        backgroundColor : "#c3dcf9",
        inp_message : function(ele){
            var pre_message = "<span class='ui_info ui_warning'><img src='images/img/warning.png' />";
            switch(ele){
                case "company":
                    return pre_message + "请输入中文或英文名称</span>";
                case "email":
                    return pre_message + "请输入20个字符以内的电子邮件地址</span>";
                case "subnet":
                    return pre_message + "请输入合法的网络名称";
                
                case "desc":
                    return pre_message + "请输入10-100字的关于网络的介绍</span>";
               
                default:
                    return "";
            }
        }
    };

    var ui_controls = $("input[class^=ui_reset], textarea[class^=ui_reset]");
    var ui_container = ui_controls.wrap("<div class='ui_container'></div>");

    ui_controls.focus(function(){
        var _this = $(this);
        var message = _this.data("sign");
        message = inp.inp_message(message);
        _this.after(message);
    });

    ui_controls.blur(function(){
        $(this).siblings("span").remove();
    });

})();