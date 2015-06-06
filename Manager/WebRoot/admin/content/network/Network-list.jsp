<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="http://demo.qunee.com/lib/qunee-min.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/index.jsp">首页</a></li>
    <li><a href="#">配置管理</a></li>
    <li><a href="#">多态网络</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li>
         <li style="font-size: large;border: medium;font-weight: bold;color: red;">&nbsp;&nbsp;&nbsp;多态网络状态与信息&nbsp;&nbsp;</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置 </li>
        </ul>
    
    </div>
    
    
    
    <ul class="classlist">
    <s:iterator value="networks" var="n" status="I">
    <li>
    <span><img src="images/network/n<s:property value="#I.index+1"/>.png" /></span>
    <div class="lright">
    <h2 style="font-size: medium;"><s:property value="#n.name"/></h2>
    <p style="font-size: medium;"><br />当前流量：<s:property value="#n.flow"/><br /><br />当前状态：<s:property value="#n.enable"/><br /><br />当前拓扑：<a href="Network-show?network.id=<s:property value="#n.id"/>" style="font-size: medium; color: red;">查看</a><br /><br />重构拓扑：<a href="Network-form?network.id=<s:property value="#n.id"/>" style="font-size: medium; color: red;">编辑</a></p><br />
    <s:if test="#n.enable==false">
    	<a class="enter" href="Network-add?network.id=<s:property value="#n.id"/>">添加多态</a>
    </s:if>
    <s:else>
    	<a class="enter" href="Network-delete?network.id=<s:property value="#n.id"/>">删除多态</a>
    </s:else>
    
    </div>
    </li>
    </s:iterator>
    
   
    </ul>
    
    <div class="clear"></div>
    

   
 
</body>
</html>

