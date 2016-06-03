<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">性能管理</a></li>
    <li><a href="computer.html">服务承载网故障信息</a></li>
   
    </ul>
    </div>
    
    
    <table class="filetable">
    
    <thead>
    	<tr>
        <th width="10%">名称</th>
        <th width="11%">网络数目</th>
        <th width="10%">类型</th>
        
        <th width="48%"></th>
        </tr>    	
    </thead>
    
    <tbody>
    <s:iterator value="networks" var="n" status="I">
    	<tr>
        <td><img src="images/f01.png" /><a href="Breakdown-subnet2?network.id=<s:property value="#n.id"/>"><s:property value="#n.name"/></a></td>
        <td align="left"><s:property value="#n.subnets.size"/></td>
        <td>多态网络</td>
       
        <td></td>
        </tr>
    </s:iterator>  
    
    </tbody>
    
    
    
    
    </table>
    
     

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>