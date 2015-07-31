<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�ޱ����ĵ�</title>
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
    <span>λ�ã�</span>
    <ul class="placeul">
    <li><a href="#">��ҳ</a></li>
    <li><a href="#">���Ϲ���</a></li>
    <li><a href="#">�ڵ����ͳ��</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>����</li>
        <li class="click"><span><img src="images/t02.png" /></span>�޸�</li>
        <li><span><img src="images/t03.png" /></span>ɾ��</li>
        <li><span><img src="images/t04.png" /></span>ͳ��</li>
        <li style="font-size: large;border: medium;font-weight: bold;color: red;">&nbsp;&nbsp;&nbsp;�ڵ��������ϼ��&nbsp;&nbsp;</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>����</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>     
        <th>�ڵ�����</th>
        <th>CPUʹ��</th>
        <th>�ڴ�ʹ��</th>
        <th>��������(byte)</th>
        <th>��������(byte)</th>
        <th>�����ַ(byte)</th>
        <th>�������(byte)</th>

        </tr>
        </thead>
        
        <tbody>
        <s:iterator value="nodes" var="n" status="I">
	        <tr>
	        <td><s:property value="#n.name"/></td>
	        <s:if test="#n.cpu>80">
	        	<td style="color: red"><s:property value="#n.cpu"/></td>
	        </s:if>
	        <s:else>
	        	<td><s:property value="#n.cpu"/></td>
	        </s:else>
	        <s:if test="#n.memory>80">
	        	<td style="color: red"><s:property value="#n.memory"/></td>
	        </s:if>
	        <s:else>
	        	<td><s:property value="#n.memory"/></td>
	        </s:else>
	        <s:if test="#n.icnFlow>#n.icnFlowLimit">
	        	<td style="color: red"><s:property value="#n.icnFlow"/>/<s:property value="#n.icnFlowLimit"/></td>
	        </s:if>
	        <s:else>
	        	<td><s:property value="#n.icnFlow"/>/<s:property value="#n.icnFlowLimit"/></td>
	        </s:else>
	        
	        <s:if test="#n.idnFlow>#n.idnFlowLimit">
	        	<td style="color: red"><s:property value="#n.idnFlow"/>/<s:property value="#n.idnFlowLimit"/></td>
	        </s:if>
	        <s:else>
	        	<td><s:property value="#n.idnFlow"/>/<s:property value="#n.idnFlowLimit"/></td>
	        </s:else>
	        
	        <s:if test="#n.ianFlow>#n.ianFlowLimit">
	        	<td style="color: red"><s:property value="#n.ianFlow"/>/<s:property value="#n.ianFlowLimit"/></td>
	        </s:if>
	        <s:else>
	        	<td><s:property value="#n.ianFlow"/>/<s:property value="#n.ianFlowLimit"/></td>
	        </s:else>
	        
	        <s:if test="#n.idnFlow>#n.idnFlowLimit">
	        	<td style="color: red"><s:property value="#n.idnFlow"/>/<s:property value="#n.idnFlowLimit"/></td>
	        </s:if>
	        <s:else>
	        	<td><s:property value="#n.idnFlow"/>/<s:property value="#n.idnFlowLimit"/></td>
	        </s:else>
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
