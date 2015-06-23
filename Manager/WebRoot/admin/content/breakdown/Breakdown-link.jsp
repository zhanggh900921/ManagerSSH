<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">故障管理</a></li>
    <li><a href="#">链路故障统计</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li>
        <li style="font-size: large;border: medium;font-weight: bold;color: red;">&nbsp;&nbsp;&nbsp;链路状态故障检测&nbsp;&nbsp;</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>     
        <th>链路ID</th>
        <th>当前状态</th>
        <th>带宽(MB)</th>
        <th>面向内容(MB)</th>
        <th>面向身份(MB)</th>
        <th>面向地址(MB)</th>
        <th>面向服务(MB)</th>

        </tr>
        </thead>
        
        <tbody>
        <s:iterator value="links" var="l" status="I">
	        <tr>
	        <td><s:property value="#l.id"/></td>
	       
	        <td style="color: green">正常连接</td>
	             
	        <td><s:property value="#l.sum"/></td>
	      
	        <td><s:property value="#l.icnBw"/></td>
	           
	        <td><s:property value="#l.idnBw"/></td>
	        
	        <td><s:property value="#l.ianBw"/></td>
	     
	        <td><s:property value="#l.isnBw"/></td>
	        
	        </tr>        
        </s:iterator>
        </tbody>
    </table>
    
   

    
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

