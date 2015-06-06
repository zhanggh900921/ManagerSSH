<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">配置管理</a></li>
    <li><a href="#">逻辑网</a></li>
    </ul>
    </div>
    
    
     <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li>
         <li style="font-size: medium;border: medium;font-weight: bold;color: red;">&nbsp;&nbsp;&nbsp;<s:property value="network.name"/>逻辑网状态与信息&nbsp;&nbsp;</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置 </li>
        </ul>
    
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span><s:property value="network.name"/></span></div>
    
    <div class="toolsli">
    <ul class="toollist">
    <s:iterator value="subnets" var="s" status="I">
    	
    	<li><a href="Subnet-show?subnet.id=<s:property value="#s.id"/>"><img src="images/i0<s:property value="#I.index+1"/>.png" /></a><h2><s:property value="#s.name"/></h2></li>
    	
    </s:iterator>	
    </ul>
    <span class="tooladd"><img src="images/add.png" title="添加" /></span> 
    </div>
    
    
    
    
    </div>


<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
