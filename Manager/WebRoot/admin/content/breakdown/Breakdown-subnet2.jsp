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
    <li><a href="computer.html">服务承载网流量统计</a></li>
   
    </ul>
    </div>
    
    
    <table class="filetable">
    
    <thead>
    	<tr>
        <th width="25%">服务承载网名称</th>
        <th width="11%">当前流量(Byte)</th>
        <th width="10%">流量限制(Byte)</th>
        <th width="5%">当前状态</th>
        <th width="48%"></th>
        </tr>    	
    </thead>
    
    <tbody>
    <s:iterator value="subnets" var="s" status="I">
    	<tr>
        <td><img src="images/f03.png" /><s:property value="#s.name"/></td>
        <td><s:property value="#s.flow"/></td>
        <td><s:property value="#s.flowLimit"/></td>
        
       	<s:if test="#s.flow>#s.flowLimit">
        	<td style="color: red">流量超额</td>
        </s:if>
        <s:else>
        	<td style="color: green">状态正常</td>
        </s:else>
        
        <td></td>
        </tr>
    </s:iterator>  
    
    </tbody>
    
    
    
    
    </table>
    
     

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>