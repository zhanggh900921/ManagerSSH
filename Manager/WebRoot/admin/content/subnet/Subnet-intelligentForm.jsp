<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�ޱ����ĵ�</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>λ�ã�</span>
    <ul class="placeul">
    <li><a href="#">���������</a></li>
    <li><a href="#">�����ع�</a></li>
    </ul>
    </div>
    
    <form action="Subnet-virtualization" method="get">
    <div class="formbody" >
    
    <div class="formtitle" style="color: red;font-size: larger;"><span>����������������⻯�ع�</span></div>
    
    <ul class="forminfo">
    <li><label>�����Ľڵ���</label><input name="nodeNum" type="text" class="dfinput" /><i>���ܴ��ڵ�ǰ��̬�ڵ���</i><i style="color: red"><s:property value="nodes.size()"/></i></li>
    <li><label>��������·��</label><input name="linkNum" type="text" class="dfinput" /><i>���ܴ��ڵ�ǰ��̬��·��</i><i style="color: red"><s:property value="links.size()"/></i></li>
    
    <li><label>����Ҫ��˵��</label><textarea name="" cols="" rows="" class="textinput"></textarea></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="ȷ���ύ"/></li>
    </ul>
    
    
    </div>
    <input type="hidden" name="subnet.id" value='<s:property value="subnet.id"/>' >
    <input type="hidden" name="network.id" value="<s:property value="network.id"/>">
	</form>

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
