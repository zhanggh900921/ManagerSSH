<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
    <li><a href="#">服务承载网</a></li>
    <li><a href="#">智能重构</a></li>
    </ul>
    </div>
    
    <form action="Subnet-virtualization" method="get">
    <div class="formbody" >
    
    <div class="formtitle" style="color: red;font-size: larger;"><span>服务承载网智能虚拟化重构</span></div>
    
    <ul class="forminfo">
    <li><label>期望的节点数</label><input name="nodeNum" type="text" class="dfinput" /><i>不能大于当前多态节点数</i><i style="color: red"><s:property value="nodes.size()"/></i></li>
    <li><label>期望的链路数</label><input name="linkNum" type="text" class="dfinput" /><i>不能大于当前多态链路数</i><i style="color: red"><s:property value="links.size()"/></i></li>
    
    <li><label>附加要求说明</label><textarea name="" cols="" rows="" class="textinput"></textarea></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认提交"/></li>
    </ul>
    
    
    </div>
    <input type="hidden" name="subnet.id" value='<s:property value="subnet.id"/>' >
    <input type="hidden" name="network.id" value="<s:property value="network.id"/>">
	</form>

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
