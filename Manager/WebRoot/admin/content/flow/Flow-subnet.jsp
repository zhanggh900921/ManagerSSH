<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�ޱ����ĵ�</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

</head>


<body>

	<div class="place">
    <span>λ�ã�</span>
    <ul class="placeul">
    <li><a href="#">���ܹ���</a></li>
    <li><a href="computer.html">�������������ͳ��</a></li>
   
    </ul>
    </div>
    
    
    <table class="filetable">
    
    <thead>
    	<tr>
        <th width="25%">����</th>
        <th width="11%">�޸�����</th>
        <th width="10%">����</th>
        <th width="6%">������С</th>
        <th width="48%"></th>
        </tr>    	
    </thead>
    
    <tbody>
    <s:iterator value="networks" var="n" status="I">
    	<tr>
        <td><img src="images/f01.png" /><a href="Flow-subnet2?network.id=<s:property value="#n.id"/>"><s:property value="#n.name"/></a></td>
        <td>2015/8/14 17:38</td>
        <td>�ļ���</td>
        <td ><s:property value="#n.flow"/></td>
        <td></td>
        </tr>
    </s:iterator>  
    
    </tbody>
    
    
    
    
    </table>
    
     

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>