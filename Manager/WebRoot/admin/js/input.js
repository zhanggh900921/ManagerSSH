(function(){

    var inp = {
        inp_height : 20,
        inp_line_height : this.inp_height,
        backgroundColor : "#c3dcf9",
        inp_message : function(ele){
            var pre_message = "<span class='ui_info ui_warning'><img src='images/img/warning.png' />";
            switch(ele){
                case "company":
                    return pre_message + "���������Ļ�Ӣ������</span>";
                case "email":
                    return pre_message + "������20���ַ����ڵĵ����ʼ���ַ</span>";
                case "subnet":
                    return pre_message + "������Ϸ�����������";
                
                case "desc":
                    return pre_message + "������10-100�ֵĹ�������Ľ���</span>";
               
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