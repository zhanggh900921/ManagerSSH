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
        <th width="25%">�������������</th>
        <th width="11%">��ǰ����(Byte)</th>
        <th width="10%">��������(Byte)</th>
        <th width="5%">��ǰ״̬</th>
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
        	<td style="color: red">��������</td>
        </s:if>
        <s:else>
        	<td style="color: green">״̬����</td>
        </s:else>
        
        <td></td>
        </tr>
    </s:iterator>  
    
    </tbody>
    
    
    
    
    </table>
    
     

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>