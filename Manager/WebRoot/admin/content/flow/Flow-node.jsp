<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>

</head>
<body>

<table width="750" align="center" border="2">
	<caption style="font-size: 25px; color: red"><s:property value="network.name"/>节点流量统计(单位byte)</caption>
	<thead>
		<tr>
			
			<td></td>
 			<th scope="col" style="font-size: large; ">内容</th>
			<th scope="col" style="font-size: large; ">身份</th>
			<th scope="col" style="font-size: large; ">地址</th>
			<th scope="col" style="font-size: large; ">服务</th>
			<th scope="col" style="font-size: large; ">总流量</th>

		</tr>
	</thead>
	<tbody>
		<s:iterator value="nodes" var="n" status="I">
		<tr>
			<th scope="row" style="font-size: large; color: blue;"><s:property value="#n.id"/></th>
  			<td style="font-size: large; "><s:property value="#n.icnFlow"/></td>
 			<td style="font-size: large; "><s:property value="#n.idnFlow"/></td>
			<td style="font-size: large; "><s:property value="#n.ianFlow"/></td>
			<td style="font-size: large; "><s:property value="#n.isnFlow"/></td>
			<td style="font-size: large; "><s:property value="#n.sum"/></td>
		
		</tr>
		
		</s:iterator>	
		<tr>
			<td><a href="Flow-update" style="color:green; font-size: medium;">更新</a></td>
		</tr> 
	</tbody>
	
</table>	

</body>
</html>